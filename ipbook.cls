%% This is file `ipbook.cls' (edited `ip-book-cdm.cls' file version)
%% 
%% LaTeX 2e class file for the processing of LaTeX2e files
%% of the following International Press book series:
%%
%% Harvard CMSA Series in Mathematics (CMSA)
%% Current Developments in Mathematics (CDM)
%% Surveys in Differential Geometry (SDG)
%%
%% Macros are maintained by Lolita Tolen\.{e}, VTeX Ltd., Lithuania
%% for International Press, U.S.A.
%% Please submit bugs or your comments to latex-support@vtex.lt
%%
%% This class file loads standard "amsproc.cls" with appropriate settings 
%%
%% You are free to use this style file as you see fit, provided
%% that you do not make changes to the file.
%% If you DO make changes, you are required to rename this file.
%%
%% It may be distributed under the terms of the LaTeX Project Public
%% License, as described in lppl.txt in the base LaTeX distribution.
%% Either version 1.0 or, at your option, any later version.
%%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%

\NeedsTeXFormat{LaTeX2e}[1995/06/01]
\ProvidesClass{ipbook}[2019/01/23 v1.1, driver class for IP book series]

\DeclareOption{cmsa}{%
    \def\series@id{cmsa}%
    \def\@publisher@name{International Press of Boston}%
    \def\seriesname{CMSA Series in Mathematics}%
    }
\DeclareOption{cdm}{%
    \def\series@id{cdm}%
    \def\ISSN{1089-6384}%
    \def\seriesname{Current Developments in Mathematics}%
    }
\DeclareOption{sdg}{%
    \def\series@id{sdg}%
    \def\ISSN{1052-9233}%
    \def\seriesname{Surveys in Differential Geometry}%
    }

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsproc}}
\PassOptionsToClass{11pt}{amsproc}
\ProcessOptions

\@input{ipbook-vtex.cfg}

\LoadClass{amsproc}[2004/08/06]

\def\trimwidth{177.8mm}
\def\trimheight{254mm}

\AtBeginDvi{\special{papersize=\trimwidth,\trimheight}}

\hoffset=-1in
\voffset=-1in

\setlength\evensidemargin{\dimexpr((\trimwidth-\textwidth)/2)}
\setlength\oddsidemargin{\evensidemargin}
\setlength\topmargin{10.63mm}

\setlength{\headsep}{28pt}
\setlength{\footskip}{28pt}

\frenchspacing

% edit the volume year, as needed

\@ifundefined{@publisher@name}{\gdef\@publisher@name{International Press}}{}
\copyrightinfo{\,\number\year}{\@publisher@name}

\def\publname{\csname seriesname\endcsname}%

\newcommand{\setpublicationname}{%
  \hrule width 0pt
  \vspace{-45pt}
  \procart@logo
  \vspace{45pt}}


\newcommand{\tocqchapter}[2]{%
  \noindent \emph{#1}\hfill #2\par}

\newcommand{\tocqchapterauthor}[3]{%
  \noindent \emph{#1}\\
  #2\hfill #3\par}

\renewcommand{\tocpart}[2]{%
  \vskip 16pt plus 4pt minus 2pt
  \noindent #1\newline
  \textbf{#2}\par}

\renewcommand{\tocchapter}[3]{%
  \vskip 8pt plus 3pt minus 1pt
  \noindent \textbf{#1}\\
  \textsc{#2}\hfill #3\par}

\setcounter{tocdepth}{1}


\def\startlocaldefs{\makeatletter}
\def\endlocaldefs{\makeatother}

\def\ip@firstpage#1{%
    \def\@tempa{#1}%
    \ifx\@tempa\@empty
    \else
        \global\c@firstpage=#1
        \global\c@lastpage=#1
        \global\c@page=#1
        \ignorespaces
    \fi
    }
\def\ip@lastpage#1{%
    \def\@tempa{#1}%
    \ifx\@tempa\@empty
    \else
        \global\c@lastpage=#1
        \ignorespaces
    \fi
    }

\@ifundefined{firstpage}{%
    \newcounter{firstpage}
    \let\firstpage\ip@firstpage
    }{}

\@ifundefined{lastpage}{%
    \newcounter{lastpage}
    \let\lastpage\ip@lastpage
    }{}

\endinput