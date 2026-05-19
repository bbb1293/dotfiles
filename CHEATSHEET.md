# Cheatsheet

The keys you'll actually press every day. Prefix for tmux = **`Ctrl+a`**. Leader for nvim = **`<Space>`**.

> **`*` indicator (status bar & sessionx):** a window name shown as `foo*` is **alerted** — Claude rang the bell (waiting for input) or the window has been silent for ≥ 4s (likely idle/waiting). The flag clears the moment you visit that window. Idle shells will also show `*`; that's the trade-off for catching all waiting states.
>
> **Cross-session alerts:** flagged windows in *other* sessions appear on the right side of the status bar as `session:window*` in red (polled every 2s). Lets you catch Claude finishing in a session you're not currently attached to without having to open `prefix o`.

---

## tmux — daily use

### Sessions (parallel projects)

| Keys | Action |
|---|---|
| `tmux new -s NAME` | Start a project session (from shell) |
| `tmux a -t NAME` | Reattach to a project session |
| `tmux ls` | List sessions |
| `prefix o` | ⭐ **sessionx** — fuzzy switch session/window w/ previews |
| `prefix d` | **Detach** (leave running — Claude Code keeps thinking) |
| `prefix Tab` | Toggle to last session |
| `prefix $` | Rename current session |
| `prefix o` → `Alt+d` | ⭐ **Delete** highlighted session inside sessionx |
| `prefix o` → `Alt+x` | Delete highlighted window inside sessionx |
| `prefix :` `kill-session` | Kill the current session (in tmux command mode) |
| `tmux kill-session -t NAME` | Kill one session by name (from shell) |
| `tmux kill-server` | ☠️ Kill **all** sessions (use with care) |

### Windows (per Claude instance / per concern)

| Keys | Action |
|---|---|
| `prefix c` | New window (in current dir) |
| `prefix 1`…`9` | Jump to window N |
| `prefix ,` | Rename window |
| `prefix Ctrl+a` | Toggle to last window |
| `prefix &` | Kill window |

### Panes (splits in a window)

| Keys | Action |
|---|---|
| `prefix \|` | Split **vertical** (side-by-side) |
| `prefix -` | Split **horizontal** (top/bottom) |
| `Ctrl+h` `j` `k` `l` | ⭐ Move between panes (no prefix; flows into nvim) |
| `prefix H` `J` `K` `L` | Resize (repeatable) |
| `prefix =` / `+` | Equal widths / heights |
| `prefix z` | Zoom pane fullscreen (toggle) |
| `prefix x` | Kill pane |
| `prefix T` | Label current pane |

### Copy / scroll

| Keys | Action |
|---|---|
| `prefix [` | Enter copy mode (also enables scrolling) |
| `q` or `Esc` | Exit copy mode |
| `v` then move, then `y` | Select and copy → system clipboard |
| `/` `?` | Search forward / backward |
| `prefix Space` | ⭐ **thumbs** — hint-copy URLs/paths/hashes |

### Misc

| Keys | Action |
|---|---|
| `prefix r` | Reload config |
| `prefix F` | Fuzzy menu (sessions/windows/panes/commands) |
| `prefix ?` | Show ALL keybindings |
| `prefix :` | Command prompt |

---

## Neovim — daily use

### First-time

| Action | Notes |
|---|---|
| `:Tutor` | 25-min built-in vim tutorial |
| `<Space>` then wait | which-key menu — shows every binding |

### Files & search ⭐

| Keys | Action |
|---|---|
| `<Space>sf` | **Search files** (fuzzy by name) |
| `<Space>sg` | **Search by grep** (live ripgrep) |
| `<C-Space>` (in `sg`) | ⭐ **Freeze results → fuzzy-filter by path + content** (IDE-style "find in folder"). Disable macOS Ctrl+Space input-switch first. |
| `<Space>sw` | Search current word under cursor |
| `<Space>/` | Fuzzy search in **current buffer** |
| `<Space>s/` | Live grep across **open buffers** only |
| `<Space>s.` | Recently opened files |
| `<Space><Space>` | Open buffers |
| `<Space>sh` | Search help docs |
| `<Space>sk` | Search keymaps |
| `<Space>sc` | Search commands |
| `<Space>sn` | Search Neovim config files |
| `<Space>sr` | Resume last Telescope picker |

### File tree (neo-tree) ⭐

Auto-opens on the left at startup. Press `?` inside the tree to see every key.

