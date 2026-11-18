# Learn COBOL with Code Examples

**CIS 774 — Programming Paradigms**

This lecture guide follows the original *Learn COBOL with code examples* handout. The code links now point to the instructor examples in this GitHub repository rather than the Canvas file downloads.

> **File organization:** `examples/` contains lecture examples; `exercises/` contains student practice exercises (`Ex_*.cob`); `project/` contains the mini-project materials.

## 1. Hello World and Program Structure

Basic COBOL program structure:

- `IDENTIFICATION DIVISION`
- `ENVIRONMENT DIVISION`
- `DATA DIVISION`
- `PROCEDURE DIVISION`

**Code:** [HelloWorld-1.cob](../examples/HelloWorld-1.cob) — a simple program that displays `Hello, world!`.

## 2. Variables and Arithmetic

- Data types in the `DATA DIVISION`
- Using `PIC` clauses
- Arithmetic verbs: `ADD`, `SUBTRACT`, `MULTIPLY`, `DIVIDE`

**Code:** [VariablesArithmetic.cob](../examples/VariablesArithmetic.cob) — uses `ADD` and `MULTIPLY`.

Example declarations:

```cobol
01 NUM1 PIC 9(3) VALUE 25.
01 NUM2 PIC 9(3) VALUE 5.
01 RESULT PIC 9(4).
```

- `01 NUM1`: `NUM1` is a top-level data item.
- `PIC 9(3)`: `NUM1` can hold three numeric digits.
- `VALUE 25`: `NUM1` starts with the value 25.
- The same declaration pattern applies to `NUM2` and `RESULT`.

### Level numbers in COBOL

COBOL uses level numbers to define the structure of data.

| Level | Meaning |
| --- | --- |
| `01` | Top-level data item, record, or group |
| `02`–`49` | Subordinate fields within a group item |
| `66` | `RENAMES` clause for an alternative grouping of existing fields |
| `77` | Standalone elementary item without subfields |
| `88` | Condition name representing a named value or set of values |

## 3. Input and Output

- Use `ACCEPT` to read input.
- Use `DISPLAY` to show output.
- Consider output formatting.

**Code:** [InputOutput.cob](../examples/InputOutput.cob)

## 4. Conditional Logic

- `IF`, `ELSE`, `END-IF`
- Comparisons such as `=`, `>`, and `<`

**Code:** [ConditionLogic.cob](../examples/ConditionLogic.cob)

## 5. Loops and Iteration

- `PERFORM` loops
- Counters and control flow

**Code:** [Loops.cob](../examples/Loops.cob)

## 6. Working with Strings

- `STRING` and `UNSTRING`
- Concatenation and splitting

**Code:** [WorkWithStrings.cob](../examples/WorkWithStrings.cob) — demonstrates `STRING`. The `UNSTRING` activity is in the student exercises.

### Understanding the `STRING` statement

```cobol
STRING FIRST-NAME DELIMITED BY SPACE
       " " DELIMITED BY SIZE
       LAST-NAME DELIMITED BY SPACE
       INTO FULL-NAME
END-STRING.
```

1. **`FIRST-NAME DELIMITED BY SPACE`**: Take the first name, stopping at the first space. This helps when the field is fixed-length and has trailing spaces.
2. **`" " DELIMITED BY SIZE`**: Insert the full one-character literal space between the names.
3. **`LAST-NAME DELIMITED BY SPACE`**: Copy the last name, stopping at a space.
4. **`INTO FULL-NAME`**: Store the combined result in `FULL-NAME`. The destination needs sufficient space.

## 7. File I/O

- Reading and writing text files
- File control and record structures

**Code:** [FileIO.cob](../examples/FileIO.cob) — writes student names into `students.txt`. Reading names is a separate student exercise.

Example student names from the handout:

```text
Alice Johnson
Bob Smith
Charlie Davis
Diana Evans
Ethan Williams
Fiona Brown
George Miller
Hannah Wilson
Ian Clark
Julia Lewis
```

## 8. Tables (Arrays)

- Defining and iterating through tables
- Using `OCCURS`

**Code:** [Table.cob](../examples/Table.cob)

## 9. Subprograms and Modular Design

- Calling subprograms using `CALL` and `USING`
- Modular program structure

**Code files:**

- [SubprogramMain.cob](../examples/SubprogramMain.cob) — the calling program
- [SQUAREPROG.cob](../examples/SQUAREPROG.cob) — the called program that calculates a square

Compile and link the programs separately from the repository root:

```bash
# 1. Compile the subprogram (fixed format)
cobc -c examples/SQUAREPROG.cob -o SQUAREPROG.o

# 2. Compile the main program (free format) and link the subprogram
cobc -x -free examples/SubprogramMain.cob SQUAREPROG.o -o SubprogramMain

# 3. Run the program
./SubprogramMain
```

The subprogram is compiled into an object file first. The next command compiles the main program, generates the executable entry point, and links the subprogram object file. The main program calls `SQUAREPROG` using `CALL ... USING`.

## Using GitHub Codespaces

From the repository root, compile a fixed-format introductory example with GnuCOBOL:

```bash
cobc -x examples/VariablesArithmetic.cob -o /tmp/variables-arithmetic
/tmp/variables-arithmetic
```

Most introductory examples use traditional fixed-format COBOL. `SubprogramMain.cob` contains a free-format source directive. Student exercise starters use free format and can be compiled with `-free`.

See the [repository README](../README.md) for Codespaces setup and more compilation instructions.

## Student Practice

After reviewing the examples, complete the [seven in-class exercises](../exercises/README.md). The starter files are in [`exercises/`](../exercises/), separate from the instructor examples in [`examples/`](../examples/).

## Mini Project

For Assignment 5, use the [ProgramSkeleton.cob](../project/ProgramSkeleton.cob) starter in the [`project/`](../project/) folder along with the project instructions.
