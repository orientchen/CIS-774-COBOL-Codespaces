>>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. YourProgramName.

ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
* Optional settings or file environment setup go here.

DATA DIVISION.
FILE SECTION.
* Define files here if needed.
* Example:
* FD INPUT-FILE.
* 01 INPUT-RECORD PIC X(80).

WORKING-STORAGE SECTION.
* Define variables here.
01 WS-MESSAGE       PIC A(50) VALUE "Hello COBOL!".
01 WS-COUNTER       PIC 9(3) VALUE 0.

PROCEDURE DIVISION.
MAIN-PARA.
    DISPLAY "Program started.".
    PERFORM INITIALIZE-PARA.
    PERFORM PROCESS-PARA.
    PERFORM TERMINATE-PARA.
    STOP RUN.

INITIALIZE-PARA.
    DISPLAY "Initializing...".
    * Add setup code here.
    EXIT.

PROCESS-PARA.
    DISPLAY "Processing...".
    * Add your main logic here.
    EXIT.

TERMINATE-PARA.
    DISPLAY "Program ended.".
    * Add cleanup here.
    EXIT.
