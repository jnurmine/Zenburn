" Vim color file
" Maintainer:   Jani Nurminen <slinky@iki.fi>
" Version:      v 2.22
" URL:          http://slinky.imukuppi.org/zenburnpage/
" License:      GNU GPL <http://www.gnu.org/licenses/gpl.html>
"
" Nothing too fancy, just some alien fruit salad to keep you in the zone.
" This syntax file was designed to be used with dark environments and
" low light situations. Of course, if it works during a daybright office, go
" ahead :)
"
" Owes heavily to other Vim color files! With special mentions
" to "BlackDust", "Camo" and "Desert".
"
" To install, copy to ~/.vim/colors directory.
"
" Alternatively, you can use Vimball installation:
"     vim zenburn.vba
"     :so %
"     :q
"
" For details, see :help vimball
"
" After installation, use it with :colorscheme zenburn.
" See also :help syntax
"
" Credits:
"  - Jani Nurminen - original Zenburn, maintainer
"  - Steve Hall & Cream posse - higher-contrast Visual selection
"  - Kurt Maier - 256 color console coloring, low and high contrast toggle,
"                 bug fixing
"  - Charlie - spotted too bright StatusLine in non-high contrast mode
"  - Pablo Castellazzi - CursorLine fix for 256 color mode
"  - Tim Smith - force dark background
"  - John Gabriele - spotted bad Ignore-group handling
"  - Zac Thompson - spotted invisible NonText in low contrast mode
"  - Christophe-Marie Duquesne - suggested making a Vimball,
"    suggested support for ctags_highlighting.vim
"  - Andrew Wagner - noted the CursorColumn bug (guifg was unintentionally set),
"                    unify CursorColumn colour
"  - Martin Langasek - clarify the license, whitespace fixes
"  - Marcin Szamotulski - support autocomplete for Zenburn configuration
"                         parameters
"  - Clayton Parker (claytron) - Convinced by Kurt Maier to use Zenburn. Point
"    out issues with LineNr, fix directory styles, and their usage in MacVim.
"  - Paweł Piekarski - Spotted bad FoldColumn and TabLine. Made better 
"                      FoldColumn colors, fixed TabLine colors.
"  - Jim - Fix for missing Include group for terminal
"  - Peter (Sakartu) - ColorColumn fixes
"  - Please see git log for the others not listed here
"
" CONFIGURABLE PARAMETERS:
"
" You can use the default (don't set any parameters), or you can
" set some parameters to tweak the Zenburn colours.
"
" To use them, put them into your .vimrc file before loading the color scheme,
" example:
"    let g:zenburn_high_Contrast=1
"    colors zenburn
"
" You can also do ":let g:zenburn" then hit Ctrl-d or Tab to scroll through the
" list of configurable parameters.
"
" * You can now set a darker background for bright environments. To activate, use:
"      let g:zenburn_high_Contrast = 1
"
" * For transparent terminals set the background to black with:
"      let g:zenburn_transparent = 1
"
" * For example, Vim help files uses the Ignore-group for the pipes in tags
"   like "|somelink.txt|". By default, the pipes are not visible, as they
"   map to Ignore group. If you wish to enable coloring of the Ignore group,
"   set the following parameter to 1. Warning, it might make some syntax files
"   look strange.
"
"      let g:zenburn_color_also_Ignore = 1
"
" * To get more contrast to the Visual selection, use
"
"      let g:zenburn_alternate_Visual = 1
"
"   Note: this is enabled only if the old-style Visual
"   if used, see g:zenburn_old_Visual
"
" * To use alternate colouring for Error message, use
"
"      let g:zenburn_alternate_Error = 1
"
" * The new default for Include is a duller orange. To use the original
"   colouring for Include, use
"
"      let g:zenburn_alternate_Include = 1
"
" * To disable underlining for Labels, use
"
"      let g:zenburn_disable_Label_underline = 1
"
" * Work-around to a Vim bug, it seems to misinterpret ctermfg and 234 and 237
"   as light values, and sets background to light for some people. If you have
"   this problem, use:
"
"      let g:zenburn_force_dark_Background = 1
"
" * By default the CursorColumn is of a lighter colour. I find it more readable
"   that way, but some people may want to align it with the darker CursorLine
"   color, for visual uniformity. To do so, use:
"
"      let g:zenburn_unified_CursorColumn = 1
"
"   Note: you can ignore this unless you use
"   ":set cursorline cursorcolumn", since otherwise the effect won't be
"   seen.
"
" * New (dark) Visual coloring has been introduced.
"   The dark Visual is more aligned with the rest of the colour scheme,
"   especially if you use line numbers. If you wish to use the 
"   old Visual coloring, use
"
"      let g:zenburn_old_Visual = 1
"
"   Default is to use the new Visual.
"
"  * EXPERIMENTAL FEATURE: Zenburn would like to support TagHighlight
"    (an evolved ctags-highlighter) by Al Budden (homepage:
"    http://www.cgtk.co.uk/vim-scripts/taghighlight).
"    Current support status is broken: there is no automatic detection of
"    TagHighlight, no specific language support; however there is some basic
"    support for Python. If you are a user of TagHighlight and want to help,
"    please enable:
"
"      let g:zenburn_enable_TagHighlight=1
"
"    and improve the corresponding block at the end of the file.
"
" NOTE:
"
" * To turn the parameter(s) back to defaults, use UNLET or set them to 0:
"
"      unlet g:zenburn_alternate_Include
"   or 
"      let g:zenburn_alternate_Include = 0
"
"
" That's it, enjoy!
"
" TODO
"   - Visual alternate color is broken? Try GVim >= 7.0.66 if you have trouble
"   - IME colouring (CursorIM)

