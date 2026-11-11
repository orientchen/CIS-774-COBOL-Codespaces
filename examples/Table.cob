       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABLE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SCORES.
           05 SCORE PIC 99 OCCURS 5 TIMES.
       01 I PIC 9 VALUE 1.
       PROCEDURE DIVISION.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               DISPLAY "Enter score " I ": "
               ACCEPT SCORE(I)
           END-PERFORM.
           DISPLAY "Scores entered:".
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               DISPLAY SCORE(I)
           END-PERFORM.
           STOP RUN.
