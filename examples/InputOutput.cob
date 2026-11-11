       IDENTIFICATION DIVISION.
       PROGRAM-ID. INPUTOUTPUT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 USER-NAME PIC A(20).
       PROCEDURE DIVISION.
           DISPLAY "Enter your name: ".
           ACCEPT USER-NAME.
           DISPLAY "Hello, " USER-NAME "!".
           STOP RUN.