" Set defaults, but keep any parameters already set by the user
if ! exists("g:zenburn_high_Contrast")
    let g:zenburn_high_Contrast = 0
endif

if ! exists("g:zenburn_transparent")
    let g:zenburn_transparent = 0
endif

if ! exists("g:zenburn_color_also_Ignore")
    let g:zenburn_color_also_Ignore = 0
endif

if ! exists("g:zenburn_alternate_Error")
    let g:zenburn_alternate_Error = 0
endif

if ! exists("g:zenburn_force_dark_Background")
    let g:zenburn_force_dark_Background = 0
endif

if ! exists("g:zenburn_alternate_Visual")
    let g:zenburn_alternate_Visual = 0
endif

if ! exists("g:zenburn_alternate_Include")
    let g:zenburn_alternate_Include = 0
endif

if ! exists("g:zenburn_disable_Label_underline")
    let g:zenburn_disable_Label_underline = 0
endif

if ! exists("g:zenburn_unified_CursorColumn")
    let g:zenburn_unified_CursorColumn = 0
endif

if ! exists("g:zenburn_old_Visual")
    let g:zenburn_old_Visual = 0
endif

if ! exists("g:zenburn_enable_TagHighlight")
    let g:zenburn_enable_TagHighlight = 0
endif

" -----------------------------------------------

set background=dark

hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="zenburn"

hi Boolean         guifg=#dca3a3
hi Character       guifg=#dca3a3 gui=bold
hi Comment         guifg=#7f9f7f gui=italic
hi Conditional     guifg=#f0dfaf gui=bold
hi Constant        guifg=#dca3a3 gui=bold
hi Cursor          guifg=#000d18 guibg=#8faf9f gui=bold
hi Debug           guifg=#bca3a3 gui=bold
hi Define          guifg=#ffcfaf gui=bold
hi Delimiter       guifg=#8f8f8f
hi DiffAdd         guifg=#709080 guibg=#313c36 gui=bold
hi DiffChange      guibg=#333333
hi DiffDelete      guifg=#333333 guibg=#464646
hi DiffText        guifg=#ecbcbc guibg=#41363c gui=bold
hi Directory       guifg=#9fafaf gui=bold
hi ErrorMsg        guifg=#80d4aa guibg=#2f2f2f gui=bold
hi Exception       guifg=#c3bf9f gui=bold
hi Float           guifg=#c0bed1
hi FoldColumn      guifg=#93b3a3 guibg=#3f4040
hi Folded          guifg=#93b3a3 guibg=#3f4040
hi Function        guifg=#efef8f
hi Identifier      guifg=#efdcbc
hi IncSearch       guifg=#f8f893 guibg=#385f38
hi Keyword         guifg=#f0dfaf gui=bold
hi Macro           guifg=#ffcfaf gui=bold
hi ModeMsg         guifg=#ffcfaf gui=none
hi MoreMsg         guifg=#ffffff gui=bold
hi Number          guifg=#8cd0d3
hi Operator        guifg=#f0efd0
hi PreCondit       guifg=#dfaf8f gui=bold
hi PreProc         guifg=#ffcfaf gui=bold
hi Question        guifg=#ffffff gui=bold
hi Repeat          guifg=#ffd7a7 gui=bold
hi Search          guifg=#ffffe0 guibg=#284f28
hi SpecialChar     guifg=#dca3a3 gui=bold
hi SpecialComment  guifg=#82a282 gui=bold
hi Special         guifg=#cfbfaf
hi SpecialKey      guifg=#9ece9e
hi Statement       guifg=#e3ceab gui=none
hi StatusLine      guifg=#313633 guibg=#ccdc90
hi StatusLineNC    guifg=#2e3330 guibg=#88b090
hi StorageClass    guifg=#c3bf9f gui=bold
hi String          guifg=#cc9393
hi Structure       guifg=#efefaf gui=bold
hi Tag             guifg=#e89393 gui=bold
hi Title           guifg=#efefef gui=bold
hi Todo            guifg=#dfdfdf guibg=NONE    gui=bold
hi Typedef         guifg=#dfe4cf gui=bold
hi Type            guifg=#dfdfbf gui=bold
hi Underlined      guifg=#dcdccc gui=underline
hi VertSplit       guifg=#2e3330 guibg=#688060
hi VisualNOS       guifg=#333333 guibg=#f18c96 gui=bold,underline
hi WarningMsg      guifg=#ffffff guibg=#333333 gui=bold
hi WildMenu        guifg=#cbecd0 guibg=#2c302d gui=underline

