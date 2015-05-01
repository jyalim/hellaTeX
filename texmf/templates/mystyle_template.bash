date_fmt=$(date "+%Y - %m - %d")

cat << ____EOF
\documentclass{article}

%\RequirePackage{mydefs}
\RequirePackage{mystyle}

\def\preparer{Jason Yalim}
\def\preparerEmail{jyalim@asu.edu}
\def\preparing{\LaTeX\ Document\ }        % TODO
\def\preparee{John Matrix}                % TODO
\def\preparedHeading{Pencil Making}       % TODO
\def\prepareeDate{${date_fmt}}            % TODO
\def\totalpages{5}                        % TODO
\def\mypagestyle{{\sulfont\pDGray\preparing\ -- \preparer\hfill{\pBlack%
  Page \arabic{page} of \totalpages}}}
\def\pHS{{\pHeaderSix{\preparer}{\preparerEmail}{%
  \preparing}{\preparee}{\preparedHeading}{\prepareeDate}}}
\def\pHT{{\pHeaderThree{\preparer}{\preparerEmail}{\prepareeDate}}}

\begin{document}
  \fontsize{09}{09}\selectfont
  \pagestyle{plain}
  \setcounter{page}{1}
  \renewcommand{\thepage}{\mypagestyle}
  \pHS
  %\pHT

  %\begin{multicols}{2}

  %\section*{\pSection{}{}}
  %\subsection*{\pPart{}{}}

% \begin{figure}[H] %
%   \centering
%   \sfl{}{4in}{\figa}
%   \\
%   \sfl{}{2in}{\figb}
%   \sfl{}{2in}{\figc}
%   \caption{Major Label}
%   \label{For referencing}
% \end{figure}

  %\end{multicols}
  %\myrule
  %\section*{\pSection{Appendix}{}}
\end{document}
____EOF
