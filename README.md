# stm32-project-02-weighing-machine

## Overview

This project demonstrates the development of a weighing machine firmware architecture using the **STM32F407 Discovery Board**.

The project focuses on developing reusable embedded firmware components including GPIO and ADC drivers, a moving average filter, a calibration module, and an application layer.

Since an external load cell and HX711 module were not available, the STM32 internal temperature sensor is used as the ADC source to validate the complete data acquisition, filtering, calibration, and measurement pipeline.

The project is implemented using **CMSIS register-level programming** to provide a clear understanding of STM32 peripheral programming and embedded firmware driver development.
---

## Objectives

- Learn STM32 ADC peripheral at the register level
- Develop reusable GPIO and ADC drivers
- Design a modular firmware architecture
- Implement software calibration
- Apply moving average digital filtering
- Build a complete embedded application using layered architecture
- Practice professional documentation and Git workflow

---

## Features

- Bare-metal STM32 firmware
- CMSIS register-level programming
- Modular driver architecture
- GPIO driver
- ADC driver
- Continuous ADC conversion
- Internal temperature sensor acquisition
- Moving average digital filter
- Zero calibration
- Relative value calculation
- Functional validation
- Professional project documentation

---

## Hardware

| Component | Description |
|-----------|-------------|
| Microcontroller | STM32F407VG |
| Development Board | STM32F407 Discovery |
| IDE | STM32CubeIDE |
| Debugger | ST-Link |
| Programming Language | Embedded C |

---

## Software Architecture

```text
+-------------------------------+
|      Application Layer        |
|     Weighing Machine          |
+-------------------------------+
               │
               ▼
+-------------------------------+
|    Calibration Module         |
+-------------------------------+
               │
               ▼
+-------------------------------+
|  Moving Average Filter        |
+-------------------------------+
               │
               ▼
+-------------------------------+
| GPIO Driver | ADC Driver      |
+-------------------------------+
               │
               ▼
+-------------------------------+
|            CMSIS              |
+-------------------------------+
               │
               ▼
+-------------------------------+
|      STM32F407 Hardware       |
+-------------------------------+
```
---
## Implemented Modules

### Drivers
- GPIO Driver
- ADC Driver

### Middleware
- Moving Average Filter
- Calibration Module

### Application
- Weighing Machine Application

---
## Project Structure

```text
stm32-project-02-weighing-machine/
│
├── Docs/
│   ├── SRS.md
│   ├── HLD.md
│   ├── LLD.md
│   ├── Block_Diagram.md
│   ├── DFD.md
│   ├── Test_Plan.md
│   └── Interview_Notes.md
│
├── Images/
│
├── Firmware/
│   └── WeighingMachine/
│       ├── Core/
│       ├── Drivers/
│       ├── Startup/
│       ├── Debug/                 (Ignored by Git)
│       ├── .project
│       ├── .cproject
│       └── STM32F407VGTX_FLASH.ld
│
├── README.md
├── LICENSE
└── .gitignore
```

---
## Validation

The project has been validated through:

- GPIO driver validation
- ADC driver validation
- Temperature sensor acquisition
- Continuous ADC conversion
- Moving average filter verification
- Zero calibration verification
- Functional application testing

---

## Development Roadmap

- [x] Create GitHub repository
- [x] Create README
- [x] Software Requirements Specification (SRS)
- [x] High-Level Design (HLD)
- [x] Low-Level Design (LLD)
- [x] System Block Diagram
- [x] Data Flow Diagram (DFD)
- [x] GPIO Driver
- [x] ADC Driver
- [x] ADC Driver Validation
- [x] Moving Average Filter
- [x] Calibration Module
- [x] Weighing Machine Application
- [x] Functional Validation
- [ ] Final Documentation

---

## Future Enhancements

- HX711 Load Cell Integration
- DMA-Based ADC Acquisition
- ADC Interrupt Mode
- UART-Based Debug Logging
- LCD/OLED Display Interface

---

## Note

> The STM32 internal temperature sensor is used as the ADC input to validate the complete firmware architecture. The software architecture is designed so that the temperature sensor can be replaced with an external load cell and HX711 module in future without major software changes.
---

## License

This project is licensed under the MIT License.
