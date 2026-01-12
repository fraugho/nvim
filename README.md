# Neovim Configuration

LazyVim-based configuration with support for Rust, Go, Zig, C/C++, and Lean.

## Keybindings

### General

| Key | Action |
|-----|--------|
| `<Space>` | Leader key |
| `<leader>` | Opens which-key menu |
| `<C-s>` | Save file |
| `<C-q>` | Quit |

### File Navigation

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep (search in files) |
| `<leader>fb` | Browse buffers |
| `<leader>fr` | Recent files |
| `<leader>e` | File explorer (Neo-tree) |
| `<leader>E` | File explorer (cwd) |

### Harpoon (Quick File Switching)

| Key | Action |
|-----|--------|
| `<leader>a` | Add file to Harpoon |
| `<leader>h` | Open Harpoon menu |
| `<leader>1` | Jump to Harpoon file 1 |
| `<leader>2` | Jump to Harpoon file 2 |
| `<leader>3` | Jump to Harpoon file 3 |
| `<leader>4` | Jump to Harpoon file 4 |

### LSP (Code Intelligence)

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gr` | Go to references |
| `gI` | Go to implementation |
| `gy` | Go to type definition |
| `K` | Hover documentation |
| `gK` | Signature help |
| `<leader>ca` | Code actions |
| `<leader>cr` | Rename symbol |
| `<leader>cf` | Format document |
| `<leader>cd` | Line diagnostics |
| `]d` | Next diagnostic |
| `[d` | Previous diagnostic |

### Git

| Key | Action |
|-----|--------|
| `<leader>gg` | Lazygit |
| `<leader>gf` | Git files |
| `<leader>gc` | Git commits |
| `<leader>gb` | Git blame line |
| `<leader>gB` | Git browse |
| `]h` | Next hunk |
| `[h` | Previous hunk |
| `<leader>ghp` | Preview hunk |
| `<leader>ghr` | Reset hunk |
| `<leader>ghs` | Stage hunk |

### Windows & Buffers

| Key | Action |
|-----|--------|
| `<C-h/j/k/l>` | Navigate windows |
| `<leader>-` | Split horizontal |
| `<leader>\|` | Split vertical |
| `<leader>bd` | Delete buffer |
| `<leader>bo` | Delete other buffers |
| `H` | Previous buffer |
| `L` | Next buffer |

### Search & Replace

| Key | Action |
|-----|--------|
| `<leader>sr` | Search and replace (grug-far) |
| `<leader>sw` | Search word under cursor |
| `n/N` | Next/previous search result |
| `*` | Search word under cursor forward |
| `#` | Search word under cursor backward |

### Flash (Quick Navigation)

| Key | Action |
|-----|--------|
| `s` | Flash jump |
| `S` | Flash treesitter |
| `r` | Remote flash (operator pending) |

### Diagnostics & Trouble

| Key | Action |
|-----|--------|
| `<leader>xx` | Toggle Trouble |
| `<leader>xw` | Workspace diagnostics |
| `<leader>xd` | Document diagnostics |
| `<leader>xl` | Location list |
| `<leader>xq` | Quickfix list |
| `<leader>xt` | Todo list |

### Completion (nvim-cmp)

| Key | Action |
|-----|--------|
| `<Tab>` | Confirm completion |
| `<S-Tab>` | Previous item |
| `<C-Space>` | Trigger completion |
| `<C-e>` | Close completion |
| `<CR>` | Close completion menu |

### Writing Mode

| Key | Action |
|-----|--------|
| `:Goyo` | Toggle distraction-free mode |
| `:Pencil` | Toggle soft wrap |

### Rust-Specific

| Key | Action |
|-----|--------|
| `<leader>ca` | Code actions (includes Rust actions) |
| `<leader>cR` | Rust runnables |
| `<leader>cd` | Rust debuggables |
| `<leader>ch` | Hover actions |

## Installed Plugins

### Core Framework
- **LazyVim** - Base distribution
- **lazy.nvim** - Plugin manager

### UI & Appearance
- **vim-256noir** - Monochrome colorscheme
- **bufferline.nvim** - Tab-style buffer line
- **lualine.nvim** - Status line
- **noice.nvim** - UI improvements
- **neo-tree.nvim** - File explorer
- **which-key.nvim** - Keybinding hints

### LSP & Completion
- **nvim-lspconfig** - LSP configuration
- **mason.nvim** - LSP/tool installer
- **blink.cmp** / **nvim-cmp** - Completion
- **lazydev.nvim** - Lua development

### Language Support
- **rustaceanvim** - Rust with rust-analyzer
- **crates.nvim** - Cargo.toml version hints
- **clangd_extensions.nvim** - C/C++ support
- **lean.nvim** - Lean theorem prover
- **zls** - Zig (via mason)
- **gopls** - Go (via LazyVim extras)

### Treesitter & Syntax
- **nvim-treesitter** - Syntax highlighting
- **nvim-treesitter-textobjects** - Code navigation
- **nvim-ts-autotag** - Auto close tags
- **ts-comments.nvim** - Comment syntax

### Navigation & Search
- **harpoon** - Quick file switching
- **flash.nvim** - Fast navigation
- **fzf-lua** - Fuzzy finder
- **grug-far.nvim** - Search and replace

### Git
- **gitsigns.nvim** - Git decorations

### Editing
- **mini.ai** - Text objects
- **mini.pairs** - Auto pairs
- **conform.nvim** - Formatting
- **nvim-lint** - Linting

### Writing
- **goyo.vim** - Distraction-free writing
- **vim-pencil** - Soft wrap for prose

### Utilities
- **trouble.nvim** - Diagnostics panel
- **todo-comments.nvim** - TODO highlighting
- **persistence.nvim** - Session management
- **snacks.nvim** - Various utilities

## LSP Servers

Configured via Mason and LazyVim extras:

| Language | Server |
|----------|--------|
| Rust | rust-analyzer |
| Go | gopls |
| C/C++ | clangd |
| Zig | zls |
| Lean | lean4 |
| Lua | lua_ls |

## Commands

| Command | Action |
|---------|--------|
| `:Lazy` | Plugin manager |
| `:Mason` | LSP/tool installer |
| `:LspInfo` | LSP status |
| `:checkhealth` | System health check |
| `:Goyo` | Distraction-free mode |

## File Structure

```
~/.config/nvim/
├── init.lua              # Entry point
├── lazyvim.json          # LazyVim extras config
├── lazy-lock.json        # Plugin versions
└── lua/
    ├── config/
    │   ├── lazy.lua      # Plugin manager setup
    │   ├── options.lua   # Editor options
    │   ├── keymaps.lua   # Custom keymaps
    │   └── autocmds.lua  # Autocommands
    └── plugins/
        ├── cmp.lua       # Completion config
        ├── lean.lua      # Lean support
        ├── lsp.lua       # Zig LSP
        ├── rust_inlay_hints.lua  # Rust config
        ├── theme.lua     # Colorscheme
        ├── wrap.lua      # Text wrapping
        └── writing.lua   # Goyo config
```
