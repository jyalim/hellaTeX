date_fmt=$(date "+%F")

cat << ____EOF
\documentclass{article}
\RequirePackage{basic}

\addbibresource{local.bib}

\setmainfont[
  BoldFont={IBM Plex Serif Bold},
  ItalicFont={IBM Plex Serif Italic},
  BoldItalicFont={IBM Plex Serif Bold Italic},
]{IBM Plex Serif}[Scale=0.9]

\def\preparer{Jason Yalim}
\def\preparerEmail{jyalim@asu.edu}

\def\preparing{\LaTeX{} Document}
\def\preparee{John Matrix}
\def\preparedDescript{Pencil Making}
\def\prepareeDate{${date_fmt}}       % TODO 

\newcommand{\mypagestyle}[1]{%
  {\fontSFPro\footnotesize{\pBlue\preparing\ \pDGray/ \preparer}%
  \hfill{\pGray {\pDGray\thepage} \textbackslash{} \pageref*{#1}}}
}

\def\pHT{{\fontSFPro\pHeaderThree{\preparer}{\textbf{\preparing}}{\prepareeDate}}}
\def\pHS{{\pHeaderSix{\preparer}{\preparerEmail}{%
  \preparing}{\preparee}{\preparedDescript}{\prepareeDate}}}

\input{lib/defs}

\begin{document}
  \pagestyle{fancy}
  \pHS
  %\pHT

%\frontmatter{\mypagestyle{lpfm}}
%\label{lpfm}~

\mainmatter{\mypagestyle{lpmm}}
%\required{}
% \begin{multicols}{2}


% \end{multicols}

%\section{Appendix}

\printbibliography
\label{lpmm}~

%\backmatter{\mypagestyle{lpbm}}
%\section{Appendix}
%\printbibliography
%\label{lpbm}~
\end{document}
____EOF
