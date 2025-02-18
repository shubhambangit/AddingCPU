# Adding CPU Lab

This project demonstrates the design and implementation of an **AddingCPU**, using Verilog. The CPU is capable of executing basic instructions such as Load, Store, Add, and Jump. The project is designed to illustrate the principles of digital design, including datapath and control unit partitioning, finite state machines, and memory interfacing.

## Introduction

The **AddingCPU** is a CPU model forming an adding architecture. It reads instructions from memory, decodes them, and executes operations such as loading data into the accumulator (AC), storing data from AC to memory, adding data to AC, and jumping to a specified memory address. This project is designed to provide a hands-on understanding of CPU design, Verilog coding, and testbench development.

## Features

- **Von Neumann Architecture**: The CPU uses a single memory for both instructions and data.
- **Basic Instruction Set**: Supports Load, Store, Add, and Jump instructions.
- **Datapath and Control Unit**: The design is partitioned into a datapath (registers, ALU, etc.) and a control unit (finite state machine).
- **Verilog Implementation**: The entire CPU is implemented in Verilog, with separate modules for datapath, control unit, and memory.
- **Testbench**: Includes a comprehensive testbench for verifying the functionality of the CPU.

## Design Overview

The **AddingCPU** consists of the following key components:

1. **Datapath**:
   - **Accumulator (AC)**: Holds the current data for operations.
   - **Program Counter (PC)**: Keeps track of the memory address of the next instruction.
   - **Instruction Register (IR)**: Stores the current instruction being executed.
   - **Arithmetic Logic Unit (ALU)**: Performs addition and data passing operations.

2. **Control Unit**:
   - A finite state machine (FSM) that controls the flow of data and operations based on the current instruction.

3. **Memory**:
   - A simple memory model that stores instructions and data. The memory is file-based, allowing instructions to be loaded from an external file.

## Verilog Modules

The project is divided into several Verilog modules:

- **AC (Accumulator)**: A register that holds the current data.
- **PC (Program Counter)**: A counter that keeps track of the next instruction address.
- **IR (Instruction Register)**: A register that stores the current instruction.
- **ALU (Arithmetic Logic Unit)**: Performs addition and data passing.
- **DataPath**: Combines the datapath components (AC, PC, IR, ALU) and handles data flow.
- **Controller**: Implements the finite state machine that controls the CPU operations.
- **AddingCPU**: The top-level module that instantiates the DataPath and Controller.

## Testbench

The testbench for the **AddingCPU** includes:

- **Memory Modeling**: A file-based memory model that reads and writes data from/to external files.
- **Instruction Conversion**: A task that converts instruction mnemonics from a text file into binary format for the CPU to execute.
- **Memory Read/Write Operations**: The testbench handles memory read and write operations, ensuring that the CPU interacts correctly with memory.