| Keys | Action |
|---|---|
| `\` (any buffer) | Toggle / reveal current file in tree |
| `<C-h>` / `<C-l>` | Focus tree / focus editor |
| `<CR>` or `l` | Open file / expand folder |
| `h` | Collapse focused folder (no root change) |
| `<BS>` | Move tree's **root UP** to parent folder |
| `.` | Move tree's **root DOWN** to focused folder |
| `s` / `S` | Open file in **vertical** / **horizontal** split (yes, this order — neo-tree default) |
| `t` | Open in new tab |
| `R` | Refresh tree |
| `H` | Toggle hidden files (dotfiles) |
| `/` | Live-filter visible nodes (`<Esc>` clears) |
| `a` | **Add** file (end name with `/` to make a folder) |
| `A` | Add directory |
| `d` | **Delete** (confirms) |
| `r` | **Rename** |
| `m` / `c` | Move / Copy to… (prompts for destination) |
| `y` / `x` / `p` | Yank / cut / paste node |
| `Y` | Copy filename / path to system clipboard |
| `<` / `>` | Prev / next source — filesystem ↔ buffers ↔ git_status |
| `?` | Show all keymaps |

### LSP (after `:Mason` installs servers)

**Auto-installed languages:** Lua, Python (pyright + ruff), TypeScript/JavaScript, Bash/Zsh, JSON, YAML, Markdown, Go, Java\*, Protobuf

\*Java needs a system JDK — `brew install --cask temurin`.

> Note: this kickstart uses Neovim 0.11+ `gr*` convention (not `<leader>r*`).

| Keys | Action |
|---|---|
| `grd` | **G**oto **D**efinition |
| `grr` | Find **R**eferences |
| `gri` | Goto **I**mplementation |
| `grt` | Goto **T**ype Definition |
| `grn` | Re**n**ame symbol |
| `gra` | Code **A**ction |
| `gO` | Document symbols (current file) |
| `gW` | Workspace symbols (all files) |
| `K` | Hover docs under cursor |
| `[d` / `]d` | Previous / next diagnostic |
| `<Space>q` | Diagnostic quickfix list |
| `<Space>sd` | Search diagnostics (Telescope) |

### Editing

| Keys | Action |
|---|---|
| `gcc` | Toggle line comment (Neovim built-in) |
| `gc` (visual) | Toggle selection comment |
| `<Space>f` | Format buffer (conform.nvim) |
| `<C-y>` (insert) | Accept completion (blink.cmp) |
| `<C-Space>` (insert) | Trigger completion menu |
| `saiw"` | **S**urround **a**dd: word with `"` (mini.surround — NOT vim-surround's `ysiw"`) |
| `sd"` | **S**urround **d**elete: `"` |
| `sr'"` | **S**urround **r**eplace: `'` with `"` |

### Splits & navigation ⭐

| Keys | Action |
|---|---|
| `<C-h>` `j` `k` `l` | Move between splits AND tmux panes |
| `:split` / `:vsplit` (or `:sp` / `:vs`) | Open horizontal / vertical split |
| `<C-w>` then `s` / `v` | Split horizontal / vertical (no command) |
| `<C-w>` then `=` | Equalize split sizes |
| `<C-w>` then `o` | Close other splits |
| `<C-w>` then `q` or `:close` | Close current split |

### Git

**gitsigns (hunks)**
| Keys | Action |
|---|---|
| `]c` / `[c` | Next / previous hunk |
| `<Space>hs` | Stage hunk |
| `<Space>hr` | Reset hunk |
| `<Space>hp` | Preview hunk |
| `<Space>hb` | Blame line |

**fugitive + rhubarb (GitHub)**
| Keys | Action |
|---|---|
| `<Space>gb` | Open current file on GitHub (visual: with line range) |
| `<Space>gy` | Yank GitHub URL to clipboard |
| `:GBrowse` | Same as `<Space>gb`, runnable as a command |

### Misc essentials

| Keys | Action |
|---|---|
| `:w` | Save |
| `:q` / `:wq` / `:q!` | Quit / save+quit / force quit |
| `u` / `<C-r>` | Undo / redo |
| `<Esc>` or `<C-[>` | Back to normal mode |
| `<Space>th` | Toggle inlay hints (only when LSP supports them, e.g. pyright, ts_ls, lua_ls) |

---

## Tiered cheat — memorize in this order

### Tier 1 — Survival (12 keys)
*You can work without referencing anything else. Memorize these first.*

```
# tmux (5)
prefix o          ⭐ switch project (sessionx)
prefix d          detach (KEY habit — keeps Claude running)
prefix c          new window
prefix | / -      split pane vertical / horizontal
Ctrl+h/j/k/l      move between panes (and into nvim/tree)

# nvim (7)
<Space>sf         find file
<Space>sg         grep across project
grd               goto definition
<CR> or l         (in tree) open file / expand folder
:w / :q           save / quit
u                 undo
<Esc>             escape any mode
```

### Tier 2 — Fluent (+13 keys)
*You reach for these multiple times a day. Add them once Tier 1 is automatic.*

```
# tmux (+4)
prefix 1..9       jump to window N
prefix [          enter scroll/copy mode (q to exit)
prefix Space      hint-copy URL/path from screen
prefix r          reload config after editing tmux.conf

# nvim (+6)
<Space><Space>    open buffer list
\                 toggle tree / re-reveal current file
K                 hover docs under cursor
grn               rename symbol (LSP refactor)
gra               code action (LSP quick-fix)
gcc               comment line (visual: gc on selection)

# neo-tree, focused in tree (+3)
a                 add file (end name with / to make a folder)
d                 delete (asks to confirm)
r                 rename
```

### Tier 3 — Power-user (+12 keys)
*Less than daily, but huge leverage when the task calls for them.*

```
# tmux (+4)
prefix z          zoom pane to fullscreen (toggle)
prefix ,          rename current window
prefix H/J/K/L    resize pane (repeatable)
prefix Tab        toggle to last session

# nvim (+6)
grr               find references (refactor scoping)
gO                document symbols (jump within file)
<Space>sw         grep word under cursor
<Space>/          fuzzy-find within current buffer
<Space>f          format buffer (conform.nvim)
saiw" / sd"       surround add/delete: word with " (mini.surround)

# neo-tree, focused in tree (+2)
s / S             open file in horizontal / vertical split
< / >             switch source: files ↔ buffers ↔ git status
```

> Everything else lives in the tables above — reach for it when you need it, don't memorize it.

**Self-check by tier:** *"Can I work for an hour without looking at this section?"* If yes, you've internalized that tier.
