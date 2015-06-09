" Use Vim settings, rather then Vi settings (much better!).
set nocompatible

" Enable syntax highlighting
syntax on

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
"set autoindent

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
"set confirm

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab

" This sets the color to be lighter and easier to read
set background=dark

" my perl includes pod
let perl_include_pod = 1
let perl_fold = 1

" set maximum characters per line ( textwidth )
set tw=78 

" setting up the spelling function
"set spell

" fix menu and menu select highlighting
hi Pmenu ctermfg=White ctermbg=Blue cterm=None guifg=Cyan guibg=DarkBlue
hi PmenuSel ctermfg=White ctermbg=Yellow cterm=Bold guifg=White guibg=Yellow gui=Bold

" Do not highlight what you searched for
set nohlsearch

" show line and character count
set ruler

" associate *.tt with html filetype syntax
au BufRead,BufNewFile *.tt set filetype=html
au BufRead,BufNewFile *.slim set filetype=css
au BufRead,BufNewFile *.coffee set filetype=css

au FileType perl set sw=4 sts=4 et
au FileType python set sw=4 sts=4 et
