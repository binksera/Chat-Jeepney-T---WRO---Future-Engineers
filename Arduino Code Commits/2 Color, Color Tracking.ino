#include "HUSKYLENS.h"
#include <AFMotor.h>
#include <Servo.h>

HUSKYLENS huskylens;
AF_DCMotor motor(1);
Servo myservo;

// HUSKYLENS green line >> SDA; blue line >> SCL
int ID0 = 0; // not learned results. GREY
int ID1 = 1; // first learned result (ID1), GREEN
int ID2 = 2; // second learned result (ID2), RED

int currentPriorityID = 0;  // Variable to store the currently prioritized ID
const int pixelThreshold = 3000;  // Define the common pixel threshold for both IDs

void printResult(HUSKYLENSResult result);
void moveForward(int speed);
void moveBackward(int speed);
void stopMotor();
void turnLeft(int speed);
void turnRight(int speed);

void setup() {
    Serial.begin(115200);
    Wire.begin();
    myservo.attach(10);  // attaches the servo on pin 10 to the servo object
    while (!huskylens.begin(Wire)) {
        Serial.println(F("Begin failed!"));
        Serial.println(F("1.Please recheck the \"Protocol Type\" in HUSKYLENS (General Settings>>Protocol Type>>I2C)"));
        Serial.println(F("2.Please recheck the connection."));
        delay(100);
    }
    
    huskylens.writeAlgorithm(ALGORITHM_COLOR_RECOGNITION);  // Using color recognition algorithm
}


void loop() {
    if (huskylens.requestBlocks()) {
        bool foundCurrentID = false;  // Flag to check if the current prioritized ID is still visible

        for (int i = 0; i < huskylens.countBlocks(); i++) {
            HUSKYLENSResult result = huskylens.getBlock(i);

            // If there is no priority, check both IDs
            if (currentPriorityID == 0) {
                if (result.ID == ID1 && (result.width * result.height) > pixelThreshold) {
                    currentPriorityID = ID1;  // Set priority to ID1
                    Serial.println("Prioritizing ID1.");
                } else if (result.ID == ID2 && (result.width * result.height) > pixelThreshold) {
                    currentPriorityID = ID2;  // Set priority to ID2
                    Serial.println("Prioritizing ID2.");
                }
            }

            // If we are prioritizing ID1
            if (currentPriorityID == ID1 && result.ID == ID1) {
                foundCurrentID = true;
                
                int xCenterID1 = result.xCenter;
                int yCenterID1 = result.yCenter;
                int centerMinID1 = 140;
                int centerMaxID1 = 180;
                int xThresholdID1 = 100;

                if (result.width > xThresholdID1) {
                    stopMotor();
                    Serial.println("ID1 exceeds x threshold, stopping.");
                } else if (xCenterID1 < centerMinID1) {
                    Serial.println("ID1 is left of center, turning left.");
                    turnLeft(95);
                } else if (xCenterID1 > centerMaxID1) {
                    Serial.println("ID1 is right of center, turning right.");
                    turnRight(95);
                } else {
                    Serial.println("ID1 is centered, moving forward.");
                    moveForward(150);
                }

                break;  // Stop checking other blocks after ID1 is found
            }

            // If we are prioritizing ID2
            if (currentPriorityID == ID2 && result.ID == ID2) {
                foundCurrentID = true;
                
                int xCenterID2 = result.xCenter;
                int yCenterID2 = result.yCenter;
                int centerMinID2 = 140;
                int centerMaxID2 = 180;
                int xThresholdID2 = 100;

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
                    moveForward(150);
                }

                break;  // Stop checking other blocks after ID2 is found
            }
        }

        // If the prioritized ID is no longer found, reset the priority
        if (!foundCurrentID) {
            currentPriorityID = 0;  // Reset priority when neither ID is detected
            moveForward(150);
            Serial.println("No Color detected, moving forward.");
        }
    } else {
        Serial.println("Fail to request objects from Huskylens!");
    }
}

void printResult(HUSKYLENSResult result) {
    if (result.command == COMMAND_RETURN_BLOCK) {
        Serial.println(String() + F("Block:xCenter=") + result.xCenter + F(",yCenter=") + result.yCenter + F(",width=") + result.width + F(",height=") + result.height + F(",ID=") + result.ID);
    }
}

void moveForward(int speed) {
    myservo.write(51);  //servo position for moving forward
    motor.setSpeed(speed);
    motor.run(BACKWARD);
}

void moveBackward(int speed) {
    myservo.write(52);  //servo position for moving backward
    motor.setSpeed(speed);
    motor.run(FORWARD);
}

void stopMotor() {
    motor.run(RELEASE); //stop moving
}

void turnLeft(int speed) {
    motor.setSpeed(speed);
    myservo.write(26);  //servo position for turning left
    motor.run(BACKWARD);
}

void turnRight(int speed) {
    motor.setSpeed(speed);
    myservo.write(77);  // sets the servo position for turning right
    motor.run(BACKWARD);
}
