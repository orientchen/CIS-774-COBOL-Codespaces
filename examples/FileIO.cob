       IDENTIFICATION DIVISION.
       PROGRAM-ID. FILEIO.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT STUDENT-FILE ASSIGN TO "students.txt"
               ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD STUDENT-FILE.
       01 STUDENT-RECORD PIC A(50).
       WORKING-STORAGE SECTION.
       01 STUDENT-NAME PIC A(30).
       PROCEDURE DIVISION.
           OPEN OUTPUT STUDENT-FILE.
           DISPLAY "Enter student name (or 'END' to quit): ".
           ACCEPT STUDENT-NAME.
           PERFORM UNTIL STUDENT-NAME = "END"
               MOVE STUDENT-NAME TO STUDENT-RECORD
               WRITE STUDENT-RECORD
               DISPLAY "Enter student name (or 'END' to quit): "
               ACCEPT STUDENT-NAME
           END-PERFORM.
           CLOSE STUDENT-FILE.
           DISPLAY "Data saved to students.txt".
           STOP RUN.
