#include "HUSKYLENS.h"
#include <AFMotor.h>
#include <Servo.h>

HUSKYLENS huskylens;
AF_DCMotor motor(1);
Servo myservo;

// HUSKYLENS green line >> SDA; blue line >> SCL
int ID0 = 0; // not learned results. Grey result on HUSKYLENS screen
int ID1 = 1; // first learned results. colored result on HUSKYLENS screen
int ID2 = 2; // second learned results. colored result on HUSKYLENS screen
// and so on.....

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
    
    // Uncomment one of the following code to switch the algorithm on HUSKYLENS:
    // huskylens.writeAlgorithm(ALGORITHM_FACE_RECOGNITION);
    // huskylens.writeAlgorithm(ALGORITHM_OBJECT_TRACKING);
    // huskylens.writeAlgorithm(ALGORITHM_OBJECT_RECOGNITION);
    // huskylens.writeAlgorithm(ALGORITHM_LINE_TRACKING);
    huskylens.writeAlgorithm(ALGORITHM_COLOR_RECOGNITION);
    // huskylens.writeAlgorithm(ALGORITHM_TAG_RECOGNITION);
}


void loop() {
    if (huskylens.requestBlocks()) {
        bool foundID1 = false;  // Flag to check if any ID1 block meets the conditions

        for (int i = 0; i < huskylens.countBlocks(); i++) {
            HUSKYLENSResult result = huskylens.getBlock(i);
            
            // Check if the block is ID1 and the size is above a threshold
            if (result.ID == ID1 && (result.width * result.height) > 3000) {
                foundID1 = true;
                
                int xCenter = result.xCenter;
                int yCenter = result.yCenter;

                // Define the acceptable center range for x and y thresholds for stopping
                int centerMin = 140;
                int centerMax = 180;
                int xThreshold = 100;  // Define the threshold for xCenter

                // Stop the robot if the xCenter exceeds the threshold value
                if (result.width  > xThreshold) {
                    stopMotor();
                    Serial.println("ID1 exceeds x threshold, stopping.");
                }
                // Adjust the robot to center the ID1 block
                else if (xCenter < centerMin) {
                    Serial.println("ID1 is left of center, turning left.");
                    turnLeft(95);  // Turn left if ID1 is to the left of the center range
                }
                else if (xCenter > centerMax) {
                    Serial.println("ID1 is right of center, turning right.");
                    turnRight(95);  // Turn right if ID1 is to the right of the center range
                }
                else {
                    Serial.println("ID1 is centered, moving forward.");
                    moveForward(150);  // Move forward if ID1 is within the center range
                }

                break;  // Once an ID1 block is found and acted upon, exit the loop
            }
        }

        if (!foundID1) {
            // If no valid ID1 block is found, keep moving forward
            moveForward(150);
            Serial.println("No valid ID1 detected, moving forward.");
        }
    } else {
        Serial.println("Fail to request objects from Huskylens!");
    }
}




void printResult(HUSKYLENSResult result) {
    if (result.command == COMMAND_RETURN_BLOCK) { // result is a block
        Serial.println(String() + F("Block:xCenter=") + result.xCenter + F(",yCenter=") + result.yCenter + F(",width=") + result.width + F(",height=") + result.height + F(",ID=") + result.ID);
    }
}

void moveForward(int speed) {
    myservo.write(51);  // sets the servo position for moving forward
    motor.setSpeed(speed);
    motor.run(BACKWARD);
}

void moveBackward(int speed) {
    myservo.write(52);  // sets the servo position for moving backward
    motor.setSpeed(speed);
    motor.run(FORWARD);
}

void stopMotor() {
    motor.run(RELEASE);
}

void turnLeft(int speed) {
    motor.setSpeed(speed);
    myservo.write(26);  // sets the servo position for turning left
    motor.run(BACKWARD);
}

void turnRight(int speed) {
    motor.setSpeed(speed);
    myservo.write(77);  // sets the servo position for turning right
    motor.run(BACKWARD);
}
