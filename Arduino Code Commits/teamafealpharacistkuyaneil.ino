#include "HUSKYLENS.h"
#include <AFMotor.h>
#include <Servo.h>

// HUSKYLENS setup
HUSKYLENS huskylens;
AF_DCMotor motor(1);
Servo myservo;

// HUSKYLENS ID definitions
int ID0 = 0;
int ID1 = 1;
int ID2 = 2;


const int trigPin1 = A1;
const int echoPin1 = A0;
const int trigPin2 = A3; // New pin for the second sensor's trigger
const int echoPin2 = A2; // New pin for the second sensor's echo

// Ultrasonic sensor variables
long duration1, duration2;
int distance1, distance2;
int previousDistance1 = 0;
int previousDistance2 = 0;

// Function prototypes
void printResult(HUSKYLENSResult result);
void moveForward(int speed);
void moveBackward(int speed);
void stopMotor();
void turnLeft(int speed);
void turnRight(int speed);
void updateUltrasonicReadings();
void maintainDistance();

void setup() {
    Serial.begin(115200);
    Wire.begin();
    myservo.attach(10);
    while (!huskylens.begin(Wire)) {
        Serial.println(F("Begin failed!"));
        Serial.println(F("1.Please recheck the \"Protocol Type\" in HUSKYLENS (General Settings>>Protocol Type>>I2C)"));
        Serial.println(F("2.Please recheck the connection."));
        delay(100);
    }

    // Select algorithm for HUSKYLENS
    huskylens.writeAlgorithm(ALGORITHM_COLOR_RECOGNITION);

}

void loop() {
    updateUltrasonicReadings();  // Update distances from ultrasonic sensors

    if (huskylens.requestBlocks()) {
        Serial.println("###################################");
        Serial.println(String() + F("Count of learned IDs:") + huskylens.countLearnedIDs());
        Serial.println(String() + F("frame number:") + huskylens.frameNumber());

        Serial.println("#######");
        Serial.println(String() + F("Get all blocks and arrows. Count:") + huskylens.count());
        for (int i = 0; i < huskylens.count(); i++) {
            HUSKYLENSResult result = huskylens.get(i);
            printResult(result);
        }

        Serial.println("#######");
        Serial.println(String() + F("Get all blocks. Count:") + huskylens.countBlocks());
        bool foundID1 = false;
        bool foundID2 = false;
        for (int i = 0; i < huskylens.countBlocks(); i++) {
            HUSKYLENSResult result = huskylens.getBlock(i);
            printResult(result);

            if (result.ID == ID1 && (result.width * result.height) > 10000) {
                foundID1 = true;
                turnLeftcolor(100);
                delay(500);
                turnRightcolor(150);
                delay(500);
                moveForward(150);
                delay(200);
                stopMotor();
            }

            if (result.ID == ID2 && (result.width * result.height) > 12000) {
                foundID2 = true;
                Serial.println("ID2 detected with sufficient size");
                turnRight(100);
                delay(500);
                moveForward(150);
                delay(100);
                turnLeft(150);
                delay(600);
                stopMotor();
            }
        }

        if (!foundID1 && !foundID2) {
            maintainDistance();  // Maintain distance using ultrasonic sensors
        }

        Serial.println("#######");
        Serial.println(String() + F("Get all blocks and arrows tagged ID0. Count:") + huskylens.count(ID0));
        for (int i = 0; i < huskylens.count(ID0); i++) {
            HUSKYLENSResult result = huskylens.get(ID0, i);
            printResult(result);
        }

        Serial.println("#######");
        Serial.println(String() + F("Get all blocks and arrows tagged ID1. Count:") + huskylens.count(ID1));
        for (int i = 0; i < huskylens.count(ID1); i++) {
            HUSKYLENSResult result = huskylens.get(ID1, i);
            printResult(result);
        }

        Serial.println("#######");
        Serial.println(String() + F("Get all blocks and arrows tagged ID2. Count:") + huskylens.count(ID2));
        for (int i = 0; i < huskylens.count(ID2); i++) {
            HUSKYLENSResult result = huskylens.get(ID2, i);
            printResult(result);
        }
    } 
    else {
        Serial.println("Fail to request objects from Huskylens!");
    }
    
}

void printResult(HUSKYLENSResult result) {
    if (result.command == COMMAND_RETURN_BLOCK) {
        Serial.println(String() + F("Block:xCenter=") + result.xCenter + F(",yCenter=") + result.yCenter + F(",width=") + result.width + F(",height=") + result.height + F(",ID=") + result.ID);
    }
}

void moveForward(int speed) {
    myservo.write(51);
    motor.setSpeed(speed);
    motor.run(BACKWARD);
}

void moveBackward(int speed) {
    myservo.write(52);
    motor.setSpeed(speed);
    motor.run(FORWARD);
}

void stopMotor() {
    motor.run(RELEASE);
}

void turnLeft(int speed) {
    motor.setSpeed(speed);
    myservo.write(36);
    motor.run(BACKWARD);
}

void turnLeftcolor(int speed) {
    motor.setSpeed(speed);
    myservo.write(28);
    motor.run(BACKWARD);
}

void turnRightcolor(int speed) {
    motor.setSpeed(speed);
    myservo.write(70);
    motor.run(BACKWARD);
}

void turnLeftCorrect(int speed) {
    motor.setSpeed(speed);
    myservo.write(42);
    motor.run(BACKWARD);
}

void turnRight(int speed) {
    motor.setSpeed(speed);
    myservo.write(65);
    motor.run(BACKWARD);
}

void updateUltrasonicReadings() {
    // Sensor 1
    digitalWrite(trigPin1, LOW);
    delayMicroseconds(2);
    digitalWrite(trigPin1, HIGH);
    delayMicroseconds(10);
    digitalWrite(trigPin1, LOW);
    duration1 = pulseIn(echoPin1, HIGH);
    distance1 = duration1 * 0.034 / 2;

  if (distance1 <= 35 && abs(distance1 - previousDistance1) <= 5) {
    Serial.print("Distance Sensor 1: ");
    Serial.print(distance1);
    Serial.println(" cm");
  }

    previousDistance1 = distance1;

    // Sensor 2
    digitalWrite(trigPin2, LOW);
    delayMicroseconds(2);
    digitalWrite(trigPin2, HIGH);
    delayMicroseconds(10);
    digitalWrite(trigPin2, LOW);
    duration2 = pulseIn(echoPin2, HIGH);
    distance2 = duration2 * 0.034 / 2;

  // Filtering and printing the sensor value for sensor 2
  if (distance2 <= 35 && abs(distance2 - previousDistance2) <= 5) {
    Serial.print("Distance Sensor 2: ");
    Serial.print(distance2);
    Serial.println(" cm");
  }

  // Update the previousDistance variable with the current distance for sensor 2
  previousDistance2 = distance2;
}

void maintainDistance() {
    if (distance1 < 40) {
        // Object too close on the left, turn right
        Serial.println("turnright");
        turnRight(100);
        delay(50);
        //stopMotor();
    } else if (distance2 < 35) {
        // Object too close on the right, turn left
        Serial.println("turnleft");
        turnLeft(100);
        delay(50);
        //stopMotor();
    } 
    else {
        // If distance is okay, move forward
        Serial.println("turnforward");
        moveForward(255);
        delay(1);
        
    }
}
