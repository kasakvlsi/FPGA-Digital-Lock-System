\# FPGA Digital Lock System



\## Project Overview



The \*\*Digital Lock System\*\* is a password-based security design implemented using \*\*Verilog HDL\*\* and deployed on a \*\*Basys-3 FPGA board\*\*.

The system verifies a user-entered password using switches and push buttons to control lock and unlock operations.



\---



\##  Features



\* 4-bit password authentication

\* Lock / Unlock indication using LEDs

\* Wrong password detection

\* Limited login attempts protection

\* Manual reset option

\* Hardware implementation on FPGA



\---



\## Working Principle



1\. User enters password using FPGA switches (`SW`).

2\. Press \*\*Check Button\*\* to verify password.

3\. If password is correct:



&#x20;  \*  Unlock LED turns ON.

4\. If password is wrong:



&#x20;  \*  Error LED turns ON.

5\. After multiple wrong attempts, system remains locked until reset.



\---



\##  Tools \& Technologies



\* Verilog HDL

\* Xilinx Vivado Design Suite

\* Basys-3 FPGA Board

\* RTL Simulation \& Synthesis



\---





\##  Expected Hardware Output



\* Correct Password →  System Unlocks

\* Wrong Password →  Error LED ON

\* Reset Button → System returns to Locked state



\---



\##  Future Improvements



\* Numeric keypad password entry

\* 7-segment display password interface

\* UART / Serial authentication

\* Multi-user access system

\* FPGA-based security controller



\---



\##  Author



\*\*Kasak Chauhan\*\*

B.Tech VLSI Student

GitHub: https://github.com/kasakvlsi



\---



⭐ This project is part of my FPGA \& VLSI learning journey.



