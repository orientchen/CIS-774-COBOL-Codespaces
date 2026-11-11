# Mini-project: Simple Banking System in COBOL

Complete the provided `SimpleBankSystemInCom.cob` starter. The existing main menu is supplied; implement:

- `CREATE-ACCOUNT-PARA`
- `DEPOSIT-MONEY-PARA`
- `DISPLAY-BALANCE-PARA`

Required tests: create account 10001 (Alice, 500.00); deposit 250.00 and confirm 750.00; look up 10001; look up nonexistent 99999; create 10002 (Bob, 1000.00), deposit 500.00 and confirm 1500.00; verify menu navigation and exit. Include a `.cob` submission and a Word document with screenshots of each test.

Grading: correctness 80%, comments 10%, style 10%.

Compile the original starter:

```bash
cobc -x project/SimpleBankSystemInCom.cob -o /tmp/simple-bank
/tmp/simple-bank
```

**Important implementation note:** The original starter defines `BANK-FILE` as `ORGANIZATION IS LINE SEQUENTIAL`, but its comments suggest opening it `I-O` and using `REWRITE`. This is not a supported general update method for line-sequential files in GnuCOBOL. Implement deposit updates by reading records and writing an updated temporary file, then replacing the original file, or use a compatible file organization with appropriate redesign. Creating an account with `OPEN OUTPUT` would overwrite existing accounts; use an append strategy after initial file creation. Preserve the existing starter for reference, and make the needed implementation changes in your completed project.
