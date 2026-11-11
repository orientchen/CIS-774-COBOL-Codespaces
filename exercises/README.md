# COBOL In-Class Exercises

Start with the matching file in `examples/`, or edit the corresponding student starter here. The original exercises ask students to submit **seven `.cob` files** and a Word document with labeled screenshots of their program output.

1. `Ex_VariablesArithmetic.cob`: ask for two numbers; display their sum and difference.
2. `Ex_InputOutput.cob`: ask for an age and display “You are 25 years old.” (with the entered age).
3. `Ex_ConditionLogic.cob`: classify an age as child (<13), teen (13–17), or adult (18+).
4. `Ex_Loops.cob`: ask for N; display N's multiplication table for 1–10.
5. `Ex_WorkWithStrings.cob`: ask for a two-word sentence; use `UNSTRING` and display both words.
6. `Ex_FileIO.cob`: read every name from `students.txt` and display it. Run `examples/FileIO.cob` first if it creates the input file.
7. `Ex_Table.cob`: compute and display the average of entered scores.

Use GnuCOBOL free format for these starter files. Example:

```bash
cobc -x -free exercises/Ex_Loops.cob -o /tmp/ex-loops
/tmp/ex-loops
```

**Submission:** seven working `.cob` files and one Word document with clearly labeled output screenshots. Avoid reserved words for variable names. Compile and test before submitting.