hi SpellBad   guisp=#bc6c4c guifg=#dc8c6c
hi SpellCap   guisp=#6c6c9c guifg=#8c8cbc
hi SpellRare  guisp=#bc6c9c guifg=#bc8cbc
hi SpellLocal guisp=#7cac7c guifg=#9ccc9c

" Entering Kurt zone
if &t_Co > 255
    hi Boolean         ctermfg=181
    hi Character       ctermfg=181   cterm=bold
    hi Comment         ctermfg=108
    hi Conditional     ctermfg=223   cterm=bold
    hi Constant        ctermfg=181   cterm=bold
    hi Cursor          ctermfg=233   ctermbg=109     cterm=bold
    hi Debug           ctermfg=181   cterm=bold
    hi Define          ctermfg=223   cterm=bold
    hi Delimiter       ctermfg=245
    hi DiffAdd         ctermfg=66    ctermbg=237     cterm=bold
    hi DiffChange      ctermbg=236
    hi DiffDelete      ctermfg=236   ctermbg=238
    hi DiffText        ctermfg=217   ctermbg=237     cterm=bold
    hi Directory       ctermfg=109   cterm=bold
    hi ErrorMsg        ctermfg=115   ctermbg=236     cterm=bold
    hi Exception       ctermfg=249   cterm=bold
    hi Float           ctermfg=251
    hi Function        ctermfg=228
    hi Identifier      ctermfg=223
    hi Include         ctermfg=180   cterm=bold
    hi IncSearch       ctermfg=228   ctermbg=23
    hi Keyword         ctermfg=223   cterm=bold
    hi LineNr          ctermfg=248   ctermbg=233
    hi Macro           ctermfg=223   cterm=bold
    hi MatchParen      ctermfg=229   ctermbg=237     cterm=bold
    hi ModeMsg         ctermfg=223   cterm=none
    hi MoreMsg         ctermfg=15    cterm=bold
    hi Number          ctermfg=116
    hi Operator        ctermfg=230
    hi PreCondit       ctermfg=180   cterm=bold
    hi PreProc         ctermfg=223   cterm=bold
    hi Question        ctermfg=15    cterm=bold
    hi Repeat          ctermfg=223   cterm=bold
    hi Search          ctermfg=230   ctermbg=22
    hi SpecialChar     ctermfg=181   cterm=bold
    hi SpecialComment  ctermfg=108   cterm=bold
    hi Special         ctermfg=181
    hi SpecialKey      ctermfg=151
    hi Statement       ctermfg=187   cterm=none
    hi StatusLine      ctermfg=236   ctermbg=186
    hi StatusLineNC    ctermfg=235   ctermbg=108
    hi StorageClass    ctermfg=249   cterm=bold
    hi String          ctermfg=174
    hi Structure       ctermfg=229   cterm=bold
    hi Tag             ctermfg=181   cterm=bold
    hi Title           ctermfg=7     ctermbg=NONE    cterm=bold
    hi Todo            ctermfg=254   ctermbg=NONE    cterm=bold
    hi Typedef         ctermfg=253   cterm=bold
    hi Type            ctermfg=187   cterm=bold
    hi Underlined      ctermfg=188   cterm=underline
    hi VertSplit       ctermfg=236   ctermbg=65
    hi VisualNOS       ctermfg=236   ctermbg=210     cterm=bold
    hi WarningMsg      ctermfg=231   ctermbg=236     cterm=bold
    hi WildMenu        ctermfg=194   ctermbg=236     cterm=underline

    " spellchecking, always "bright" background
    hi SpellLocal ctermfg=14  ctermbg=237
    hi SpellBad   ctermfg=9   ctermbg=237
    hi SpellCap   ctermfg=12  ctermbg=237
    hi SpellRare  ctermfg=13  ctermbg=237

    " pmenu
    hi PMenu      ctermfg=248  ctermbg=0
    hi PMenuSel   ctermfg=223 ctermbg=235

    if exists("g:zenburn_high_Contrast") && g:zenburn_high_Contrast
        hi Normal ctermfg=188 ctermbg=234
        hi NonText         ctermfg=238

        if exists("g:zenburn_color_also_Ignore") && g:zenburn_color_also_Ignore
            hi Ignore          ctermfg=238
        endif

        " hc mode, darker CursorLine, default 236
        hi CursorLine      ctermbg=233   cterm=none

        if exists("g:zenburn_unified_CursorColumn") && g:zenburn_unified_CursorColumn
            hi CursorColumn      ctermbg=233   cterm=none
        else
            hi CursorColumn      ctermbg=235   cterm=none
        endif

        hi ColorColumn     ctermbg=235
    else
        hi Normal ctermfg=188 ctermbg=237
        hi Cursor          ctermbg=109
        hi diffadd         ctermbg=237
        hi diffdelete      ctermbg=238
        hi difftext        ctermbg=237
        hi errormsg        ctermbg=237
        hi linenr          ctermbg=235
        hi statusline      ctermbg=144
        hi statuslinenc    ctermbg=108
        hi title           ctermbg=237
        hi todo            ctermbg=237
        hi underlined      ctermbg=237
        hi vertsplit       ctermbg=65
        hi visualnos       ctermbg=210
        hi warningmsg      ctermbg=236
        hi wildmenu        ctermbg=236
        hi NonText         ctermfg=240

        if exists("g:zenburn_color_also_Ignore") && g:zenburn_color_also_Ignore
            hi Ignore          ctermfg=240
        endif

        " normal mode, lighter CursorLine
        hi CursorLine      ctermbg=238   cterm=none

        if exists("g:zenburn_unified_CursorColumn") && g:zenburn_unified_CursorColumn
            hi CursorColumn      ctermbg=238   cterm=none
        else
            hi CursorColumn      ctermbg=239   cterm=none
        endif

        hi ColorColumn     ctermbg=238
    endif

    if exists("g:zenburn_alternate_Error") && g:zenburn_alternate_Error
        " use more jumpy Error
        hi Error ctermfg=210 ctermbg=52 cterm=bold
    else
        " default is something more zenburn-compatible
        hi Error ctermfg=167 ctermbg=236 cterm=bold
    endif

    if exists("g:zenburn_alternate_Include") && g:zenburn_alternate_Include
        " original setting
        hi Include      ctermfg=223   cterm=bold
    else
        " new, less contrasted one
        hi Include      ctermfg=180   cterm=bold
    endif

    if exists("g:zenburn_disable_Label_underline") && g:zenburn_disable_Label_underline
        hi Label       ctermfg=187
    else
        hi Label       ctermfg=187   cterm=underline
    endif
