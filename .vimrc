" Based on https://gist.github.com/mislav/5706063

set nocompatible                " choose no compatibility with legacy vi
set noswapfile
syntax enable
set encoding=utf-8
filetype plugin indent on       " load file type plugins + indentation

"" Tweaks
set hidden                      " allow backgrounding buffers without writing them
set scrolloff=3                 " have some context around the current line always on screen
set number
set history=200                 " remember more Ex commands
set synmaxcol=800               " don't try to highlight long lines
colo elflord

" Time out on key codes but not mappings. Makes terminal Vim work sanely
set notimeout
set ttimeout
set ttimeoutlen=100

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set gdefault                    " replace all matches per line (instead of just first)

"" Have Vim able to edit crontab files again
set backupskip=/tmp/*,/private/tmp/*"

"" Status line
set showcmd                     " display incomplete commands

if has("statusline") && !&cp
  set laststatus=2              " always show the status bar
  set statusline=%f\ %m\ %r     " filename, modified, readonly
  set statusline+=\ %l/%L[%p%%] " current line/total lines
  set statusline+=\ %v[0x%B]    " current column [hex char]
endif

"" Clean search results highlight with space bar
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
noremap <F4> :set hlsearch! hlsearch?<CR>
