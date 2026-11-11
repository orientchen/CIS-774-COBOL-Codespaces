       IDENTIFICATION DIVISION.
       PROGRAM-ID. WORKWITHSTRINGS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 FIRST-NAME PIC A(10).
       01 LAST-NAME PIC A(10).
       01 FULL-NAME PIC A(25).
       PROCEDURE DIVISION.
           DISPLAY "Enter first name: ".
           ACCEPT FIRST-NAME.
           DISPLAY "Enter last name: ".
           ACCEPT LAST-NAME.
           STRING FIRST-NAME DELIMITED BY SPACE
                  " " DELIMITED BY SIZE
                  LAST-NAME DELIMITED BY SPACE
                  INTO FULL-NAME
           END-STRING.
           DISPLAY "Full name: " FULL-NAME.
           STOP RUN.
