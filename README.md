hellaTeX
========

Use basic.sty with lualatex and biber.  

Use mystyle.sty with xelatex and biblatex.  

Usage
=====

To use basic.sty, have the line,

    \RequirePackage{basic.sty}

in the header of the main LaTeX file. Also, make sure that the directory
texmf is in the TeX path. This can be done by setting the shell
environment variable, TEXINPUTS to the path of texmf. In bash one can
append the following line to the `~/.bashrc` or `~/.bash_profile`:

    export TEXINPUTS=:$(realpath ~/.local/etc/texmf):

where the path `~/.local/etc/texmf` is only used as an example. Note
that `realpath` is redundant here, but it's important to realize that
TEXINPUTS requires an absolute path.  


