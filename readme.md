# ZENBURN

Zenburn is a low-contrast color scheme for Vim. It’s easy for your eyes and
designed to keep you in the zone for long programming sessions.

Zenburn has been ported to many different editors and environments. For more
information visit http://slinky.imukuppi.org/zenburnpage
A list of derivatives is below.

## No:
  - dayglo vomit
  - black, red, blue and green on screaming white background
  - headache
  - watery, squinting eyes
  - the "I wanna run away" feeling

## Yes:
  + alien fruit salad
  + harmonious colors help with concentration
  + improved focus
  + stay longer in the zone
  + more productivity
  + looks good
  + 256-color terminal mode
  + GVim mode
  + customizeable
  + etc.


## INSTALLATION IN VIM/GVIM

To use Zenburn in GVim, simply copy the file to colors/ subdirectory under your
Vim configuration folder (e.g. ~/.vim/colors or C:\vim\colors).

To use Zenburn in Vim, you must enable the 256-color mode for Vim. This can be
done with e.g. export TERM=xterm-256color. You might also need to add set
t_Co=256 into your .vimrc file, before loading the colorscheme. Note, that due
to limitations of the 256-color mode the color scheme is not exactly like it
appears in GVim, but very close nevertheless.

To load Zenburn in Vim/GVim:

  :colors zenburn

To automatically load the colors upon startup of Vim, add this to .vimrc:

  colors zenburn


## LICENSE

GNU GPL, http://www.gnu.org/licenses/gpl.html


## DEVELOPERS

Captain Obvious says: make a symlink from ~/.vim/colors/zenburn.vim which
points to the real zenburn.vim. This way you don't need to copy files around
and making the Vimball is easy!

## MAKING A VIMBALL

To make a Vimball, open zb-vimball.txt and then :MkVimball zenburn.vba


## THANKS

  * Creators of "BlackDust", "Camo" and "Desert" themes. I used those to figure out how the Vim color schemes work in practise.
  * All contributors - see zenburn.vim for a list.
  * All people who made derivatives and ports.
  * All zenburners worldwide!


## PARTING WORDS

Thank you for enjoying “Just some alien fruit salad to keep you in the zone”!

Cheers,
slinky at iki dot fi

----

# APPENDIX: PORTS OF ZENBURN


This repo now archives many of the different ports, variants and colourscheme files for the Zenburn theme posted to the original comment thread. @mildlydiverting pulled these together for @jnurmine.


## What's In This Repo 

**zenburn-vim** - @jnurmine's original Vim scheme. 

**ports** - themes and scheme files are organised within subfolders by the parent app they're designed for

**colours** - contains html tables, excel files, palettes for design apps etc with hex and rgb colour codes. This includes dumps of the old deleted wikipedia tables describing the scheme.

Links to all sources for ports follow below.

If repos already exist, they have not been cloned in to this one. 

For some gists and smaller files, copies have been archived in to this repo.

Files just availabile as downloads from other sites have been archived here. 

Instructions or original blog posts about the ports are generally saved as a text file in the relevant folder.

TODO - put text files with sources / credits / license conditions in each folder.

TODO - add any more ports

## The Original Zenburn Files 

  - http://slinky.imukuppi.org/zenburnpage/ *OFFICIAL ZENBURN PAGE*
  - https://github.com/jnurmine/Zenburn	VIM theme Github Repo
  - http://slinky.imukuppi.org/2006/10/31/just-some-alien-fruit-salad-to-keep-you-in-the-zone/	The original VIM scheme page
  - http://vim.sourceforge.net/scripts/script.php?script_id=415	Vim Sourceforge Files
  - http://deletionpedia.dbatley.com/w/index.php?title=Zenburn	Deletionpedia Reference Page
  - https://docs.google.com/Doc?id=dfpbqnc7_15c6gkg97h	Google Doc of colour reference (may break soon as Google Docs format changes 2012-05-12)
  
