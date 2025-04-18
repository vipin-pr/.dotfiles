inoremap jj <Esc>
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=green
set mouse=a
set ignorecase

" Auto sync ssh config file to Windows folder on save
" autocmd BufWritePost ~/.ssh/config silent !cp ~/.ssh/config /mnt/c/Users/<User-name>/Documents/ssh_config_backup/config