endif

if exists("g:zenburn_force_dark_Background") && g:zenburn_force_dark_Background
    " Force dark background, because of a bug in VIM:  VIM sets background
    " automatically during "hi Normal ctermfg=X"; it misinterprets the high
    " value (234 or 237 above) as a light color, and wrongly sets background to
    " light.  See ":help highlight" for details.
    set background=dark
endif

if exists("g:zenburn_high_Contrast") && g:zenburn_high_Contrast
    " use new darker background
    hi Normal          guifg=#dcdccc guibg=#1f1f1f
    hi CursorLine      guibg=#121212 gui=bold
    if exists("g:zenburn_unified_CursorColumn") && g:zenburn_unified_CursorColumn
        hi CursorColumn    guibg=#121212 gui=bold
    else
        hi CursorColumn    guibg=#2b2b2b
    endif
    hi Pmenu           guibg=#242424 guifg=#ccccbc
    hi PMenuSel        guibg=#353a37 guifg=#ccdc90 gui=bold
    hi PmenuSbar       guibg=#2e3330 guifg=#000000
    hi PMenuThumb      guibg=#a0afa0 guifg=#040404
    hi MatchParen      guifg=#f0f0c0 guibg=#383838 gui=bold
    hi SignColumn      guifg=#9fafaf guibg=#181818 gui=bold
    hi NonText         guifg=#404040 gui=bold

    hi LineNr          guifg=#9fafaf guibg=#161616

    hi ColorColumn     guibg=#33332f
