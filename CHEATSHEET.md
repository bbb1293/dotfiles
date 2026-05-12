# Cheatsheet

The keys you'll actually press every day. Prefix for tmux = **`Ctrl+a`**. Leader for nvim = **`<Space>`**.

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
| `\` (backslash) | Reveal current file in neo-tree |
| `:Neotree toggle` | Toggle file tree |

### LSP (after `:Mason` installs servers)

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
| `ysiw"` | Surround word with `"` (mini.surround) |
| `ds"` | Delete surrounding `"` (mini.surround) |
| `cs'"` | Change surrounding `'` to `"` (mini.surround) |

### Splits & navigation ⭐

| Keys | Action |
|---|---|
| `<C-h>` `j` `k` `l` | Move between splits AND tmux panes |
| `:split` / `:vsplit` (or `:sp` / `:vs`) | Open horizontal / vertical split |
| `<C-w>` then `s` / `v` | Split horizontal / vertical (no command) |
| `<C-w>` then `=` | Equalize split sizes |
| `<C-w>` then `o` | Close other splits |
| `<C-w>` then `q` or `:close` | Close current split |

### Git (gitsigns)

| Keys | Action |
|---|---|
| `]c` / `[c` | Next / previous hunk |
| `<Space>hs` | Stage hunk |
| `<Space>hr` | Reset hunk |
| `<Space>hp` | Preview hunk |
| `<Space>hb` | Blame line |

### Misc essentials

| Keys | Action |
|---|---|
| `:w` | Save |
| `:q` / `:wq` / `:q!` | Quit / save+quit / force quit |
| `u` / `<C-r>` | Undo / redo |
| `<Esc>` or `<C-[>` | Back to normal mode |
| `<Space>th` | Toggle inlay hints |

---

## The 20 keys that cover 80% of usage

```
# tmux
prefix o          ⭐ switch project (sessionx)
prefix d          detach (KEY habit — don't kill the terminal)
prefix c          new window
prefix 1..9       jump window
prefix | / -      split
Ctrl+h/j/k/l      move between everything
prefix [          scroll/copy mode  (q to exit)
prefix Space      hint-copy URL/path
prefix r          reload config

# nvim
<Space>sf         find file
<Space>sg         grep across project
<Space><Space>    open buffers
\                 reveal file in neo-tree
grd               go to definition
K                 docs under cursor
grn               rename symbol
gra               code action
gcc               comment line
:w / :q           save / quit
u                 undo
<Esc>             escape any mode
```

Memorize these first. Everything else can come later.
