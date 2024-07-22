Engineering materials
====

This repository contains engineering materials of a self-driven vehicle's model participating in the WRO Future Engineers competition in the season 2022.

## Content

* `t-photos` contains 2 photos of the team (an official one and one funny photo with all team members)
* `v-photos` contains 6 photos of the vehicle (from every side, from top and bottom)
* `video` contains the video.md file with the link to a video where driving demonstration exists
* `schemes` contains one or several schematic diagrams in form of JPEG, PNG or PDF of the electromechanical components illustrating all the elements (electronic components and motors) used in the vehicle and how they connect to each other.
* `src` contains code of control software for all components which were programmed to participate in the competition
* `models` is for the files for models used by 3D printers, laser cutting machines and CNC machines to produce the vehicle elements. If there is nothing to add to this location, the directory can be removed.
* `other` is for other files which can be used to understand how to prepare the vehicle for the competition. It may include documentation how to connect to a SBC/SBM and upload files there, datasets, hardware specifications, communication protocols descriptions etc. If there is nothing to add to this location, the directory can be removed.

## Introduction

_AIsteam and Arduino._

## Team Details
- **Coder:** Jacob Acuna
- **Builder:** John Ehmar Hermosa
- **Researcher:** Rei Nathaniel Ricamunda

## Team Photo

**Official Photo**

**Funny Photo**

**Performance Video**

https://youtu.be/T9l6r4ce5zs?si=HzVgMUuBB9jVTb4s

## Robot Design

**3D Model**

![3D Model](https://github.com/binksera/Chat-JeepneyT---WRO---Future-Engineers/blob/d812ea15e94702fd0156b1bdf8a4ae3c3b360e42/v-photos/3D%20Model.png)

**Physical Model**

![Physical Model](https://github.com/binksera/Chat-Jeepney-T---WRO---Future-Engineers/blob/c2eda4c8607d536d38d80eeb2229d9125a565d05/v-photos/Physical%20Model.png)


## Materials (Components)

**Key Components of the Chat Jeepney T:**   


**Lego Chassis**

The Lego Chassis will serve as the robot's body, providing a sturdy and lightweight frame to house all other components. Its compatibility with LEGO construction systems makes it easy to assemble and modify. This chassis will support the motor modules, battery, Arduino board, sensors, and other electronics, ensuring that all parts are securely mounted and easily accessible for maintenance and upgrades.

**Lithium Battery Module**

The Lithium Battery Module will supply power to the entire robot. With an output voltage of 7.4V and a capacity of 1100mAh, it will provide a sufficient energy source for the motors and electronic components. The maximum discharge rate of 3C ensures that the battery can deliver high current when needed. The rated charging voltage of 8.4V and current of 1A allow for efficient recharging. The DC5.5 input and output ports facilitate easy connections, and multiple batteries can be connected in parallel to extend operating time.

**Ordinary Motor Module**

The Ordinary Motor Module will be used for driving the wheels of the robot. These motors, operating at 7.4V, will provide the necessary torque and speed to move the robot. The motors will be controlled by the Arduino Uno R3, which will send signals to adjust the speed and direction based on sensor inputs and pre-programmed instructions.

**Simulated Steering Gear Module**

The Simulated Steering Gear Module will be used for steering and controlling the orientation of the robot. With a working voltage of 5V and a torque of 1.5kgf.cm, it will be capable of handling the physical demands of steering. The angle range of 0~180° and speed of 0.12 seconds/60° will provide precise and responsive control. Its compatibility with the LEGO construction system ensures easy integration with the Lego Chassis.

**Arduino Uno R3**

The Arduino Uno R3 will act as the central controller for the robot. It will interface with all sensors and actuators, processing input data and executing control algorithms. The Arduino will read data from the ultrasonic sensor, gyro breakout, and Huskylens, and use this information to make real-time decisions about navigation, obstacle avoidance, and movement.

**HC-SR04 Ultrasonic Sensor**

The HC-SR04 Ultrasonic Sensor will be used for distance measurement and obstacle detection. Operating at 5V DC and consuming 15mA, it emits ultrasonic waves and measures the time it takes for the echo to return. With a range of 2cm to 400cm and an accuracy of 3mm, it will provide precise distance measurements, allowing the robot to detect and avoid obstacles. The measuring angle of <15° ensures a focused detection area, and the sensor's dimensions (45 x 20 x 15mm) make it easy to mount on the Lego Chassis.

**MPU6050 Gyro Breakout**

The MPU6050 Gyro Breakout will provide orientation and motion data. With an input voltage range of 2.3 - 3.4V, it will be powered by the Arduino Uno. The tri-axis angular rate sensor (gyro) and tri-axis accelerometer will measure rotational and linear motion, respectively. The sensor's programmable full-scale ranges and high sensitivity will allow for accurate motion tracking, essential for navigation and balance.

**DFRobot Huskylens**

The DFRobot Huskylens will serve as the vision system for the robot. Equipped with a Kendryte K210 processor and an OV2640 image sensor, it will capture and process images. The Huskylens can perform various vision-based tasks, such as object recognition, face detection, and line tracking. Operating at a supply voltage of 3.3~5.0V, it will be powered by the Arduino Uno or directly by the battery module. The vision data from Huskylens will be used to enhance the robot's autonomy, enabling it to interact with its environment more intelligently.

**DC-DC Buck Converter LM2596S**

The DC-DC Buck Converter LM2596S is a highly efficient step-down voltage regulator designed to provide a stable output voltage from a higher input voltage. It can handle input voltages ranging from 4V to 35V and output voltages adjustable from 1.23V to 30V. The converter supports an input current of up to 3A and has a maximum power dissipation of 10 watts without a heatsink. The DC-DC Buck Converter will be used to regulate the voltage supplied to various components of the robot, ensuring that each part receives the appropriate voltage for optimal operation. Given the diverse voltage requirements of the robot's components, the converter will play a crucial role in maintaining system stability and efficiency.

 



**Code**

Shown here is the block code in aisteam usede for the obstacle challenge.

![Code](https://github.com/binksera/Chat-JeepneyT---WRO---Future-Engineers/blob/f956d6f74c6b82b01c7a1fdbffdf4c1f306f5505/src/AI%20Steam%20Code.png)


## Specifications



This site was built using [GitHub Pages](https://pages.github.com/).
