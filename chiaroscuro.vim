" ==============================================================================
"   Name:        chiaroscuro
"   Author:      dagobah123
"   Url:         https://github.com/dagobah123/vim
"
"   A dark vim color scheme.
" ==============================================================================

set background=dark
highlight clear
syntax reset

let g:colors_name="chiaroscuro"
let colors_name="chiaroscuro"

let s:text        = { "gui": "#548648", "cterm": "28"  }
let s:cursor_text = { "gui": "#00ff00", "cterm": "10"  }
let s:cursor_line = { "gui": "#4169e1", "cterm": "22"  }

let s:black       = { "gui": "#000000", "cterm": "0"   }
let s:red         = { "gui": "#d70000", "cterm": "160" }
let s:green       = { "gui": "#008700", "cterm": "28"  }
let s:yellow      = { "gui": "#ffd700", "cterm": "220" }
let s:blue        = { "gui": "#005fff", "cterm": "27"  }
let s:purple      = { "gui": "#af00ff", "cterm": "129" }
let s:cyan        = { "gui": "#00ffff", "cterm": "51"  }
let s:white       = { "gui": "#ffffff", "cterm": "15"  }

let s:fg          = s:text
let s:bg          = s:black

let s:comment_fg  = { "gui": "#5c6370", "cterm": "241" }
let s:gutter_bg   = { "gui": "#282c34", "cterm": "236" }
let s:gutter_fg   = { "gui": "#919baa", "cterm": "247" }
let s:non_text    = { "gui": "#373C45", "cterm": "239" }

let s:color_col   = { "gui": "#313640", "cterm": "237" }

let s:selection   = { "gui": "#474e5d", "cterm": "239" }
let s:vertsplit   = { "gui": "#313640", "cterm": "237" }


function! s:h(group, fg, bg, attr)
  if type(a:fg) == type({})
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . a:fg.cterm
  else
    exec "hi " . a:group . " guifg=NONE cterm=NONE"
  endif
  if type(a:bg) == type({})
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . a:bg.cterm
  else
    exec "hi " . a:group . " guibg=NONE ctermbg=NONE"
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  else
    exec "hi " . a:group . " gui=NONE cterm=NONE"
  endif
endfun


" User interface colors {
call s:h("Normal", s:fg, s:bg, "")

call s:h("Cursor", s:bg, s:blue, "")
call s:h("CursorColumn", "", s:cursor_line, "")
call s:h("CursorLine", s:cursor_text, s:cursor_line, "")

call s:h("LineNr", s:gutter_fg, s:gutter_bg, "")
call s:h("CursorLineNr", s:fg, "", "")

call s:h("DiffAdd", s:green, "", "")
call s:h("DiffChange", s:yellow, "", "")
call s:h("DiffDelete", s:red, "", "")
call s:h("DiffText", s:blue, "", "")

call s:h("IncSearch", s:bg, s:yellow, "")
call s:h("Search", s:bg, s:yellow, "")

call s:h("ErrorMsg", s:fg, "", "")
call s:h("ModeMsg", s:fg, "", "")
call s:h("MoreMsg", s:fg, "", "")
call s:h("WarningMsg", s:red, "", "")
call s:h("Question", s:purple, "", "")

call s:h("Pmenu", s:bg, s:fg, "")
call s:h("PmenuSel", s:fg, s:blue, "")
call s:h("PmenuSbar", "", s:selection, "")
call s:h("PmenuThumb", "", s:fg, "")

call s:h("SpellBad", s:red, "", "")
call s:h("SpellCap", s:yellow, "", "")
call s:h("SpellLocal", s:yellow, "", "")
call s:h("SpellRare", s:yellow, "", "")

call s:h("StatusLine", s:blue, s:cursor_line, "")
call s:h("StatusLineNC", s:comment_fg, s:cursor_line, "")
call s:h("TabLine", s:comment_fg, s:cursor_line, "")
call s:h("TabLineFill", s:comment_fg, s:cursor_line, "")
call s:h("TabLineSel", s:fg, s:bg, "")

call s:h("Visual", "", s:selection, "")
call s:h("VisualNOS", "", s:selection, "")

call s:h("ColorColumn", "", s:text, "")
call s:h("Conceal", s:text, "", "")
call s:h("Directory", s:text, "", "")
call s:h("VertSplit", s:text, s:text, "")
call s:h("Folded", s:text, "", "")
call s:h("FoldColumn", s:text, "", "")
call s:h("SignColumn", s:text, "", "")

