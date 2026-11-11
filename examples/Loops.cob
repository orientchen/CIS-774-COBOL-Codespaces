       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOOPS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 I PIC 9 VALUE 1.
       PROCEDURE DIVISION.
           PERFORM UNTIL I > 5
               DISPLAY "Count: " I
               ADD 1 TO I
           END-PERFORM.
           STOP RUN.
