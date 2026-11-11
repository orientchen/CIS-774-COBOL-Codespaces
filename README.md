# CIS 774 — COBOL Programming (GitHub Codespaces)

This repository contains lecture materials, GnuCOBOL examples, seven in-class exercises, and a Simple Banking System mini-project.

## Start in Codespaces

1. Upload this repository to GitHub (including the hidden `.devcontainer` folder).
2. On GitHub select **Code → Codespaces → Create codespace on main**.
3. Wait for container creation. GnuCOBOL is installed by the Dockerfile; VS Code requests the **COBOL extension by Bitlang** (`bitlang.cobol`).
4. Open a terminal and run `cobc --version`.

No separate Windows or macOS compiler installation is needed **inside Codespaces**.

## Compile and run

Most original introductory examples use **fixed-format** COBOL (the traditional column layout). Compile them with the default fixed-format setting:

```bash
cobc -x examples/VariablesArithmetic.cob -o /tmp/variables-arithmetic
/tmp/variables-arithmetic
```

To compile a program explicitly in **free format**, use `-free` (or include `>>SOURCE FORMAT FREE` at the start of the source):

```bash
cobc -x -free exercises/Ex_VariablesArithmetic.cob -o /tmp/ex1
/tmp/ex1
```

Subprogram example (source contains a free-format directive):

```bash
cobc -x examples/SubprogramMain.cob examples/SQUAREPROG.cob -o /tmp/subprogram
/tmp/subprogram
```

If a compiler reports unexpected syntax errors, first check whether the file is fixed-format or free-format. **The Bitlang extension provides editing support; GnuCOBOL (`cobc`) performs compilation.**

## Repository contents

- `examples/` — original instructor-provided examples (fixed-format introductory programs and free-format examples)
- `exercises/` — seven student starter files, with TODO prompts; see `exercises/README.md`
- `project/` — original partially completed Simple Banking System and instructions
- `lectures/` — supplied COBOL lecture presentation
- `setup-guides/` — supplied local Windows/macOS installation guides (not required in Codespaces)
- `.devcontainer/` — automatic compiler and VS Code extension setup

## Notes for instructors

The banking starter is preserved as supplied. Its instructions propose `REWRITE` on a `LINE SEQUENTIAL` file; GnuCOBOL does not generally support in-place record rewriting for line-sequential files. Students will need a valid update strategy (for example, write updated records to a temporary file and replace the original). Review this point before assigning the project.

Generated `bankdata.txt` and `students.txt` are ignored by Git; students' data remains in their Codespaces unless separately saved. Do not store real banking or personal data in this teaching exercise.

Coursera supplementary resource: https://www.coursera.org/learn/cobol-programming-vscode
