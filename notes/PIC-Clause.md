# COBOL PIC Clause (PICTURE)

The `PIC` clause defines a variable's **type**, **length**, and **format**, including decimal positions, signs, and display editing.

## Syntax

```cobol
01 VARIABLE-NAME PIC picture-string [VALUE initial-value].
```

- `01` — level number for a top-level data item
- `VARIABLE-NAME` — variable identifier
- `PIC picture-string` — type, size, and representation
- `VALUE` — optional initial value

## Common PIC characters

| Character | Meaning | Example |
|---|---|---|
| `9` | Numeric digit | `PIC 9(3)` — three digits (`000`–`999`) |
| `V` | Implied decimal point (no stored decimal dot) | `PIC 9(3)V99` — three integer and two fractional digits |
| `X` | Alphanumeric character | `PIC X(10)` — ten characters |
| `A` | Alphabetic character | `PIC A(5)` — five letters |
| `S` | Signed numeric value | `PIC S9(4)` — signed four-digit number |
| `Z` | Suppress leading zeros in edited output | `PIC Z(5)` |
| `.` | Display a decimal point in edited output | `PIC 99.99` |

## Numeric examples

```cobol
01 AGE     PIC 9(3)     VALUE 20.
01 SALARY  PIC 9(5)V99  VALUE 12345.67.
01 BALANCE PIC S9(6)V99 VALUE +1000.50.
```

- `AGE` holds three digits (e.g., `020`).
- `SALARY` holds five integer digits and two fractional digits; `V` is an implied decimal point.
- `BALANCE` holds a signed number with six integer digits and two fractional digits.

## Alphabetic and alphanumeric examples

```cobol
01 FIRST-NAME PIC A(10) VALUE "ALICE".
01 LAST-NAME  PIC X(15) VALUE "JOHNSON".
```

- `A(10)` specifies up to ten alphabetic characters.
- `X(15)` allows up to fifteen alphanumeric characters (including symbols).

## Editing and display

Use an edited picture to control how a number appears when displayed:

```cobol
01 FORMATTED-BALANCE PIC ZZZ,ZZ9.99 VALUE 12345.67.
```

Displayed value:

```text
12,345.67
```

Here `Z` suppresses leading zeros, the comma groups digits, and the period is displayed as the decimal point.

> **Note:** A `V` marks an *implied* decimal position; an actual decimal point appears in displayed output only when the picture includes an editing period (`.`).