call s:h("MatchParen", s:text, "", "underline")
call s:h("SpecialKey", s:text, "", "")
call s:h("Title", s:text, "", "")
call s:h("WildMenu", s:text, "", "")
" }


" Syntax colors {
" Whitespace is defined in Neovim, not Vim.
" See :help hl-Whitespace and :help hl-SpecialKey
call s:h("Whitespace", s:text, "", "")
call s:h("NonText", s:text, "", "")
call s:h("Comment", s:text, "", "italic")
call s:h("Constant", s:text, "", "")
call s:h("String", s:text, "", "")
call s:h("Character", s:text, "", "")
call s:h("Number", s:text, "", "")
call s:h("Boolean", s:text, "", "")
call s:h("Float", s:text, "", "")

call s:h("Identifier", s:text, "", "")
call s:h("Function", s:text, "", "")
call s:h("Statement", s:text, "", "")

call s:h("Conditional", s:text, "", "")
call s:h("Repeat", s:text, "", "")
call s:h("Label", s:text, "", "")
call s:h("Operator", s:text, "", "")
call s:h("Keyword", s:text, "", "")
call s:h("Exception", s:text, "", "")

call s:h("PreProc", s:text, "", "")
call s:h("Include", s:text, "", "")
call s:h("Define", s:text, "", "")
call s:h("Macro", s:text, "", "")
call s:h("PreCondit", s:text, "", "")

call s:h("Type", s:text, "", "")
call s:h("StorageClass", s:text, "", "")
call s:h("Structure", s:text, "", "")
call s:h("Typedef", s:text, "", "")

call s:h("Special", s:text, "", "")
call s:h("SpecialChar", s:text, "", "")
call s:h("Tag", s:text, "", "")
call s:h("Delimiter", s:text, "", "")
call s:h("SpecialComment", s:text, "", "")
call s:h("Debug", s:text, "", "")
call s:h("Underlined", s:text, "", "")
call s:h("Ignore", s:text, "", "")
call s:h("Error", s:text, s:text, "")
call s:h("Todo", s:text, "", "")
" }


" Plugins {
" GitGutter
call s:h("GitGutterAdd", s:green, s:gutter_bg, "")
call s:h("GitGutterDelete", s:red, s:gutter_bg, "")
call s:h("GitGutterChange", s:yellow, s:gutter_bg, "")
call s:h("GitGutterChangeDelete", s:red, s:gutter_bg, "")
" Fugitive
call s:h("diffAdded", s:green, "", "")
call s:h("diffRemoved", s:red, "", "")
" }


" Git {
call s:h("gitcommitComment", s:comment_fg, "", "")
call s:h("gitcommitUnmerged", s:red, "", "")
call s:h("gitcommitOnBranch", s:fg, "", "")
call s:h("gitcommitBranch", s:purple, "", "")
call s:h("gitcommitDiscardedType", s:red, "", "")
call s:h("gitcommitSelectedType", s:green, "", "")
call s:h("gitcommitHeader", s:fg, "", "")
call s:h("gitcommitUntrackedFile", s:cyan, "", "")
call s:h("gitcommitDiscardedFile", s:red, "", "")
call s:h("gitcommitSelectedFile", s:green, "", "")
call s:h("gitcommitUnmergedFile", s:yellow, "", "")
call s:h("gitcommitFile", s:fg, "", "")
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile
" }

" Fix colors in neovim terminal buffers {
  if has('nvim')
    let g:terminal_color_0 = s:black.gui
    let g:terminal_color_1 = s:red.gui
    let g:terminal_color_2 = s:green.gui
    let g:terminal_color_3 = s:yellow.gui
    let g:terminal_color_4 = s:blue.gui
    let g:terminal_color_5 = s:purple.gui
    let g:terminal_color_6 = s:cyan.gui
    let g:terminal_color_7 = s:white.gui
    let g:terminal_color_8 = s:black.gui
    let g:terminal_color_9 = s:red.gui
    let g:terminal_color_10 = s:green.gui
    let g:terminal_color_11 = s:yellow.gui
    let g:terminal_color_12 = s:blue.gui
    let g:terminal_color_13 = s:purple.gui
    let g:terminal_color_14 = s:cyan.gui
    let g:terminal_color_15 = s:white.gui
    let g:terminal_color_background = s:bg.gui
    let g:terminal_color_foreground = s:fg.gui
  endif
" }
