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

| Sr. No. | Program Name    | Description                           |             Source File             |
| :-----: | :-------------- | :------------------------------------ | :---------------------------------: |
|    1    | **Hello World** | Simple program to display hello world | [View Code](./Basic/helloWorld.asm) |
