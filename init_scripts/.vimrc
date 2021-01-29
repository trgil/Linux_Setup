" Vim configuration file
"
" Copyright (c) 2021, Gil Treibush
"
" This program is free software; you can redistribute it
" and/or modify it under the terms of the MIT License.
" A full copy of the licence can be found at the root of
" the projects repository.

" General settings
set undofile
set exrc
set secure
set showcmd
set hidden

" Line numbering and highlighting
set nu
set relativenumber
set cursorline
set numberwidth=5

" Tabline settings
set showtabline=2
set tabpagemax=15
set tabstop=4

" Searching
set incsearch
set hlsearch
set ignorecase
set smartcase
set infercase

" Indentations
set autoindent
set smartindent
set cindent
set tabstop=4 shiftwidth=4 expandtab

" Taglist plug-in
filetype plugin on

" References
set tags=./tags;

" Manage whitespaces
2match ErrorMsg /\s\+$\| \+\ze\t/

" Mappings
imap cmain int main(int argc, char** argv)<CR>{<CR><CR>return 0;<CR>}<UP><UP><TAB>
imap prnf printf("");<LEFT><LEFT><LEFT>

" Templates
autocmd BufNewFile *.html 0r ~/.vim/templates/html.tpl
