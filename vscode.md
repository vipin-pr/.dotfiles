#### **VSCode Settings (ESC Key Mapped to JJ)**

1.  Open **VSCode Settings** (`Ctrl + ,`).
    
2.  Search for **"vim.insertModeKeyBindings"**.
    
3.  Click **"Edit in settings.json"**.
    
4.  Add the following configuration inside the JSON file
    
    ```json
    "vim.insertModeKeyBindings": [
        {
            "before": ["j", "j"],
            "after": ["<Esc>"]
        }
    ]
    
    ```
    
5.  .Save the file and restart VSCode