## In other repos (github, gists, bitbucket... etc)

  - https://github.com/bergie/subethaedit-zenburn	SubEthaEdit (also Mac Terminal, and a .clr file)
  - https://gist.github.com/1422472	Gnome Terminal 	
  - https://gist.github.com/1259056	Fossil
  - https://github.com/bbatsov/zenburn-emacs	Emacs
  - https://github.com/dbrock/zenburn-el	GNU Emacs
  - https://github.com/djcb/elisp/blob/master/themes/zenburn-theme.el	Emacs EL Elisp
  - https://bitbucket.org/trovao/configs/src/tip/mutt-zenburn/dotmuttrc	Mutt
  - https://github.com/moleculezz/eclipse-zenburn	Eclipse
  - http://svn.tuxfamily.org/viewvc.cgi/notepadplus_repository/trunk/PowerEditor/installer/themes/Zenburn.xml?revision=602&view=markup	Notepad++ (now bundled) 
  - http://github.com/mnem/fb-zenburnish	FlashBuilder4 
  - https://github.com/negativefix/zenburn	PhpStorm and WebStorm
  - https://github.com/baskerville/iTerm-2-Color-Themes	iTerm2
  - https://github.com/filmgirl/TextMate-Themes/blob/master/zenburn.tmTheme TextMate theme
  - https://github.com/colinta/zenburn TextMate theme
  - https://github.com/smlombardi/zenburn TextMate - recent fork

## anrxc Adrian C collection 

From:
http://sysphere.org/~anrxc/j/articles/zenburn/index.html - Adrian C. (anrxc)
http://sysphere.org/~anrxc/j/archives/2009/03/08/zenburn_color_scheme/index.html

  - http://awesome.naquadah.org/wiki/Zenburn_Theme	Awesome theme
  - http://git.sysphere.org/awesome-configs/tree/icons	Icons for theme
  - http://git.sysphere.org/dotfiles/tree/pinerc	Alpine / Pine RC
  - http://sysphere.org/gallery/alpine-zenburn	Alipne Screenshots
  - http://git.sysphere.org/dotfiles/tree/zshrc	Shell init file
  - http://git.sysphere.org/dotfiles/tree/vimperator/colors/zenburn.vimp	Vimperator
  - http://git.sysphere.org/dotfiles/tree/config/roxterm.sourceforge.net/Colours/Zenburn	RoxTerm
  - http://git.sysphere.org/dotfiles/tree/purple/gtkrc-2.0	Pidgin
  - https://bbs.archlinux.org/viewtopic.php?pid=782433	Gajim
  - http://sysphere.org/~anrxc/local/sources/color-theme-zenburn-orgmode.patch	Emacs with Orgmode Patch
  - http://git.sysphere.org/dotfiles/tree/Xdefaults	Xdefaults for various apps within this file.


##  Other File Sources 

