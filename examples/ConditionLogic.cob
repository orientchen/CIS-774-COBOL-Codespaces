       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDITIONLOGIC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 AGE PIC 99.
       PROCEDURE DIVISION.
           DISPLAY "Enter your age: ".
           ACCEPT AGE.
           IF AGE >= 18
               DISPLAY "You are an adult."
           ELSE
               DISPLAY "You are a minor."
           END-IF.
           STOP RUN.