else
    " Original, lighter background
    hi Normal          guifg=#dcdccc guibg=#3f3f3f
    hi CursorLine      guibg=#434443
    if exists("g:zenburn_unified_CursorColumn") && g:zenburn_unified_CursorColumn
        hi CursorColumn    guibg=#434343
    else
        hi CursorColumn    guibg=#4f4f4f
    endif
    hi Pmenu           guibg=#2c2e2e guifg=#9f9f9f
    hi PMenuSel        guibg=#242424 guifg=#d0d0a0 gui=bold
    hi PmenuSbar       guibg=#2e3330 guifg=#000000
    hi PMenuThumb      guibg=#a0afa0 guifg=#040404
    hi MatchParen      guifg=#b2b2a0 guibg=#2e2e2e gui=bold
    hi SignColumn      guifg=#9fafaf guibg=#343434 gui=bold
    hi NonText         guifg=#5b605e gui=bold

    hi LineNr          guifg=#9fafaf guibg=#262626

    hi ColorColumn     guibg=#484848
endif

if exists("g:zenburn_transparent") && g:zenburn_transparent
    hi Normal             ctermbg=0     guibg=#000000
    hi Statement          ctermbg=NONE
    hi Title              ctermbg=NONE
    hi Todo               ctermbg=NONE
    hi Underlined         ctermbg=NONE
    hi DiffAdd            ctermbg=NONE
    hi DiffText           ctermbg=NONE
    hi ErrorMsg           ctermbg=NONE
    hi LineNr             ctermbg=NONE
endif

if exists("g:zenburn_old_Visual") && g:zenburn_old_Visual
    if exists("g:zenburn_alternate_Visual") && g:zenburn_alternate_Visual
        " Visual with more contrast, thanks to Steve Hall & Cream posse
        " gui=none fixes weird highlight problem in at least GVim 7.0.66, thanks to Kurt Maier
        hi Visual          guifg=#000000 guibg=#71d3b4 gui=none
        hi VisualNOS       guifg=#000000 guibg=#71d3b4 gui=none
    else
        " use default visual
        hi Visual          guifg=#233323 guibg=#71d3b4 gui=none
        hi VisualNOS       guifg=#233323 guibg=#71d3b4 gui=none
    endif
else
    " new Visual style
    if exists("g:zenburn_high_Contrast") && g:zenburn_high_Contrast
        " high contrast
        "hi Visual        guibg=#304a3d
        "hi VisualNos     guibg=#304a3d
        "TODO no nice greenish in console, 65 is closest. use full black instead,
        "although i like the green..!
        hi Visual        guibg=#0f0f0f
        hi VisualNos     guibg=#0f0f0f
        if &t_Co > 255
            if exists("g:zenburn_transparent") && g:zenburn_transparent
                hi Visual ctermbg=235
            else
                hi Visual ctermbg=0
            endif
        endif
    else
        " low contrast
        hi Visual        guibg=#2f2f2f
        hi VisualNOS     guibg=#2f2f2f

        if &t_Co > 255
            hi Visual    ctermbg=235
            hi VisualNOS ctermbg=235
        endif
    endif
endif

if exists("g:zenburn_alternate_Error") && g:zenburn_alternate_Error
    " use more jumpy Error
    hi Error        guifg=#e37170 guibg=#664040 gui=bold
else
    " default is something more zenburn-compatible
    hi Error        guifg=#e37170 guibg=#3d3535 gui=none
endif

