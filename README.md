# Tmux Shortcuts Documentation

## Prefix Key
- `Ctrl+k` → New tmux prefix (replaces `Ctrl+b`)

## Windows
- `Ctrl+k + j` → Next window  
- `Ctrl+k + h` → Previous window  
- `Ctrl+k + n` → New window  
- `Ctrl+k + w` → List all windows  
- `Ctrl+k + f` → Find window  
- `Ctrl+k + r` → Rename current window  
- `Ctrl+k + e` → Close current window (confirmation y/n)  

### Optional Direct Window Selection
- `Ctrl+0` → Switch to window 0  
- `Ctrl+1` → Switch to window 1  
- ... up to `Ctrl+9`

---

## Panes
- `Ctrl+k + -` → Split pane horizontally (top/bottom)  
- `Ctrl+k + |` → Split pane vertically (left/right)  
- `Alt + ← / ↓ / ↑ / →` → Move between panes  
- `Ctrl+k + y` → Toggle sync panes  
- `Ctrl+k + z` → Toggle zoom for current pane  

## Pane Resizing (Custom Keys)

- `Ctrl+k + <` → Resize pane left  
- `Ctrl+k + >` → Resize pane right  
- `Ctrl+k + m` → Resize pane up  
- `Ctrl+k + /` → Resize pane down  

*Holding the key keeps resizing (repeatable).*
---

## Swap Windows
- `Ctrl+Shift+Left` → Swap current window with previous  
- `Ctrl+Shift+Right` → Swap current window with next  

---

## Navigation
- `Ctrl+j` → Next window (no prefix needed)  
- `Ctrl+k + h` → Previous window  

---

## Copy Mode & Search
- `Ctrl+f` → Enter copy mode and search   

---

## Reload Config
- `Ctrl+o` → Reload `.tmux.conf`  

---

## Mouse & Scrolling
- Mouse support enabled (`set -g mouse on`)  
- Scroll in panes using mouse wheel  
- Click to select and copy text (clipboard integration optional)  

---

## Clipboard
- System clipboard integration enabled (`set-clipboard on`)  

---

## Status Bar
- Position: bottom  
- Background color: `colour233`  
- Foreground color: `white`  
- Current window style: black text on green background  
- Left status: session name (`#S`)  
- Right status: date and time (`%d.%m. %H:%M`)  

---

## Notes
- History limit: 40000 lines  
- 256-color support enabled  
- Alt + arrow keys and Vim-like keys improve pane navigation  
- Key bindings override some tmux defaults (e.g., `m` now resizes pane up instead of mark-pane)  
