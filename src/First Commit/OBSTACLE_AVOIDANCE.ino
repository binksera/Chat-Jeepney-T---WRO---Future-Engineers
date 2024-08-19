// iteration 3

// Defining the pins for the sensors
const int trigPin1 = A1;
const int echoPin1 = A0;
const int trigPin2 = A3;
const int echoPin2 = A2;

// Defining variables for the sensors
long duration1, duration2;
int distance1, distance2;
int previousDistance1 = 0;
int previousDistance2 = 0;

#include <AFMotor.h>
#include <Servo.h>

AF_DCMotor motor(1);
Servo myservo;

void moveForward(int speed);
void moveBackward(int speed);
void stopMotor();
void turnLeft(int speed);
void turnRight(int speed);

void setup() {
  Serial.begin(115200);

  // Sensor setup
  pinMode(trigPin1, OUTPUT);
  pinMode(echoPin1, INPUT);
  pinMode(trigPin2, OUTPUT);
  pinMode(echoPin2, INPUT);

  myservo.attach(10); // Attaches the servo on pin 10 to the servo object
}

void loop() {
  // Ultrasonic Sensor 1
  digitalWrite(trigPin1, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin1, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin1, LOW);
  duration1 = pulseIn(echoPin1, HIGH);
  distance1 = duration1 * 0.034 / 2;

  if (distance1 <= 40 && abs(distance1 - previousDistance1) <= 5) {
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

  if (distance2 <= 40 && abs(distance2 - previousDistance2) <= 5) {
    Serial.print("Distance Sensor 2: ");
    Serial.print(distance2);
    Serial.println(" cm");
  }
  previousDistance2 = distance2;

  // Simple obstacle avoidance logic without adaptive corrections
  if (distance1 < 25) {
    // Right sensor detects an obstacle, turn left
    turnLeft(100);
  } else if (distance2 < 25) {
    // Left sensor detects an obstacle, turn right
    turnRight(100);
  } else {
    // No obstacles, move forward
    moveForward(100);
  }

  delay(1);
}

void moveForward(int speed) {
  myservo.write(51);  // Sets the servo position for moving forward
  motor.setSpeed(speed);
  motor.run(BACKWARD);
}

void moveBackward(int speed) {
  myservo.write(52);  // Sets the servo position for moving backward
  motor.setSpeed(speed);
  motor.run(FORWARD);
}

void stopMotor() {
  motor.run(RELEASE);
}

void turnLeft(int speed) {
  motor.setSpeed(speed);
  myservo.write(26);  // Set a fixed angle for turning left
  motor.run(BACKWARD);
}

void turnRight(int speed) {
  motor.setSpeed(speed);
  myservo.write(77);  // Set a fixed angle for turning right
  motor.run(BACKWARD);
}
