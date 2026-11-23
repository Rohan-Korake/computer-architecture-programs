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
ld fileName.o -o fileName
```

#### **Step 3**: Run the Executable

```bash
./fileName
```

### Basic Program

| Sr. No. | Program Name             | Description                                        |                               Source File                               |
| :-----: | :----------------------- | :------------------------------------------------- | :---------------------------------------------------------------------: |
|    1    | **Hello World**          | Simple program to display hello world              |                      [View Code](./helloWorld.asm)                      |
|    2    | **Addition**             | Simple program to perform Addition operation       |             [View Code](./arithmeticOperations/additon.asm)             |
|    3    | **Subtraction**          | Simple program to perform Subtraction operation    |           [View Code](./arithmeticOperations/subtraction.asm)           |
|    4    | **Multiplication**       | Simple program to perform Multiplication operation |         [View Code](./arithmeticOperations/multiplication.asm)          |
|    5    | **Division**             | Simple program to perform Division operation       |            [View Code](./arithmeticOperations/division.asm)             |
|    6    | **Arithmetic Operation** | Simple program to perform arithmetic operation     |           [View Code](./arithmeticOperations/arithmetic.asm)            |
|    7    | **Display String**       | Simple program to display string                   |            [View Code](./stringOperations/displayString.asm)            |
|    8    | **String Length**        | Simple program to display string Length            |            [View Code](./stringOperations/stringLength.asm)             |
|    9    | **String Concatenation** | Simple program to display string Concatenation     | [View Code](./stringOperations/stringOperations/tringConcatenation.asm) |
|   10    | **String Compare**       | Simple program to display string comparison        |            [View Code](./stringOperations/stringCompare.asm)            |
|   11    | **String Palindrome**    | Simple program to display string Palindrome        |          [View Code](./stringOperations/stringPalindrome.asm)           |
