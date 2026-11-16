# Assignment 5: COBOL Mini Project

## Mini Project: Simple Banking System in COBOL

### Objective

Implement a small console-based banking system in COBOL that:

- Creates a new account
- Lets users deposit or withdraw money
- Displays account balance
- Saves all data to a file for persistence

> **Assignment requirement:** In addition to the procedures provided in the starter, you must implement withdrawals. The starter does not yet contain a withdrawal procedure or menu option; you must add both.

## Instructions

1. A partially complete COBOL program, [`SimpleBankSystemInCom.cob`](SimpleBankSystemInCom.cob), is provided.
2. The main menu and program structure are already implemented.
3. Complete the following procedures:
   - `CREATE-ACCOUNT-PARA`
   - `DEPOSIT-MONEY-PARA`
   - `DISPLAY-BALANCE-PARA`
   - `WITHDRAW-MONEY-PARA` (**add this new procedure**)
4. Step-by-step guidance is included in comments for the three existing incomplete procedures. Follow those instructions, and design and implement `WITHDRAW-MONEY-PARA` yourself. Update the main menu to include a withdrawal option and adjust the exit option accordingly.
5. Use proper COBOL file handling for storing and retrieving account records.
6. Handle invalid inputs gracefully, including invalid account numbers, nonpositive transaction amounts, and withdrawal amounts exceeding the available balance.

The [`ProgramSkeleton.cob`](ProgramSkeleton.cob) file is an **optional general COBOL program template**. For this banking assignment, start from **`SimpleBankSystemInCom.cob`**, which already contains the banking menu and incomplete procedures.

### Running your program in GitHub Codespaces

Open a terminal in the repository root. Once you have saved your completed solution as `SimpleBankSystem.cob` in the `project/` folder, compile and run it with:

```bash
cobc -x project/SimpleBankSystem.cob -o /tmp/simple-bank
/tmp/simple-bank
```

The starter file is named `SimpleBankSystemInCom.cob`; use that filename instead if you have not renamed your working copy. Run the program from the repository root so that `bankdata.txt` is created there.

## Test Plan (Required)

Perform **all nine tests** below. The original seven scenarios are retained, with two additional withdrawal scenarios. Include clearly labeled screenshots showing the program output and the test results in your submission.

### 1. Start the program

**Action:** Run your compiled banking program.

**Expected result:** After adding withdrawal functionality, your completed program should display a menu such as:

```text
------------------------
Simple Banking System
1. Create New Account
2. Deposit Money
3. Withdraw Money
4. Display Balance
5. Exit
Enter option (1-5):
```

The supplied starter initially has four options; you must add the withdrawal option and update the menu logic.

### 2. Create New Account

**Action:**

1. Select option `1`.
2. Enter account number `10001`.
3. Enter account holder name `Alice`.
4. Enter initial balance `500.00`.

**Expected result:**

```text
Account created successfully.
```

**Check:** Open `bankdata.txt` in a text editor. Verify that Alice's account record is present with a balance of `500.00`.

### 3. Deposit Money

**Action:**

1. Select option `2`.
2. Enter account number `10001`.
3. Enter deposit amount `250.00`.

**Expected result:**

```text
Deposit successful. New balance: 750.00
```

**Check:** Open `bankdata.txt` and verify that Alice's balance has been updated to `750.00`.

### 4. Display Account Balance

**Action:**

1. Select the **Display Balance** option.
2. Enter account number `10001`.

**Expected result:**

```text
Account balance: 750.00
```

### 5. Non-Existent Account Handling

**Action:**

1. Select **Deposit Money** or **Display Balance**.
2. Enter account number `99999`, which does not exist.

**Expected result:**

```text
Account not found.
```

### 6. Multiple Accounts

**Action:**

1. Create another account: account number `10002`, name `Bob`, initial balance `1000.00`.
2. Deposit `500.00` into Bob's account.
3. Check both Alice's and Bob's balances.

**Expected result:**

```text
Alice balance: 750.00
Bob balance: 1500.00
```

These are the expected balances; your program may display each account separately.

**Check:** Verify that `bankdata.txt` contains both account records with the correct balances.

### 7. Withdraw Money (New Required Test)

**Action:**

1. Select **Withdraw Money**.
2. Enter account number `10001` (Alice).
3. Enter withdrawal amount `100.00`.

**Expected result:** The withdrawal succeeds, and Alice's balance changes from `750.00` to `650.00`.

```text
Withdrawal successful. New balance: 650.00
```

**Check:** Verify that the updated balance is saved in `bankdata.txt`. Exit and restart the program, then display Alice's balance to confirm persistence.

### 8. Withdrawal Error Handling (New Required Test)

**Action and expected result:**

- Try withdrawing `2000.00` from Bob's account (`10002`, balance `1500.00`). The program must reject the transaction for insufficient funds without changing the balance.
- Try withdrawing from nonexistent account `99999`. The program must display `Account not found.`
- Try a withdrawal amount of `0.00` or a negative amount. The program must reject it without modifying the account.

**Check:** Verify that all account balances remain unchanged after rejected transactions.

### 9. Exit and Menu Navigation

**Action:**

1. Test all menu options, including withdrawal, and verify that the program returns to the main menu after each operation.
2. Select the **Exit** option (option `5` in the updated example menu).

**Expected result:**

```text
Exiting program...
```

The program then terminates.

## Submission Requirements

Submit:

1. **Completed COBOL source file:** A working `.cob` file with all required procedures implemented.
2. **Word document:** Clearly labeled screenshots demonstrating the program running and the results of all required tests above.

## Grading Rubric

| Criterion | Weight |
| --- | ---: |
| Correctness | 80% |
| Comments | 10% |
| Style | 10% |
| **Total** | **100%** |

## Notes

- Pay attention to COBOL file operations (`OPEN`, `READ`, `WRITE`, `CLOSE`) and file status checks.
- Follow proper COBOL formatting and conventions.
- Ensure that existing accounts remain intact when a new account is created or a deposit is made.

### GnuCOBOL file-handling clarification

The supplied starter uses `ORGANIZATION IS LINE SEQUENTIAL`, but its deposit comments suggest `OPEN I-O` and `REWRITE`. These operations are **not a generally supported way to update line-sequential records in GnuCOBOL**. For deposit and withdrawal updates, one approach is to read the existing records, write the updated records to a temporary file, and then replace the original file. Another approach is to redesign the file organization appropriately.

Similarly, `OPEN OUTPUT` on an existing file overwrites its contents. Use a file-creation/append strategy that preserves previously created accounts.

These notes clarify implementation details; the required banking behavior includes account creation, deposits, withdrawals, balance inquiries, and persistence.
