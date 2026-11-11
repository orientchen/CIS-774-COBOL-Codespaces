# Enable COBOL Syntax Highlighting in GitHub Codespaces

These instructions apply to the **CIS-774-COBOL-Codespaces** repository using the **COBOL extension by Bitlang** in VS Code (browser-based GitHub Codespaces).

## Select the COBOL language mode

1. In the Explorer, open a COBOL source file, for example `examples/FileIO.cob`.
2. **Click inside the source-code editor.** Do not leave the README preview or terminal active.
3. Open the Command Palette with **Ctrl+Shift+P**, or use the upper-left menu and select **View → Command Palette**.
4. Search for **Change Language Mode** and select it.
5. In the **Select Language Mode** list, choose **BITLANG-COBOL (BITLANG-COBOL)**. This is the mode provided by the installed Bitlang extension.
6. Confirm that COBOL keywords such as `IDENTIFICATION`, `DIVISION`, `PERFORM`, and `DISPLAY` now have syntax highlighting.

**Alternative:** Click the language-mode indicator in the lower-right status bar and select **BITLANG-COBOL**.

If you see **“No text editor active at this time,”** open `FileIO.cob` again and click inside its editor before repeating the steps.

## Make the language mode automatic for all students

To associate COBOL files with the Bitlang extension automatically, create a file named `.vscode/settings.json` in the repository with the following content:

```json
{
  "files.associations": {
    "*.cob": "BITLANG-COBOL",
    "*.cbl": "BITLANG-COBOL",
    "*.cpy": "BITLANG-COBOL"
  }
}
```

In Codespaces:

1. In Explorer, create a folder named `.vscode` at the repository root if it does not already exist.
2. Create `settings.json` inside `.vscode` and paste the configuration above.
3. Save the file, then reopen a `.cob` source file to verify the highlighting.
4. In Source Control, commit and push `.vscode/settings.json` to GitHub so new student Codespaces inherit the setting.

**Note:** The exact language identifier is shown in the VS Code language-mode list. If the association does not work, use **Configure File Association for '.cob'...** from that menu and select **BITLANG-COBOL**; VS Code can write the association for you.

## Troubleshooting

- **All code is still black:** Check that the current language mode is **BITLANG-COBOL**, not **Plain Text**.
- **BITLANG-COBOL is missing:** Open Extensions (**Ctrl+Shift+X**), find **COBOL** by **Bitlang**, and confirm that it is installed and enabled in the Codespace.
- **Extension is enabled but highlighting does not update:** Open the Command Palette, run **Developer: Reload Window**, then reopen the source file.
- **Compilation versus highlighting:** Bitlang provides editor assistance. **GnuCOBOL** compiles and runs the programs independently, using `cobc`.

Example compilation from the repository root:

```bash
cobc -x examples/VariablesArithmetic.cob -o variables
./variables
```
