" -----------------------------------------------------------------------------
"  " Color settings
"  "
"  -----------------------------------------------------------------------------
"
"  " Enable 24-bit true colors if your terminal supports it.
  if (has("termguicolors"))
    " https://github.com/vim/vim/issues/993#issuecomment-255651605
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

          set termguicolors
          endif
"
"          " Enable syntax highlighting.
          syntax on
"
"          " Set the color scheme.
          colorscheme desert

          " Set the color scheme to dark.
          set background=dark
" ----------------------------------------------------------------------------------
" " Basic Settings

set autoindent
set encoding=utf-8
set ignorecase