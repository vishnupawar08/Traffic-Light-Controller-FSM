# 🚦 Traffic Light Controller using FSM (Verilog HDL)

This project implements a Traffic Light Controller using a Moore Finite State Machine (FSM) in Verilog HDL. The system controls traffic flow at an intersection of North-South (NS) and East-West (EW) roads using timed state transitions.

---

## 📌 Features
- 4-State Moore FSM
- Controls two-road intersection (NS & EW)
- Counter-based timing control
- RTL design using Verilog
- Simulation using EDA Playground

---

## 🧠 Finite State Machine (FSM)

The controller operates using a Moore FSM with the following states:

- **S0** → NS Green, EW Red  
- **S1** → NS Yellow, EW Red  
- **S2** → NS Red, EW Green  
- **S3** → NS Red, EW Yellow  

### 🔄 State Transition:
S0 → S1 → S2 → S3 → repeat

---

## 🔄 State Diagram

![State Diagram](state_diagram.png)

---

## 🧩 Block Diagram

![Block Diagram](block_diagram.png)

---

## ⚙️ Working Principle

The system transitions between states based on a counter:

- Green duration = 10 cycles  
- Yellow duration = 3 cycles  

Each state activates the corresponding traffic lights for NS and EW directions.

---

## 💻 Verilog Design

The design includes:
- State register
- Counter logic
- Output logic

👉 Full code available in:
- `traffic_light.v`

---

## 🧪 Testbench

A testbench is used to:
- Generate clock signal  
- Apply reset  
- Verify FSM behavior  

👉 File:
- `tb.v`

---

## 📊 Simulation Output

The waveform verifies:

- Correct state transitions (S0 → S1 → S2 → S3)
- Proper timing behavior
- Correct NS and EW signal operation

![Waveform](waveform.png)

---

## 🛠 Tools Used
- Verilog HDL  
- EDA Playground  

---

## 🔗 Simulation Link
https://www.edaplayground.com/x/WTmJ

---

## 📁 Project Files
- `traffic_light.v`
- `tb.v`
- `state_diagram.png`
- `block_diagram.png`
- `waveform.png`
- Project Report (PDF)

---

## 🚀 Future Enhancements
- Traffic sensor-based control 🚗  
- Pedestrian crossing system 🚶  
- Emergency vehicle priority 🚑  
- FPGA implementation  

---

## 📌 Conclusion
The project successfully demonstrates the design and simulation of a traffic light controller using FSM. The system operates correctly with proper state transitions and timing control.

---
