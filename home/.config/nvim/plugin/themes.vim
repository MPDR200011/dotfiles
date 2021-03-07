" Theme
set t_Co=256
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"


" Settings for themes I normally use

" Deus settings
let g:deus_termcolors=256

" Material Theme settings
let g:material_theme_style='ocean'
let g:material_terminal_italics = 1

" Gruvbox settings
let g:gruvbox_bold=0
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'

" Ayu settings
let ayucolor='dark'

" Setting actual theme
set background=dark
colorscheme zephyr
let g:airline_theme='zenburn'
