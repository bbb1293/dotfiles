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
| `<Space>?` | Recently opened files |
| `<Space><Space>` | Open buffers |
| `<Space>sh` | Search help docs |
| `<Space>sk` | Search keymaps |
| `<Space>e` | Toggle file tree (neo-tree) |

### LSP (after `:Mason` installs servers)

| Keys | Action |
|---|---|
| `gd` | Go to definition |
| `gr` | Find references |
| `K` | Show docs under cursor |
| `<Space>rn` | Rename symbol |
| `<Space>ca` | Code action |
| `<Space>ds` | Document symbols |
| `[d` / `]d` | Previous / next diagnostic |
| `<Space>q` | Diagnostic quickfix list |

### Editing

| Keys | Action |
|---|---|
| `gcc` | Toggle line comment |
| `gc` | Toggle selection comment (visual mode) |
| `<Space>f` | Format buffer |
| `<C-/>` (insert) | Trigger completion |
| `<C-y>` (insert) | Accept completion |

### Splits & navigation ⭐

| Keys | Action |
|---|---|
| `<C-h>` `j` `k` `l` | Move between splits AND tmux panes |
| `:split` / `:vsplit` | Open horizontal / vertical split |
| `<Space>w` then `s`/`v` | Same, via which-key |
| `<C-w>` then `=` | Equalize split sizes |
| `<C-w>` then `o` | Close other splits |

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
<Space>sg         grep
<Space>e          file tree
gd                go to definition
K                 docs under cursor
<Space>rn         rename
gcc               comment line
:w / :q           save / quit
u                 undo
<Esc>             escape any mode
```

Memorize these first. Everything else can come later.
