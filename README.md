# Basic_SoC_implementation
SoC 기본 블럭,  Peripheral Macro 설계 및 RTL-to-GDSII

## 🫡 어서오세요
환영합니다!! SoC 102에서는 ASIC의 RTL-to-GDSII Flow에 따라 SoC의 구성요소를 칩으로 구현해 보아요. SoC의 기본지식을 하나하나 HDL을 통해 구현하고, 복잡도가 놓은 I/F를 Physical Implementation해보면 어느새 반도체가 여러분의 삶 속으로 친숙하게 다가오는 것을 느낄 수 있을 거예요.

## 🧠구성은 다음과 같아요 
**Background**
칩을 개발하게 된 사회경제적인 배경과 설계기업의 발달을 함꼐 살펴보아요.
반도체 개발 환경인 Linux와 친해져 보고 CLI(Command Line Interface)의 편리함에 익숙해져 보아요.
포트폴리오 구성을 위한 VCS(Version Control System)의 운용방법을 숙지하고 GitHub에 나만의 포트폴리오를 구성해 보아요.

**SoC Componet Modeling**
SoC라는 집을 짓기 위한 기본적인 회로 블럭들을 빠르게 점검해요. 조합회로는 물론이거니와 순차회로, 그리고 Finite State Machine(FSM)을 가지고 놀다 보면 어느새 SoC 구현을 위한 기본기가 단단해 지는 것을 느낄 수가 있어요.

**SoC RTL-to-GDSII**
쉬운 Digital 회로에서 Finite State Machine(FSM)이 포함된 Peripheral을 설계/검증하고 Physical Implementation해 보아요. 여러분은 CODE 를 통한 Software 발달의 놀라운 힘을 경험할 수 있을거예요

## 🔐 실무 개발환경을 고려하여 구성했어요

실습은 반도체 현업 개발 환경중 하나인 Cadencet사의 DDI(Degital Design Implementation), SSV(Silicon Signoff & Verification)을 이용해서 진행해요. 현업과 유사한 환경에서 실습을 경험해 보는 것은 여러분의 취업과 진로에 큰 도움이 될 거에요

## 👨‍💻프로젝트 개요
* SoC의 기본을 이루는 **RTL Block Coding**
* 주요 **Combinational / Sequential Logic** 의 HDL 설계 및 검증
* ASIC Flow에 사용하는 전문 EDA Tool을 사용한 **Functional Verification**
* RTL 소스의 **Constraint** 작성 
* **Constraint** 적용한 RTL 소스의 **Synthesis**
* **Synthesis** 이후의 **Gate Level Netlist**에 대한 **Post Synthesis Simulation**
* **Gate Level Netlist(GNL)** 및 **'.sdc', '.lef'** 적용한 **Auto Place and Route(APR)**


## 📜참고자료(링크)

[Cadence Xcelium](https://www.cadence.com/en_US/home/tools/system-design-and-verification/simulation-and-testbench-verification/xcelium-simulator.html) : (美) 케이던스사의 상업용 Logic Simulator
[Xilinx Vivado](https://www.amd.com/en/support/downloads/adaptive-socs-and-fpgas/development-tools/2025-2.html) : (美) AMD사의 FPGA용 IDE
[EDA Playground](https://www.edaplayground.com/) : 웹 상에서 Logic Simulation을 할 수 있는 Open Source Page
[WSL](https://learn.microsoft.com/ko-kr/windows/wsl/install) : Windows상에서 Linux를 편리하게 운영할 수 있게 해주는 Hypervisor
[Visul Studio Code](https://code.visualstudio.com/) : 여러분의 수명을 늘려줄 똑똑한 Editor Program
[GIT](https://git-scm.com/) : 여러분의 프로젝트 관리와 협업을 도와줄 Source Control Management
[GitHub](https://github.com/) : Git을 Clound Server에 운영하는 오픈소스 덕후들의 성지