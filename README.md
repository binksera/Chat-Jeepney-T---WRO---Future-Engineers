Engineering materials
====

This repository contains engineering materials of a self-driven vehicle's model participating in the WRO Future Engineers competition in the season 2024.


## Introduction

This project introduces a versatile and innovative autonomous 4-wheeled robot, combining elements from AISTEAM, LEGO, and Arduino ecosystems. Designed to provide a practical platform for exploring robotics, automation, and intelligent systems, this robot integrates modular components to deliver a robust and customizable solution.

### Team Details
- **Coder:** Jacob Acuna
- **Builder:** John Ehmar Hermosa
- **Researcher:** Rei Nathaniel Ricamunda

### Team Photo

**Official Photo**

**Funny Photo**

### Performance Videos

_Draft_

https://youtu.be/T9l6r4ce5zs?si=HzVgMUuBB9jVTb4s

_Final_

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

Shown here is the instruction manual of the whole robot in its final form.

https://github.com/binksera/Chat-Jeepney-T---WRO---Future-Engineers/blob/7bedd412f83b395a592883aeea0f45b121cd99ca/other/Instruction%20Manual.pdf


**Code**

Shown here is the pseudocode on the first commit of the AISteam.

![Code](https://github.com/binksera/Chat-JeepneyT---WRO---Future-Engineers/blob/f956d6f74c6b82b01c7a1fdbffdf4c1f306f5505/src/AI%20Steam%20Code.png)


Shown here is the c++ code used for the obstacle challenge.


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

This site was built using [GitHub Pages](https://pages.github.com/).
