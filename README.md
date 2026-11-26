# Assembly Language Programming

A collection of assembly language programs, experiments, and projects exploring low-level programming, computer architecture, and hardware interaction.

> **Note:** I am actively working on this repository and will be adding new programs soon!

### How to Compile and Run

#### **Step 1**: Assemble the Source File

```bash
nasm -f elf64 fileName.asm -o fileName.o
```

#### **Step 2**: Link the Object File

```bash
gcc fileName.o -o fileName -no-pie
```

#### **Step 3**: Run the Executable

```bash
./fileName
```

### Basic Program

| Sr. No. | Program Name                         | Description                                                |                       Source File                        |
| :-----: | :----------------------------------- | :--------------------------------------------------------- | :------------------------------------------------------: |
|    1    | **Hello World**                      | Simple program to display hello world                      |           [View Code](./basics/helloWorld.asm)           |
|    2    | **Hello Greet**                      | Simple program to display hello greet                      |             [View Code](./basics/greet.asm)              |
|    3    | **Addition**                         | Simple program to perform Addition operation               |     [View Code](./arithmeticOperations/additon.asm)      |
|    4    | **Subtraction**                      | Simple program to perform Subtraction operation            |   [View Code](./arithmeticOperations/subtraction.asm)    |
|    5    | **Multiplication**                   | Simple program to perform Multiplication operation         |  [View Code](./arithmeticOperations/multiplication.asm)  |
|    6    | **Division**                         | Simple program to perform Division operation               |     [View Code](./arithmeticOperations/division.asm)     |
|    7    | **Arithmetic Operations**            | Simple program to perform arithmetic operations            |    [View Code](./arithmeticOperations/arithmetic.asm)    |
|    8    | **Display String**                   | Simple program to display String                           |    [View Code](./stringOperations/displayString.asm)     |
|    9    | **String Length**                    | Simple program to display String Length                    |     [View Code](./stringOperations/stringLength.asm)     |
|   10    | **String Concatenation**             | Simple program to display String Concatenation             | [View Code](./stringOperations/stringConcatenation.asm)  |
|   11    | **String Compare**                   | Simple program to display String comparison                |    [View Code](./stringOperations/stringCompare.asm)     |
|   12    | **String Palindrome**                | Simple program to display String Palindrome                |   [View Code](./stringOperations/stringPalindrome.asm)   |
|   13    | **String Reverse**                   | Simple program to display String Reverse                   |    [View Code](./stringOperations/stringReverse.asm)     |
|   14    | **String Operations**                | Simple program to display String Operations                |   [View Code](./stringOperations/stringOperations.asm)   |
|   15    | **Successive Addition**              | Simple program to display Successive Addition              |     [View Code](./successive/successiveAddition.asm)     |
|   16    | **Menu Driven Arithmetic Operation** | Simple program to display Menu Driven Arithmetic Operation |      [View Code](./menuDriven/macroArithmetic.asm)       |
|   17    | **Hexadecimal To BCD**               | Simple program to display Hedadecimal To BCD Conversion    |         [View Code](./conversions/hexToBcd.asm)          |
|   18    | **BCD To Hexadecimal**               | Simple program to display BCD To Hedadecimal Conversion    |         [View Code](./conversions/bcdToHex.asm)          |
|   19    | **Add and Shift**                    | Simple program to display Add and Shift Method             |   [View Code](./arithmeticOperations/addAndShift.asm)    |
|   20    | **Nature Quadratic**                 | Simple program to display Nature of Quadratic              | [View Code](./mathematicalProgram/natureOfQuadratic.asm) |
|   21    | **Quadratic Roots**                  | Simple program to display Quadratic Roots                  | [View Code](./mathematicalProgram/rootsOfQuadratic.asm)  |
