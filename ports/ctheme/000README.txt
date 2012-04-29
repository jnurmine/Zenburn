
Themes for ctheme

Author:
Juhapekka Tolvanen
http://iki.fi/juhtolv
juhtolv (at) iki (dot) fi

These are themes I created for ctheme. With ctheme you can quickly change
color palette of the Linux console.

I have realised that ctheme also works in xterm and PuTTY. Maybe it will
work in some some other apps, too. I don't know how it exactly works, but
it seems that it just outputs escape codes that change color palette of
terminal. Maybe that is the reason why it works in those aforementioned
programs. Probably any software that can handle those escape codes, works
with ctheme.

In PuTTY you an use ctheme this way: When you have started SSH-connection to
some computer having ctheme installed just run ctheme with theme of your
choice.


But anyway, ctheme is originally for Linux console.

Get that software called ctheme here:

http://sourceforge.net/projects/ctheme/

This may be a good way to change that shebang-line in the beginning of each
ctheme-file to point to /usr/local/bin/ctheme

for f in *.c[bt] ; do \
echo -e "1,s/\/usr\/bin\/ctheme/\/usr\/local\/bin\/ctheme/\nw\nq\n" \
| ed "${f}" \
; done

In my themes it already points to /usr/local/bin/ctheme instead of
/usr/bin/ctheme . It also possible to do this:

ctheme name_of_theme_file.ct

In that case shebang is just ignored.

About my themes:

"xterm16" was originally just a colourscheme for Vim. Later author created
X-resources that change colour-palette of xterm so that it is in line with
xterm16. I just took those X-resources and ported them to ctheme by hand.
Then the original author of xterm16-theme created both low-contrast- and
high-contrast-version of it.

"zenburn" started its life as a colourscheme for Vim. Later it was ported to
many other programs and also X-resources for xterm emerged. I took them and
ported them to ctheme by hand. Then I checked that original Vim-colorscheme in
order to find differences between its original and high-contrast settings:

---- Clip here ----
if exists("g:zenburn_high_Contrast")
      " use new darker background
      hi Normal          guifg=#dcdccc guibg=#1f1f1f
.
.
.
else
      " Original, lighter background
      hi Normal          guifg=#dcdccc guibg=#3f3f3f
.
.
.
endif
---- Clip here ----

With that information I was able to create high-contrast- and
low-contrast-versions of that ctheme. The only difference is the colour of so
called black: In high-contrast version "black" is closer to black. In
very-high-contrast version "black" is totally black.

"rxvt" is probably made according default X-resources provided with pristine
source code of rxvt. It makes your linux console look like the default colors
of rxvt.

"xterm-debian" is made according to default X-resources of xterm in Debian
GNU/Linux.

"xterm-redhat" is made according to default X-resources of xterm in Red Hat
Linux.


