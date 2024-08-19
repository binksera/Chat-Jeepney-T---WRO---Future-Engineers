#include "Wire.h" // New variables to track acceleration stability
int stableAccCount = 0; // Counter for stable acceleration readings
const int stableThreshold = 10; // Number of consecutive stable readings needed to stop updating

void setup() {
  Wire.begin();                           // Begin the I2C communication
  
  // MPU6050 Initialization
  Wire.beginTransmission(0x68);           // Begin, Send the slave address (0x68)              
  Wire.write(0x6B);                       // Reset the MPU6050 (write a 0 into the 6B register)
  Wire.write(0x00);
  Wire.endTransmission(true);             // End the transmission

  // Gyro config (change to 250dps full scale for higher sensitivity)
  Wire.beginTransmission(0x68);           // Begin communication
  Wire.write(0x1B);                       // Gyro config register (1B hex)
  Wire.write(0x00);                       // Set register bits to 00000000 (250dps full scale)
  Wire.endTransmission(true);             // End the transmission

  // Accel config (+/- 8g full scale range)
  Wire.beginTransmission(0x68);           // Begin communication
  Wire.write(0x1C);                       // Accelerometer config register
  Wire.write(0x10);                       // Set register bits to 00010000 (+/- 8g full scale range)
  Wire.endTransmission(true);             // End the transmission

  Serial.begin(9600);                     // Set baud rate for serial communication
  time = millis();                        // Start time counting

  // Calculate the accelerometer error
  if (acc_error == 0) {
    for (int a = 0; a < 200; a++) {
      Wire.beginTransmission(0x68);
      Wire.write(0x3B);                   // Request data from 0x3B register (AccX)
      Wire.endTransmission(false);
      Wire.requestFrom(0x68, 6, true);
      
      Acc_rawX = (Wire.read() << 8 | Wire.read()) / 4096.0;
      Acc_rawY = (Wire.read() << 8 | Wire.read()) / 4096.0;
      Acc_rawZ = (Wire.read() << 8 | Wire.read()) / 4096.0;

      // Calculate errors for Z axis only
      Acc_angle_error_z += (atan(Acc_rawZ / sqrt(pow(Acc_rawX, 2) + pow(Acc_rawY, 2))) * rad_to_deg);

      if (a == 199) {
        Acc_angle_error_z /= 200;
        acc_error = 1;
      }
    }
  }

  // Calculate the gyro error
  if (gyro_error == 0) {
    for (int i = 0; i < 200; i++) {
      Wire.beginTransmission(0x68);
      Wire.write(0x43);                  // First address of the Gyro data
      Wire.endTransmission(false);
      Wire.requestFrom(0x68, 6, true);

      Gyr_rawX = Wire.read() << 8 | Wire.read();
      Gyr_rawY = Wire.read() << 8 | Wire.read();
      Gyr_rawZ = Wire.read() << 8 | Wire.read();

      // Calculate error for Z axis only
      Gyro_raw_error_z += (Gyr_rawZ / 32.8);

      if (i == 199) {
        Gyro_raw_error_z /= 200;
        gyro_error = 1;
      }
    }
  }
}

// Variables to track consistent trends
int consistentTrendCount = 0; // Counter for consistent trends
const int requiredConsistentTrends = 3; // Number of consistent trends needed to update the angle

void loop() {
  timePrev = time;                         // Previous time for elapsed time calculation
  time = millis();                         // Actual time read
  elapsedTime = (time - timePrev) / 1000;  // Elapsed time in seconds

  ////////////////////////////////////// Gyro read /////////////////////////////////////
  Wire.beginTransmission(0x68);
  Wire.write(0x43);                        // First address of the Gyro data
  Wire.endTransmission(false);
  Wire.requestFrom(0x68, 6, true);

  Gyr_rawX = Wire.read() << 8 | Wire.read();
  Gyr_rawY = Wire.read() << 8 | Wire.read();
  Gyr_rawZ = Wire.read() << 8 | Wire.read();

  // Convert gyro data to degrees per second and subtract errors
  Gyr_rawZ = (Gyr_rawZ / 32.8) - Gyro_raw_error_z;

  // Integrate gyro data to obtain angles
  Gyro_angle_z = Gyr_rawZ * elapsedTime;

  ////////////////////////////////////// Acc read /////////////////////////////////////
  Wire.beginTransmission(0x68);
  Wire.write(0x3B);                       // Ask for AccX register
  Wire.endTransmission(false);
  Wire.requestFrom(0x68, 6, true);

  Acc_rawX = (Wire.read() << 8 | Wire.read()) / 4096.0;
  Acc_rawY = (Wire.read() << 8 | Wire.read()) / 4096.0;
  Acc_rawZ = (Wire.read() << 8 | Wire.read()) / 4096.0;

  float currentAcc_angle_z = (atan(Acc_rawZ / sqrt(pow(Acc_rawX, 2) + pow(Acc_rawY, 2))) * rad_to_deg) - Acc_angle_error_z;

  ////////////////////////////////////// Trend Detection with Threshold /////////////////////////////////////
  // Z axis threshold check
  float angle_difference = Total_angle_z + Gyro_angle_z - previous_angle_z;
  
  if (abs(angle_difference) > threshold_z) {
    bool currentIncreasingZ = (angle_difference > 0);
    
    // Check if the trend is consistent
    if (currentIncreasingZ == is_increasing_z) {
      consistentTrendCount++;
    } else {
      consistentTrendCount = 0; // Reset counter if trend is inconsistent
    }

    // Update the trend direction
    is_increasing_z = currentIncreasingZ;
  }

  ////////////////////////////////////// Axis Update with Constraint on Opposite Trends /////////////////////////////////////
  // Check if the acceleration value has been stable
  if (abs(currentAcc_angle_z - Acc_angle_z) < jitter_buffer) {
    stableAccCount++;
  } else {
    stableAccCount = 0; // Reset counter if the acceleration value changes
  }

  // Only update the angle if the trend is consistent and the acceleration value has been stable
  if (consistentTrendCount >= requiredConsistentTrends && stableAccCount < stableThreshold) {
    // Z axis constraint with jitter buffer
    if ((is_increasing_z && (Total_angle_z + Gyro_angle_z > Total_angle_z + jitter_buffer)) || 
        (!is_increasing_z && (Total_angle_z + Gyro_angle_z < Total_angle_z - jitter_buffer))) {
      Total_angle_z = 0.98 * (Total_angle_z + Gyro_angle_z) + 0.02 * currentAcc_angle_z;
    }
  }

  ////////////////////////////////////// Serial output (Z axis only) /////////////////////////////////////
  Serial.print("Zº: ");
  Serial.println(Total_angle_z);

  // Update previous angles
  previous_angle_z = Total_angle_z;
  Acc_angle_z = currentAcc_angle_z; // Update the previous acceleration angle value
}
