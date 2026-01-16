# 🔋 (VSC) Modeling & Control | Renewable Energy Lab

**Average Arm Model Design and Simulation of a Voltage Source Converter (VSC)**

A comprehensive analysis of **Voltage Source Converters (VSCs)** for renewable energy integration, focusing on modeling, control strategies, and grid impedance effects.

## 📖 Table of Contents
- [Project Overview](#-project-overview)
- [Key Features](#-key-features)
- [Simulation Highlights](#-simulation-highlights)
- [Repository Structure](#-repository-structure)
- [Getting Started](#-getting-started)
- [Dependencies](#-dependencies)
- [License](#-license)

## 📌 Project Overview

This repository contains the report and simulations for a **Voltage Source Converter (VSC)** system, covering:
* **Average modeling** of VSCs for efficient AC/DC power conversion.
* **Control strategies:** Phase-Locked Loop (PLL), current/power loops, and Park transformations.
* **Grid impedance impact** under varying Short-Circuit Ratios (SCRs).

**Key applications:** HVDC transmission, renewable energy integration, and grid stability enhancement.

## 🚀 Key Features

### 1. VSC Average Model
* Simplified representation of switching devices (IGBTs) for reduced computational complexity.
* AC grid block with **690V/50Hz** parameters and inductor/filter design (**30.31 µH**).

### 2. Control Systems
* **Phase-Locked Loop (PLL):** Robust grid synchronization.
* **Current Control Loop:** Decoupled dq-axis control for active/reactive power regulation.
* **Power Control Loop:** PI controllers for precise tracking of $P_{ref}$ and $Q_{ref}$.

### 3. Grid Impedance Analysis
* Impact of SCR (1, 3, 5) on active/reactive power tracking.
* MATLAB simulations demonstrating stability under weak vs. strong grid conditions.

## 📊 Simulation Highlights

| Scenario | Key Insight |
| :--- | :--- |
| **SCR = 5 (Strong Grid)** | Fast power tracking with minimal overshoot. Ideal for stable HVDC systems. |
| **SCR = 3 (Moderate Grid)** | Slower response due to higher grid impedance. Requires robust control tuning. |
| **SCR = 1 (Weak Grid)** | Power tracking fails—risk of voltage collapse. Highlights grid stability limits. |

## 📂 Repository Structure

```plaintext
├── VSC_Average_Model.slx         # Main Simulink Model File (Check filename!)
├── VSC_Parameters.m              # MATLAB Script for Parameters (Check filename!)
└── README.md                     # Project Documentation
```

## 🛠 Getting Started

### Prerequisites
To run this simulation correctly, you will need:
* **MATLAB** (R2024b or later recommended)
* **Simulink**
* **Simscape Electrical** (Specialized Power Systems)
* **Control System Toolbox**

### Running the Simulation
1.  Clone this repository or download the files.
2.  Open MATLAB and run the parameter script (e.g., `VSC_Parameters.m`) to load system variables into the workspace.
3.  Open the Simulink model file.
4.  Run the simulation.
5.  Observe the scopes to analyze **Active Power (P)**, **Reactive Power (Q)**, and **Grid Current**.

## 📜 License
This project is open-source and available under the **MIT License**.