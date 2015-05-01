date_fmt=$(date "+%Y - %m - %d")

cat << ____EOF
\documentclass{article}
\RequirePackage{basic}

%\addbibresource{local.bib}

\def\preparer{Jason Yalim}
\def\preparerEmail{jyalim@asu.edu}

\def\preparing{\LaTeX{} Document}
\def\preparee{John Matrix}
\def\preparedDescript{Pencil Making}
\def\prepareeDate{${date_fmt}}       % TODO 

\newcommand{\mypagestyle}[1]{%
  {\ltsf\footnotesize{\pGray\preparing\ -- \preparer}%
  \hfill{\pGray Page {\pDGray\thepage} of \pageref*{#1}}}
}
\def\pHS{{\pHeaderSix{\preparer}{\preparerEmail}{%
  \preparing}{\preparee}{\preparedDescript}{\prepareeDate}}}
\def\pHT{{\pHeaderThree{\preparer}{\preparerEmail}{\prepareeDate}}}

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
%\backmatter{\mypagestyle{lpbm}}
%\section{Appendix}
%\printbibliography
\label{lpmm}~
%\label{lpbm}~
%\backmatter{\mypagestyle{lpbm}}
%\section{Appendix}
%\printbibliography
\end{document}
____EOF
