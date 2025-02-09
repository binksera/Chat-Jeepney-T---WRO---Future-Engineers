CHAT JEEPNEY-T
===

This repository contains engineering materials of the Chat Jeepney-T vehicle participating in the WRO Future Engineers competition in the season 2024.


## Introduction

This project introduces a versatile and innovative autonomous 4-wheeled robot, combining elements from AISTEAM, LEGO, and Arduino ecosystems. Designed to provide a practical platform for exploring robotics, automation, and intelligent systems, this robot integrates modular components to deliver a robust and customizable solution.

### Team Details
- **Coder:** Jacob S. Acuna
- **Builder:** John Ehmar D. Hermosa
- **Researcher:** Rei Nathaniel B. Ricamunda

### Team Photo


**Funny Photo**

![Funny Photo](https://github.com/binksera/Chat-Jeepney-T---WRO---Future-Engineers/blob/54a7ceabe2b6a60f85a8f6fbc39beb93da9a0709/t-photos/Funny%20Photo.png)

**Official Photo**

![Funny Photo](https://github.com/binksera/Chat-Jeepney-T---WRO---Future-Engineers/blob/fab026e74473fdd2db09cd6ea2236d374b63771c/t-photos/Official%20Photo.jpg)


### Performance Videos

_Final_

https://youtu.be/T9l6r4ce5zs?si=HzVgMUuBB9jVTb4s


## Robot Design

**3D Model**

![3D Model](https://github.com/binksera/Chat-Jeepney-T---WRO---Future-Engineers/blob/d74eae4098c1b3a38d5d914505276439cd8a65ba/v-photos/Final%20Vehicle/3D%20Models/3D%20Model%20(1).png)

**Physical Model**

![Physical Model](https://github.com/binksera/Chat-Jeepney-T---WRO---Future-Engineers/blob/4e0747e529718ea4f6e3fe80b6d2460b20edf164/v-photos/Final%20Vehicle/Physical%20Model/Physical%20Model%20(1).png)


## Materials (Components)

**Key Components of the Chat Jeepney T:**   


**Lego Chassis**

The _Lego Chassis_ will serve as the robot's body, providing a sturdy and lightweight frame to house all other components. Its compatibility with LEGO construction systems makes it easy to assemble and modify. This chassis will support the motor modules, battery, Arduino board, sensors, and other electronics, ensuring that all parts are securely mounted and easily accessible for maintenance and upgrades.

**Lithium Battery Module**

The _Lithium Battery Module_ will supply power to the entire robot. With an output voltage of 7.4V and a capacity of 1100mAh, it will provide a sufficient energy source for the motors and electronic components. The maximum discharge rate of 3C ensures that the battery can deliver high current when needed. The rated charging voltage of 8.4V and current of 1A allow for efficient recharging. The DC5.5 input and output ports facilitate easy connections, and multiple batteries can be connected in parallel to extend operating time.

**Ordinary Motor Module**

The _Ordinary Motor Module_ will be used for driving the wheels of the robot. These motors, operating at 7.4V, will provide the necessary torque and speed to move the robot. The motors will be controlled by the Arduino Uno R3, which will send signals to adjust the speed and direction based on sensor inputs and pre-programmed instructions.

**Simulated Steering Gear Module**

The _Simulated Steering Gear Module_ will be used for steering and controlling the orientation of the robot. With a working voltage of 5V and a torque of 1.5kgf.cm, it will be capable of handling the physical demands of steering. The angle range of 0~180° and speed of 0.12 seconds/60° will provide precise and responsive control. Its compatibility with the LEGO construction system ensures easy integration with the Lego Chassis.

**Arduino Uno R3**

The _Arduino Uno R3_ will act as the central controller for the robot. It will interface with all sensors and actuators, processing input data and executing control algorithms. The Arduino will read data from the ultrasonic sensor, gyro breakout, and Huskylens, and use this information to make real-time decisions about navigation, obstacle avoidance, and movement.

**HC-SR04 Ultrasonic Sensor**

The _HC-SR04 Ultrasonic Sensor_ will be used for distance measurement and obstacle detection. Operating at 5V DC and consuming 15mA, it emits ultrasonic waves and measures the time it takes for the echo to return. With a range of 2cm to 400cm and an accuracy of 3mm, it will provide precise distance measurements, allowing the robot to detect and avoid obstacles. The measuring angle of <15° ensures a focused detection area, and the sensor's dimensions (45 x 20 x 15mm) make it easy to mount on the Lego Chassis.

**MPU6050 Gyro Breakout**

The _MPU6050 Gyro Breakout_ will provide orientation and motion data. With an input voltage range of 2.3 - 3.4V, it will be powered by the Arduino Uno. The tri-axis angular rate sensor (gyro) and tri-axis accelerometer will measure rotational and linear motion, respectively. The sensor's programmable full-scale ranges and high sensitivity will allow for accurate motion tracking, essential for navigation and balance.

**DFRobot Huskylens**

The _DFRobot Huskylens_ will serve as the vision system for the robot. Equipped with a Kendryte K210 processor and an OV2640 image sensor, it will capture and process images. The Huskylens can perform various vision-based tasks, such as object recognition, face detection, and line tracking. Operating at a supply voltage of 3.3~5.0V, it will be powered by the Arduino Uno or directly by the battery module. The vision data from Huskylens will be used to enhance the robot's autonomy, enabling it to interact with its environment more intelligently.

**DC-DC Buck Converter LM2596S**

The _DC-DC Buck Converter LM2596S_ is a highly efficient step-down voltage regulator designed to provide a stable output voltage from a higher input voltage. It can handle input voltages ranging from 4V to 35V and output voltages adjustable from 1.23V to 30V. The converter supports an input current of up to 3A and has a maximum power dissipation of 10 watts without a heatsink. The DC-DC Buck Converter will be used to regulate the voltage supplied to various components of the robot, ensuring that each part receives the appropriate voltage for optimal operation. Given the diverse voltage requirements of the robot's components, the converter will play a crucial role in maintaining system stability and efficiency.

 




## Instruction Manual

Shown here is the pdf step-by-step instruction manual of the whole robot in its final form.

https://github.com/binksera/Chat-Jeepney-T---WRO---Future-Engineers/blob/a7c2a9b822923df3d51cd0b556e8e2fc29d48ade/other/Instruction%20Manual.pdf


## Code

Shown here is the pseudocode on the first commit of the AISteam.

![Code](https://github.com/binksera/Chat-JeepneyT---WRO---Future-Engineers/blob/f956d6f74c6b82b01c7a1fdbffdf4c1f306f5505/src/AI%20Steam%20Code.png)


Shown here is the c++ code used for the challenges. 

https://github.com/binksera/Chat-Jeepney-T---WRO---Future-Engineers/blob/e6aa2a4aef65a467d4792f19b1ba87c189c272d9/src/First%20Commit/Basic%20Movements.ino

'''plaintext

void setup() {
    Serial.begin(115200);
    Wire.begin();
    
    // Sensor setup
    pinMode(trigPin1, OUTPUT);
    pinMode(echoPin1, INPUT);
    pinMode(trigPin2, OUTPUT);
    pinMode(echoPin2, INPUT);
    myservo.attach(10); // Attaches the servo on pin 10 to the servo object

    while (!huskylens.begin(Wire)) {
        Serial.println(F("Begin failed!"));
        Serial.println(F("1. Please recheck the \"Protocol Type\" in HUSKYLENS (General Settings >> Protocol Type >> I2C)"));
        Serial.println(F("2. Please recheck the connection."));
        delay(100);
    }
    
    huskylens.writeAlgorithm(ALGORITHM_COLOR_RECOGNITION); // Using color recognition algorithm
    

void loop() {
    if (huskylens.requestBlocks()) {
        bool foundCurrentID = false; // Flag to check if the current prioritized ID is still visible

        for (int i = 0; i < huskylens.countBlocks(); i++) {
            HUSKYLENSResult result = huskylens.getBlock(i);

            // If there is no priority, check both IDs
            if (currentPriorityID == 0) {
                if (result.ID == ID1 && (result.width * result.height) > pixelThreshold) {
                    currentPriorityID = ID1; // Set priority to ID1
                    Serial.println("Prioritizing ID1.");
                } else if (result.ID == ID2 && (result.width * result.height) > pixelThreshold) {
                    currentPriorityID = ID2; // Set priority to ID2
                    Serial.println("Prioritizing ID2.");
                }
            }

            // If we are prioritizing ID1
            if (currentPriorityID == ID1 && result.ID == ID1) {
                foundCurrentID = true;
                
                int xCenterID1 = result.xCenter;
                int yCenterID1 = result.yCenter;
                int centerMinID1 = 100;
                int centerMaxID1 = 220;
                int xThresholdID1 = 100;

                if (result.width > xThresholdID1 && A == 0) {
                    stopMotor();
                    moveBackward(255);
                    delay(1000);
                    turnLeft(255);
                    delay(200);
                    turnRight(255);
                    delay(100);
                    moveForward(255);
                    delay(200);
                    stopMotor();
                    Serial.println("ID1 exceeds x threshold, stopping.");
                    disableUltrasonic = true; // Disable ultrasonic alignment
                } else if (xCenterID1 < centerMinID1) {
                    Serial.println("ID1 is left of center, turning left.");
                    turnLeft(95);
                } else if (xCenterID1 > centerMaxID1) {
                    Serial.println("ID1 is right of center, turning right.");
                    turnRight(95);
                } else {
                    Serial.println("ID1 is centered, moving forward.");
                    moveForward(50);
                }

                break; // Stop checking other blocks after ID1 is found
            }

            // If we are prioritizing ID2
            if (currentPriorityID == ID2 && result.ID == ID2) {
                foundCurrentID = true;
                
                int xCenterID2 = result.xCenter;
                int yCenterID2 = result.yCenter;
                int centerMinID2 = 140;
                int centerMaxID2 = 180;
                int xThresholdID2 = 50;

                if (result.width > xThresholdID2) {
                    stopMotor();
                    Serial.println("ID2 exceeds x threshold, stopping.");
                } else if (xCenterID2 < centerMinID2) {
                    Serial.println("ID2 is left of center, turning left.");
                    turnLeft(95);
                } else if (xCenterID2 > centerMaxID2) {
                    Serial.println("ID2 is right of center, turning right.");
                    turnRight(95);
                } else {
                    Serial.println("ID2 is centered, moving forward.");
                    moveForward(30);
                }

                break; // Stop checking other blocks after ID2 is found
            }
        }

        // If the prioritized ID is no longer found, reset the priority
        if (!foundCurrentID) {
            currentPriorityID = 0; // Reset priority when neither ID is detected
            
            if (!disableUltrasonic) { // Only execute ultrasonic code if not disabled
                // Ultrasonic Sensor 1
                digitalWrite(trigPin1, LOW);
                delayMicroseconds(2);
                digitalWrite(trigPin1, HIGH);
                delayMicroseconds(10);
                digitalWrite(trigPin1, LOW);
                duration1 = pulseIn(echoPin1, HIGH);
                distance1 = duration1 * 0.034 / 2;

                if (distance1 <= 100 && abs(distance1 - previousDistance1) <= 5) {
                    Serial.print("Distance Sensor 1: ");
                    Serial.print(distance1);
                    Serial.println(" cm");
                }

                previousDistance1 = distance1;

                // Ultrasonic Sensor 2
                digitalWrite(trigPin2, LOW);
                delayMicroseconds(2);
                digitalWrite(trigPin2, HIGH);
                delayMicroseconds(10);
                digitalWrite(trigPin2, LOW);
                duration2 = pulseIn(echoPin2, HIGH);
                distance2 = duration2 * 0.034 / 2;

                if (distance2 <= 100 && abs(distance2 - previousDistance2) <= 5) {
                    Serial.print("Distance Sensor 2: ");
                    Serial.print(distance2);
                    Serial.println(" cm");
                }

                previousDistance2 = distance2;

                Serial.println("No threshold crossed. Moving forward.");
                
                // Simple obstacle avoidance logic
                if (distance1 < 30) {
                    turnLeft(100);
                }
                if (distance2 < 30) {
                    turnRight(100);
                } else {
                    moveForward(50);
                    delay(90);
                    turnLeft(100);
                    delay(13);
                }
            } else {
                // Reset the flag to re-enable ultrasonic alignment in the next loop iteration
                disableUltrasonic = false;
            }

            delay(1); // Adjusted delay for better responsiveness
        }
    } else {
        Serial.println("Fail to request objects from Huskylens!");
    }


## Specifications

**Mobility Management**

The Chat Jeepney-T uses an Ordinary Motor Module for rear propulsion, driving the rear wheels through a gear system connected to a common axle. A Simulated Steering Gear Module at the front controls the steering by adjusting the angle of the front wheels. Power is provided by a Lithium Battery Module, regulated by a DC-DC Buck Converter, and managed by an Arduino Uno R3. This setup ensures smooth, coordinated movement and precise steering for autonomous navigation.

**Power and Sense Management**

The Chat Jeepney-T is powered by a Lithium Battery Module, which provides a stable voltage of 7.4V and a capacity of 1100mAh. This battery ensures sufficient energy for the motors and electronic components, enabling extended operational time. The battery is connected to a DC-DC Buck Converter LM2596S, which regulates the voltage to appropriate levels for different components, such as 5V for sensors and 3.3V for specific modules.

### Bill of Materials (BOM)

1. Lithium Battery Module:
  - Output Voltage: 7.4V

  - Capacity: 1100mAh

2. DC-DC Buck Converter LM2596S:

- Input Voltage: 4V-35V
 
- Output Voltage: Adjustable (1.23V to 30V)

- Input Current: 3A (max)

3. Ordinary Motor Modules:
  
- Voltage: 7.4V

4. Simulated Steering Gear Module:
  
- Voltage: 5V

- Torque: 1.5kgf.cm

5. HC-SR04 Ultrasonic Sensor:
  
- Operating Voltage: 5V
   
- Current: 15mA

6. MPU6050 Gyro Breakout:
   
- Input Voltage: 3.3V
 
- Tri-Axis Gyro and Accelerometer
 
7. DFRobot Huskylens:

- Supply Voltage: 3.3V-5V

9. Wires and Connectors:
 
- For connecting battery, sensors, and motors to the Arduino and power sources.

10. Mounting Hardware:

- Brackets and mounts to secure components to the LEGO chassis.


**Obstacle Management**

The strategy for obstacle management involves using a combination of sensors and algorithms to navigate and overcome obstacles. The vehicle utilizes the HC-SR04 Ultrasonic Sensor for distance measurement, the MPU6050 Gyro Breakout for orientation and balance, and the DFRobot Huskylens for advanced object recognition. 

![Flow Diagram](https://github.com/binksera/Chat-Jeepney-T---WRO---Future-Engineers/blob/e364056f1a4e25a34d3993ab16fcc1f94b7283ee/other/Flow%20Diagram.png)

### Pseudocode

```plaintext
Initialize sensors
Initialize motors

While True:
    distance = Read_HC_SR04()
    if distance < obstacle_threshold:
        direction = Determine_Clear_Path()
        if direction == 'left':
            Turn_Left()
        elif direction == 'right':
            Turn_Right()
        else:
            Reverse()
            Recalculate_Path()
    else:
        Move_Forward()

    object = Recognize_Object()
    if object is not None:
        Handle_Object(object)

    balance = Read_MPU6050()
    Adjust_Balance(balance)

End

```


Thank You for Reading!

This site was built using [GitHub Pages](https://pages.github.com/).
