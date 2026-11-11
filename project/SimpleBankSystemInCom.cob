>>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. SIMPLEBANKSYSTEM.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
    SELECT BANK-FILE ASSIGN TO "bankdata.txt"
        ORGANIZATION IS LINE SEQUENTIAL
        FILE STATUS WS-FILE-STATUS.

DATA DIVISION.
FILE SECTION.
FD BANK-FILE.
01 ACCOUNT-RECORD.
   05 ACCT-NUMBER  PIC 9(5).
   05 ACCT-NAME    PIC A(20).
   05 ACCT-BALANCE PIC 9(6)V99.

WORKING-STORAGE SECTION.
01 WS-OPTION      PIC 9.
01 FOUND          PIC X VALUE 'N'.
01 TEMP-AMOUNT    PIC 9(6)V99.
01 EOF-FLAG       PIC X VALUE 'N'.
01 WS-FILE-STATUS PIC XX.

PROCEDURE DIVISION.
    PERFORM MAIN-MENU
    STOP RUN.

*>======================
*> Create New Account (to be implemented)
*>======================
CREATE-ACCOUNT-PARA.
    DISPLAY ">>> CREATE-ACCOUNT-PARA function is not implemented yet."
    DISPLAY "You need to implement creating a new account."

    *> Steps to implement:
    *> 1. Prompt the user for account number, account holder name, and initial balance.
    *> 2. Open the BANK-FILE in OUTPUT mode (creating the file if it doesn't exist).
    *> 3. Write the new account record to the file.
    *> 4. Close the file.
    *> 5. Display a success message.
    .

*>======================
*> Deposit Money (to be implemented)
*>======================
DEPOSIT-MONEY-PARA.
    DISPLAY ">>> DEPOSIT-MONEY-PARA function is not implemented yet."
    DISPLAY "You need to implement depositing money to an account."

    *> Steps to implement:
    *> 1. Prompt the user for the account number.
    *> 2. Open BANK-FILE in I-O mode.
    *> 3. Read each account record until the account number matches.
    *> 4. If found, prompt for deposit amount and add it to ACCT-BALANCE.
    *> 5. Rewrite the updated record back to the file.
    *> 6. Close the file.
    *> 7. Display new balance or "Account not found" if not found.
    .

*>======================
*> Display Account Balance (to be implemented)
*>======================
DISPLAY-BALANCE-PARA.
    DISPLAY ">>> DISPLAY-BALANCE-PARA function is not implemented yet."
    DISPLAY "You need to implement displaying account balance."

    *> Steps to implement:
    *> 1. Prompt the user for the account number.
    *> 2. Open BANK-FILE in INPUT mode.
    *> 3. Read each record until the account number matches or end-of-file.
    *> 4. If found, display the account balance.
    *> 5. Close the file.
    *> 6. Display "Account not found" if no matching record exists.
    .

*>======================
*> Main Menu
*>======================
MAIN-MENU.
    PERFORM UNTIL WS-OPTION = 4
        DISPLAY "------------------------"
        DISPLAY "Simple Banking System"
        DISPLAY "1. Create New Account"
        DISPLAY "2. Deposit Money"
        DISPLAY "3. Display Balance"
        DISPLAY "4. Exit"
        DISPLAY "Enter option (1-4): "
        ACCEPT WS-OPTION
        EVALUATE WS-OPTION
            WHEN 1
                PERFORM CREATE-ACCOUNT-PARA
            WHEN 2
                PERFORM DEPOSIT-MONEY-PARA
            WHEN 3
                PERFORM DISPLAY-BALANCE-PARA
            WHEN 4
                DISPLAY "Exiting program..."
            WHEN OTHER
                DISPLAY "Invalid option."
        END-EVALUATE
    END-PERFORM.
STOP RUN.
