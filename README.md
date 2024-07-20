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

_This part must be filled by participants with the technical clarifications about the code: which modules the code consists of, how they are related to the electromechanical components of the vehicle, and what is the process to build/compile/upload the code to the vehicle’s controllers._

## Team Details
- **Coder:** Jacob Acuna
- **Builder:** John Ehmar Hermosa
- **Researcher:** Rei Nathaniel Ricamunda

## Team Photo

**Official Photo**

**Funny Photo**

**Youtube Video**

https://youtu.be/T9l6r4ce5zs?si=HzVgMUuBB9jVTb4s

## Robot Design

**3D Model**

![3D Model](https://github.com/binksera/Chat-JeepneyT---WRO---Future-Engineers/blob/d812ea15e94702fd0156b1bdf8a4ae3c3b360e42/v-photos/3D%20Model.png)

**Physical Model**

![Physical Model](https://github.com/binksera/Chat-JeepneyT---WRO---Future-Engineers/blob/7cddefb7fb6671cce8aeb29278721eead191f83a/v-photos/Actual%20Model.png)


## Materials (Components)

**Key Components of the Chat Jeepney T:**   


**Chassis:** 

Holds multiple parts of the robot together, providing a sturdy framework that ensures the structural integrity of the entire vehicle.

![chassis](X)

**Differential (Steering Mechanism):** 

Responsible for turning the front wheels, allowing the robot to steer and navigate through its environment. This mechanism enables the robot to make precise turns and maneuver around obstacles effectively.

![diff](X)

**Servo Motor:** 

Connected to the steering mechanism, it controls its movement. By adjusting the angle of the front wheels, the servo motor allows the robot to change direction as needed.

![servo](X)

**DC Motor:** 

Drives the rear wheels, providing the necessary power to propel the robot forward. This motor ensures that the robot can move at a consistent speed and handle various terrains.

![dc](X)

**Wheels:** 

Enable the robot to move. The front wheels are steered by the differential and servo motor, while the rear wheels are driven by the DC motor.

![wheels](X)

**Camera:** 

Serves as the robot's eyes, identifying and avoiding obstacles in its path. By processing visual data, the camera helps the robot detect red and green obstacles, enabling it to make informed decisions to avoid collisions.

![camera](X)

**Microcontroller:** 

Acts as the main brain of the robot, processing data from the camera and other sensors. It makes decisions based on this data and sends commands to the motors and steering mechanism, ensuring smooth and safe operation.

![mcont](X)

**Battery:** 

The primary power source for the robot, supplying energy to all its modules. It ensures that the robot has the necessary power to operate its motors, camera, microcontroller, and other components effectively.

![batt](X)

**Integrated Gray Scale Sensor:**

Identifies colors on the mat, serving as an additional tool for distinguishing between different shades and colors to enhance obstacle detection and navigation.

![ir](X)

**Code**

Shown here is the block code in aisteam usede for the obstacle challenge.

![Code](https://github.com/binksera/Chat-JeepneyT---WRO---Future-Engineers/blob/f956d6f74c6b82b01c7a1fdbffdf4c1f306f5505/src/AI%20Steam%20Code.png)




This site was built using [GitHub Pages](https://pages.github.com/).