Most of the following are traced from the comments on the original article. If any of these are wrongly named, blame @mildlydiverting (or ask her to change this)
   
  - http://koti.kapsi.fi/~juhtolv/configs/ctheme/	Ctheme
  - http://dotfiles.org/~jbromley/.Xresources	Terminals/Emacs urxvt .Xresources
  - http://emacs-fu.blogspot.co.uk/2011/05/porting-zenburn-theme-to-emacs-24.html	Emacs 24
  - http://trovao.droplinegnome.org/stuff/dotmuttrc	Mutt256
  - http://twinside.free.fr/dotProject/?p=125	Windows CMD
  - http://www.darkrune.org/blog/?p=213	PuTTY
  - http://mavis.anu.edu.au/ubuntu/zenburn-gnome-terminal/	Gnome Terminal (404)
  - http://theelitist.net/customized-zenburn-palette-for-gnome-terminal	Gnome Terminal 
  - http://www.mesimian.com/zenburn-color-theme-for-gnome-terminal/	Gnome Terminal 
  
  - http://kde-look.org/content/show.php/zenburn+-+eye-gentle+Kate+color+scheme?content=66209	KDE3 zenburn - eye-gentle Kate color scheme 0.1  
  - http://kde-look.org/content/show.php/Zenburn?content=78681	KDE3 Zenburn 1.2 KDE Color Scheme 
  - http://www.kde-look.org/content/show.php/KDE+4+for+Yakuake?content=78655	KDE 4 for Yakuake 1.0  
  - http://vemod.net/zenburn-for-konsole	KDE Konsole 1.6
  - http://usrlocalbin.blogspot.co.uk/2008/04/zenburn-for-konsole-redux.html	KDE4 Konsole 2
  - http://www.phacks.net/zenburn-colorscheme-for-komodo-edit_ide/	KomodoEdit IDE

  - http://blog.edwards-research.com/2009/11/color-schemes-for-eclipse-cdt-4/	eclipseCDT
  - http://slinky.imukuppi.org/2009/06/21/zenburn-for-easyeclipse-for-python-131/	Easy eclipse for python (instructions)
  - https://gist.github.com/748084	Zenburn theme for PyDev editor under Eclipse Helios 
  - http://www.eclipsecolorthemes.org/?view=theme&id=2	Eclipse Colour Themes
  
  - http://svn.textmate.org/trunk/Themes/	TextMate bundled theme
  - http://echonull.colinta.com/null/you-probably-googled-zenburn-textmate/ (or repo above)	TextMate - alternative theme
  - http://bergie.iki.fi/blog/zenburn_colors_for_php_editing_in_subethaedit/	SubEthaEdit info (Also works for Coda)
    
  - http://www.codinghorror.com/blog/2006/09/is-your-ide-hot-or-not.html	VisualStudio2005
  - http://writebypen.blogspot.co.uk/2010/01/color-scheme-for-visual-studio-zenburn.html	VisualStudio
  - http://studiostyl.es/schemes/zenburn-2010	VisualStudio, C# / HTML/ASP.Net/CSS/JS / Razor / XML / XAML
  - http://ijin.net/misc/ZenburnConsolasVS2008.vssettings	Visual Studio 2008
  - http://forums.netbeans.org/topic29869.html	Netbeans (404?)
  - http://slinky.imukuppi.org/2009/07/25/zenburn-for-scite-v178/	SciTE v. 1.78.
  
  - http://awesome.naquadah.org/wiki/Zenburn_Theme	Awesome
  - http://slinky.imukuppi.org/zenburn/Zenburn.gpl	Gimp Palette
  - http://elijahr.blogspot.co.uk/2008/12/zenburn-blogger-template-with-syntax.html	Blogger template
  - http://userstyles.org/styles/1603/dark-zenburn-global-style	UserStyle for Firefox/Stylish
  - http://noiseandheat.com/blog/2010/01/fb-zenburnish-a-zenburn-inspired-colour-scheme-for-flashbuilder-4/	FlashBuilder4
  - http://itlivewire.com/devblog/2010/02/04/zenburn-dreamweaver/	Dreamweaver
  - http://www.vim.org/scripts/script.php?script_id=2648	DarkBurn
  - http://www.tllilleh.com/Software/ZenburnPluginForEpsilon	Epsilon
  - http://mgep.ath.cx/zenburn.xml	QTCreator
  - http://www.billzajac.com/wordpress/articles/2010/12/28/windows-is-nicer-with-mintty/	Mintty
  - http://www.box.com/shared/dnj42nqyow	EmEditor
  - http://tiles.mapbox.com/mapbox/map/mapbox-zenburn	mapbox

# Credits for Ports

Credit duly given to all of the port authors. Thanks chaps!

# Licenses for Ports of Zenburn

Whilst the original Zenburn is released under the GPL, please check any licensing conditions of ports, just in case.

[ENDS]