-- disable netrw at the very start of your init.lua (necessary for config to work)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- variable for conciseness
local options          = vim.opt

-- enable mouse (if you really need it for some reason)
options.mouse = 'a'

-- disable backups
options.backup         = false
options.swapfile       = false
options.undodir        = os.getenv("HOME") .. "/.vim/undodir"
options.undofile       = true

-- numbers 
options.number         = true
options.relativenumber = true

-- chonky cursor
options.guicursor      = ""

-- needed config
options.backspace      = '2'
options.showcmd        = true
options.laststatus     = 2
options.autowrite      = true
options.autoread       = true

-- tabs & indentation
options.tabstop        = 2
options.shiftwidth     = 2
options.expandtab      = true
options.autoindent     = true

-- line wrapping
options.wrap           = false

-- search settings 
options.ignorecase     = true
options.smartcase      = true

-- set scrolling limit 
options.scrolloff      = 8

-- blazingly fast update time 
options.updatetime     = 80

-- appearance
options.background     = "dark"

-- split windows
options.splitright     = true
options.splitbelow     = true

-- indenting options
options.autoindent     = true -- auto indent 
options.smartindent    = true -- smart indent
options.tabstop        = 2
options.shiftwidth     = 2
options.expandtab      = true

-- true color 24-bit (for terminals that support it)
options.termguicolors  = true

-- fix word detection
options.iskeyword:append("-")

-- Enable auto-pairing of brackets, quotes, etc.
vim.cmd('inoremap " ""<left>')
vim.cmd('inoremap \' \'\'<left>')
vim.cmd('inoremap ( ()<left>')
vim.cmd('inoremap [ []<left>')
vim.cmd('inoremap { {}<left>')
vim.cmd('inoremap {<CR> {<CR>}<ESC>O')
