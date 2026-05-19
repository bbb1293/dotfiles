# dotfiles

Personal config for **tmux** + **Neovim**, optimized for parallel Claude Code sessions.

- `tmux.conf` — tmux 3.6+ with 7 plugins (sessionx, resurrect/continuum, thumbs, …); status bar surfaces `*` alerts on idle/bell windows across all sessions
- `scripts/` — small shell helpers invoked from `tmux.conf` (sessionx patch, cross-session alert poller)
- `nvim/` — Neovim 0.12+ fork of [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) with vim-tmux-navigator

See [CHEATSHEET.md](./CHEATSHEET.md) for the keys you'll actually use day-to-day.

---

## Install on a fresh Mac

### 1. Prerequisites (Homebrew)

```bash
brew install tmux neovim fzf bat ripgrep fd zoxide rust tree-sitter
npm install -g tree-sitter-cli
```

### 2. Clone this repo

```bash
git clone https://github.com/bbb1293/dotfiles ~/dotfiles
```

### 3. Run the installer

```bash
~/dotfiles/install.sh
```

This symlinks:
- `~/.tmux.conf` → `~/dotfiles/tmux.conf`
- `~/.config/nvim` → `~/dotfiles/nvim`

### 4. Install tmux plugins (TPM)

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins
# Build tmux-thumbs binary (Apple Silicon: no prebuilt arm64 release)
cd ~/.tmux/plugins/tmux-thumbs && cargo build --release
```

### 5. Install Neovim plugins

First launch of `nvim` auto-installs everything:
- All plugins via `vim.pack.add` (kickstart base + custom)
- Default LSPs via `mason-tool-installer`:
  `pyright`, `ruff`, `ts_ls`, `bashls`, `jsonls`, `yamlls`, `marksman`, `lua_ls`, `gopls`, `jdtls`, `buf_ls`
- Formatters: `prettier`, `stylua`, `shfmt`, `gofumpt`, `goimports`, `buf`

Java additionally needs a system JDK: `brew install --cask temurin`.

Optionally pre-install Treesitter parsers for syntax highlighting:
```vim
:TSInstall lua python javascript typescript json yaml markdown bash
```

To add more LSPs later, either edit `nvim/init.lua` (the `servers` table) or run `:Mason` and press `i` on any package.

### 6. Install a Nerd Font + configure iTerm2

Sessionx, neo-tree, and other plugins use Nerd Font glyphs for icons.

```bash
brew install --cask font-jetbrains-mono-nerd-font
```

In **iTerm2 → Settings → Profiles → Text**:

- Set **Font** to `JetBrainsMono Nerd Font Mono`
- **Uncheck "Use a different font for non-ASCII text."** Nerd Font glyphs live in Unicode's private-use area, which iTerm2 classifies as "non-ASCII" — if this box is checked, your non-ASCII font (often `Monaco`) gets used and the icons render as tofu boxes (`▯`).

---

## Layout

```
dotfiles/
├── README.md
├── CHEATSHEET.md      ← daily-use keys
├── install.sh         ← symlink installer
├── tmux.conf          ← → ~/.tmux.conf
└── nvim/              ← → ~/.config/nvim
    ├── init.lua
    └── lua/custom/plugins/
        └── tmux-navigator.lua
```

## Credits

- nvim base: [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) (MIT)