if exists("g:zenburn_alternate_Include") && g:zenburn_alternate_Include
    " original setting
    hi Include      guifg=#ffcfaf gui=bold
else
    " new, less contrasted one
    hi Include      guifg=#dfaf8f gui=bold
endif

if exists("g:zenburn_disable_Label_underline") && g:zenburn_disable_Label_underline
    hi Label       guifg=#dfcfaf
else
    hi Label       guifg=#dfcfaf gui=underline
endif

if exists("g:zenburn_color_also_Ignore") && g:zenburn_color_also_Ignore
    " color the Ignore groups
    " note: if you get strange coloring for your files, turn this off (unlet)
    hi Ignore guifg=#545a4f
endif

" new tabline and fold column
if exists("g:zenburn_high_Contrast") && g:zenburn_high_Contrast
    hi FoldColumn    guibg=#161616
    hi Folded        guibg=#161616
    hi TabLine       guifg=#88b090 guibg=#313633 gui=none
    hi TabLineSel    guifg=#ccd990 guibg=#222222
    hi TabLineFill   guifg=#88b090 guibg=#313633 gui=none

    hi SpecialKey    guibg=#242424

    if &t_Co > 255
        hi FoldColumn    ctermbg=233 ctermfg=109
        hi Folded        ctermbg=233 ctermfg=109
        hi TabLine       ctermbg=236 ctermfg=108 cterm=none
        hi TabLineSel    ctermbg=235 ctermfg=186 cterm=bold
        hi TabLineFill   ctermbg=236 ctermfg=236 cterm=bold
    endif
else
    hi FoldColumn    guibg=#333333
    hi Folded        guibg=#333333
    hi TabLine       guifg=#d0d0b8 guibg=#222222 gui=none
    hi TabLineSel    guifg=#f0f0b0 guibg=#333333 gui=bold
    hi TabLineFill   guifg=#dccdcc guibg=#101010 gui=none

    hi SpecialKey    guibg=#444444

    if &t_Co > 255
        hi FoldColumn    ctermbg=236 ctermfg=109
        hi Folded        ctermbg=236 ctermfg=109
        hi TabLine       ctermbg=235 ctermfg=187 cterm=none
        hi TabLineSel    ctermbg=236 ctermfg=229 cterm=bold
        hi TabLineFill   ctermbg=233 ctermfg=233 cterm=bold
    endif
endif

" EXPERIMENTAL TagHighlight support
" link/set sensible defaults here;
"
" For now I mostly link to subset of Zenburn colors, the linkage is based
" on appearance, not semantics. In later versions I might define more new colours.
"
" HELP NEEDED to make this work properly.

if exists("g:zenburn_enable_TagHighlight") && g:zenburn_enable_TagHighlight
        " CTag support may vary, but the first step is to start using it so
        " we can fix it!
        "
        " Consult /plugin/TagHighlight/data/kinds.txt for info on your
        " language and what's been defined.
        "
        " There is potential for language indepedent features here. (Acutally,
        " seems it may be required for this to be useful...) This way we can
        " implement features depending on how well CTags are currently implemented
        " for the language. ie. Global problem for python is annoying.  Special
        " colors are defined for special language features, etc..
        "
        " For now all I care about is python supported features:
        "   c:CTagsClass
        "   f:CTagsFunction
        "   i:CTagsImport
        "   m:CTagsMember
        "   v:CTagsGlobalVariable
        "
        "   Note: TagHighlight defaults to setting new tags to Keyword
        "   highlighting.

        " TODO conditionally run each section
        " BEGIN Python Section
        hi link Class        Function
        hi link Import       PythonInclude
        hi link Member       Function
        "Note: Function is already defined

        " Highlighter seems to think a lot of things are global variables even
        " though they're not. Example: python method-local variable is
        " coloured as a global variable. They should not be global, since
        " they're not visible outside the method.
        " If this is some very bright colour group then things look bad.
        " hi link GlobalVariable    Identifier

        " Because of this problem I am disabling the feature by setting it to
        " Normal instead
        hi link GlobalVariable Normal
        " END Python Section

        " Starting point for other languages.
        hi link GlobalConstant    Constant
        hi link EnumerationValue  Float
        hi link EnumerationName   Identifier
        hi link DefinedName       WarningMsg
        hi link LocalVariable     WarningMsg
        hi link Structure         WarningMsg
        hi link Union             WarningMsg
endif

" TODO check for more obscure syntax groups that they're ok

