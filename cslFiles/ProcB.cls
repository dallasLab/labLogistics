%%% LaTeX class for manuscripts submitted to the
%%% Royal Society (RS)
%%%
%%% version: 1.0 (24 February 2011)
%%%
%%% This document class is based on the "article" class file.
%%% Following additional packages are required:
%%% amsmath amssymb amsfonts amsthm graphicx endfloat natbib setspace
%%% verbatim geometry bm url babel dcolumn stfloats balance lastpage
%%% xspace amscd rotating latexsym multicol array algorithm subfigure
%%%

%\NeedsTeXFormat{LaTeX2e}[2011/02/24]

\ProvidesClass{ProcB}[2000/05/19 v1.4b Standard LaTeX document class]

\newif\if@doublespace\@doublespacefalse
\newif\if@usetimes\@usetimesfalse
\newif\if@usemathtime\@usemathtimefalse

\DeclareOption{usetimes}{\@usetimestrue}
\DeclareOption{usemathtime}{\@usemathtimetrue}
\DeclareOption{doublespace}{\@doublespacetrue}
\DeclareOption{nospace}{\@doublespacefalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption,12pt,a4paper,twoside,onecolumn}{article}}
\DeclareOption{a4paper}{\PassOptionsToPackage{a4}{crop}}
\DeclareOption{centre}{\PassOptionsToPackage{center}{crop}}
\DeclareOption{crop}{\PassOptionsToPackage{cam}{crop}}
\DeclareOption{nocrop}{\PassOptionsToPackage{off}{crop}}


\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}

\ExecuteOptions{a4paper,centre,twoside,onecolumn,openbib}

\ProcessOptions

\LoadClass{article}

\voffset.01in
\hoffset.01in

\if@doublespace
  \RequirePackage[doublespacing]{setspace}
\fi

\RequirePackage{amssymb,amsfonts,amsthm,verbatim,graphicx}
\RequirePackage{xspace,amscd,rotating,latexsym,multicol,array,algorithm,subfigure,stfloats,balance,lastpage}
\RequirePackage[hyphens,obeyspaces]{url}
\RequirePackage[english]{babel}

\RequirePackage{dcolumn}
\newcolumntype{d}[1]{D{.}{.}{#1}}

\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xipt\@xiipt
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus0\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\renewcommand\small{%
   \@setfontsize\small\@ixpt{11}%
   \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand\footnotesize{%
   \@setfontsize\footnotesize\@ixpt{11}%
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\renewcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\renewcommand\large{\@setfontsize\large\@xiipt{14}}
\renewcommand\Large{\@setfontsize\Large\@xivpt{18}}
\renewcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\renewcommand\huge{\@setfontsize\huge\@xxpt{25}}
\renewcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}

\setlength{\paperheight}{320truemm}%
\setlength{\paperwidth}{250truemm}%

\setlength\headheight{7\p@}%
\setlength\topmargin{2pc}%
\addtolength\topmargin{8\p@}         %
\addtolength\topmargin{-1in}         % 

\setlength\topskip{8\p@}            % 
\setlength\headsep{26\p@}          % 
\addtolength\headsep{-\topskip}      % 

\setlength\footskip{23\p@}           % 
\setlength\maxdepth{.02\topskip}      % 

\setlength\textwidth{38pc}           % 

\setlength\textheight{49\baselineskip}       % 
\addtolength\textheight{-1.9pt}    % 

%\setlength\marginparsep{6\p@}
%\setlength\marginparpush{8\p@}
%\setlength\marginparwidth{4.2pc}

\setlength\oddsidemargin{5mm}
\addtolength\oddsidemargin{-0.5in}    % 
\setlength\@tempdima{\paperwidth}
\addtolength\@tempdima{-\textwidth}
\addtolength\@tempdima{-21mm}
\setlength\evensidemargin{5mm}
\addtolength\evensidemargin{-0.5in}

\setlength\columnsep{15\p@}          % 
\setlength\columnseprule{0\p@}      % 

\if@doublespace
\setlength\textheight{38\baselineskip}
\fi

\usepackage[T1]{fontenc}

\if@usetimes
  \RequirePackage{times}
\fi
\if@usemathtime
  \RequirePackage{mathtime}
\fi

\RequirePackage{bm}
\RequirePackage[tbtags]{amsmath}
\numberwithin{equation}{section}

\@lowpenalty   51%
\@medpenalty  151%
\@highpenalty 301%

\clubpenalty 10000%
\widowpenalty 10000%

\displaywidowpenalty 100%
\predisplaypenalty   10000%
\postdisplaypenalty  2500%

\interlinepenalty 0%

\brokenpenalty 10000%

\hyphenpenalty=10000

\AtBeginDocument{%
\@ifpackageloaded{amsthm}{%
\def\thm@indent{\hbox to \parindent{}}%
\thm@headfont{\sc}
\def\proofname{\hbox to \parindent{}Proof}%
\def\qedsymbol{$\blacksquare$}}{}%
\newtheorem{theorem}{Theorem}
\newtheorem{proposition}{Proposition}
\newtheorem{definition}{Definition}
\newtheorem{lemma}{Lemma}

\theoremstyle{remark}
\newtheorem{remark}{Remark}
}
    
\def\jname#1{\gdef\@jname{#1}}
\def\jdoi#1{\gdef\@jdoi{#1}}

\def\@jname{Proc. R. Soc. A}%centerline
\def\@jpages{\thepage--\pageref{LastPage}}%
\def\@jdoi{doi: 10.1098/rspa.}%
\def\@artnum{00000000}%
\def\artnum#1{\def\@artnum{#1}}%

\def\bibitem{\@ifnextchar[\@lbibitem\@bibitem}
\def\@lbibitem[#1]#2{\item\if@filesw
      {\let\protect\noexpand
       \immediate
       \write\@auxout{\string\bibcite{#2}{#1}}}\fi\ignorespaces}
\def\@bibitem#1{\item\if@filesw \immediate\write\@auxout
       {\string\bibcite{#1}{\the\value{\@listctr}}}\fi\ignorespaces}

\newdimen\bibindent
\setlength\bibindent{1pc}
\def\bibfont{\fontfamily{\rmdefault}\fontseries{m}\fontshape{n}\fontsize{9}{11}\selectfont}
\renewenvironment{thebibliography}[1]
     {\section*{\refname}%
     \addcontentsline{toc}{section}{\refname}%
      \vspace*{-5.5pt}%
      \bibfont
      \list{}
           {\itemsep      \z@\settowidth\labelwidth{}
            \leftmargin\labelwidth
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\renewcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty


\def\titlepagefooter{\parbox{\textwidth}{%
\scriptsize \textit{\@jname}\ \@jpages;\ \@jdoi\@artnum\\%
\ifx\empty\@date\else\@date\vskip6pt\fi%
This journal is \copyright\ 2011 The Royal Society}}

\def\ps@plain{\let\@mkboth\@gobbletwo
     \let\@oddhead\@empty\def\@oddfoot{\reset@font\titlepagefooter\hfil}\let\@evenhead\@empty\let\@evenfoot\@oddfoot}

\def\ps@headings{%
    \let\@oddfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\markboth
    \def\sectionmark##1{%
      \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne
          \thesection\quad
        \fi
        ##1}}}}

\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\sectionmark\@gobble
    \let\subsectionmark\@gobble
    }

\renewcommand\maketitle{\par%
\@afterindentfalse%
  \begingroup
    \renewcommand\thefootnote{}%
    \def\@makefnmark{{{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\noindent{{\normalfont\@thefnmark}}##1}%
    \@afterindentfalse%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@
      \@maketitle%
    \fi%
    \thispagestyle{plain}%
    \@thanks%
  \endgroup%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax%
  \enlargethispage{-2pc}%
\@afterheading}

\def\abstractfont{\fontfamily{\rmdefault}\fontseries{m}\fontshape{n}\fontsize{10}{12}\selectfont\parindent1em}

\def\@maketitle{%
  \newpage
  \null
  \vskip50pt
  \noindent \centering \begin{minipage}{470pt}%
  \let\footnote\thanks%
  \parindent=0pt%
      {\fontfamily{\rmdefault}\fontseries{b}\fontshape{n}\fontsize{22}{20}\selectfont\mathversion{bold}\centering \@title \par}%
    \vskip10pt%
    {\fontfamily{\rmdefault}\fontseries{b}\fontshape{n}\fontsize{14}{12}\selectfont\centering\@author\vphantom{$^1$}\par}
    \ifx\@address\empty\else
        \vskip6pt%
        {\fontfamily{\rmdefault}\fontseries{m}\fontshape{it}\fontsize{10.5}{12}\selectfont\leavevmode\centering\vphantom{$^1$}\@address\par}
    \fi
\ifx\@abstract\empty\else%
        \vskip10pt
       {\abstractfont\@abstract\par}
        \vskip3pt%
   \fi    
   \ifx\@keywords\empty\else
        \vskip8pt
        {\fontfamily{\rmdefault}\fontseries{b}\fontshape{n}\fontsize{8.5}{10}\selectfont\centering\mathversion{bold}\@keywords\par}
    \fi
    \ifx\@classification\empty\else
\vskip4pt
      {\fontsize{8}{9}\selectfont\centering\@classification\par}%
    \fi
            \vskip-4pt
        \centerline{\vrule height.5pt depth0pt width590pt}

  \end{minipage}%
  \par
  \vskip3pc
  }

\def\title{\@ifnextchar[{\@title@wst@}{\@title@nst@}}
\def\@title@wst@[#1]{\shorttitle{#1}\@title@assign@}
\def\@title@nst@#1{\shorttitle{#1}\@title@assign@{#1}}
\def\@title@assign@#1{\def\@title{#1}}

\def\shorttitle#1{\gdef\@shorttitle{#1}}

\def\author{\@ifnextchar[{\@author@wst@}{\@author@nst@}}
\def\@author@wst@[#1]{\shortauthor{#1}\@author@assign@}
\def\@author@nst@#1{\shortauthor{#1}\@author@assign@{#1}}
\def\@author@assign@#1{\gdef\@author{#1}}

\def\shortauthor#1{\gdef\@shortauthor{#1}}\shortauthor{}

\def\date#1{\def\@date{#1}}\date{}

\long\gdef\abstract#1{\global\gdef\@abstract{\noindent#1\par}}\gdef\@abstract{}
\long\gdef\address#1{\global\gdef\@address{#1}}\gdef\@address{}%
\long\gdef\corres#1{\global\gdef\@corres{\vskip-\baselineskip\vskip2pt#1}}\gdef\@address{}%

\def\keywordsname{Key words}%
\long\gdef\keywords#1{\global\gdef\@keywords{\textit{\keywordsname}:\ #1.}}\gdef\@keywords{}%

\def\@classification{}
\newcommand\classification[2]{%
     \gdef\@classification{{\noindent\textit{#1}:\enskip #2\par}}}%

%\renewcommand\thesubsection{\@alph\c@subsection}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\sectionfont{\fontfamily{\rmdefault}\fontseries{b}\fontshape{n}\fontsize{11}{12}\selectfont}%\leftskip0pt plus1fill\rightskip0pt plus1fill\mathversion{bold}}
\def\subsectionfont{\fontfamily{\rmdefault}\fontseries{m}\fontshape{it}\fontsize{11}{12}\selectfont}%\leftskip0pt plus1fill\rightskip0pt plus1fill}
\def\subsubsectionfont{\fontfamily{\rmdefault}\fontseries{m}\fontshape{it}\fontsize{11}{12}\selectfont}


\renewcommand\section{\def\@seccntformat##1{\csname the##1\endcsname.\hskip.5em}\@startsection {section}{1}{\z@}%
                                   {-24pt \@plus -1ex \@minus -.2ex}%
                                   {12pt}%
                                   {\sectionfont}}
\renewcommand\subsection{\def\@seccntformat##1{\textup{}\csname the##1\endcsname\textup{}.\,}\@startsection{subsection}{2}{\z@}%
                                     {12pt \@plus 1ex \@minus .2ex}%
                                     {6pt}%
                                     {\subsectionfont}}
\renewcommand\subsubsection{\def\@seccntformat##1{\textup{\csname the##1\endcsname\textup.}\,}\@startsection{subsubsection}{3}{\z@}%
                                     {12pt \@plus 1ex \@minus .2ex}%
                                     {6pt}%
                                     {\subsubsectionfont}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\captionfont{\fontfamily{\rmdefault}\fontseries{m}\fontshape{n}\fontsize{9}{11}\selectfont}

\setlength{\abovecaptionskip}{12pt}
\setlength{\belowcaptionskip}{3pt}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\captionfont #1.\hskip2.5pt#2}%
  \ifdim \wd\@tempboxa <\hsize
        \global \@minipagefalse
        \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \else
    \ifdim \wd\@tempboxa >1.99\hsize
        {\captionfont #1.\hskip2.5pt #2\par}
    \else
        {\captionfont\leftskip\fill\rightskip-\fill\parfillskip\stretch2 #1.\hskip2.5pt #2\par}
    \fi
  \fi
  \vskip\belowcaptionskip}

\long\def\tabnote#1{\vskip6pt#1\par}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcounter{appendix}
\renewcommand\appendix{\par
  \setcounter{secnumdepth}{0}
  \setcounter{equation}{0}%
  \setcounter{table}{0}%
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \refstepcounter{appendix}
  \renewcommand\theequation{\@Alph\c@appendix.\@arabic\c@equation}
  \renewcommand\thetable{\@Alph\c@appendix.\arabic{table}}
  \renewcommand\thefigure{\@Alph\c@appendix.\arabic{figure}}
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\footnoterule{\vskip-3\p@ plus2pt minus2pt
\hrule \@width 2pc \kern 9.5\p@}
\renewcommand\@makefntext[1]{\hskip1em{\smash{\@makefnmark}}\hskip.4em#1}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setlength{\jot}{\p@}
\medmuskip=4mu%
\thickmuskip=3.5mu%

\DeclareSymbolFont{EulerExtension}{U}{euex}{m}{n}
\DeclareMathSymbol{\intop}{\mathop}{EulerExtension}{"52}
\DeclareMathSymbol{\ointop}{\mathop}{EulerExtension}{"48}

\vbadness=9999
\tolerance=9999
\clubpenalty=10000
\widowpenalty=10000
\setlength{\emergencystretch}{3em}

\setlength\parskip{0\p@ \@plus 0\p@}

\@ifpackageloaded{setspace}{
\long\def\@footnotetext#1{%
  \insert\footins{%
    \def\baselinestretch {\setspace@singlespace}%
    \setstretch {2}
    \reset@font\footnotesize
    \interlinepenalty\interfootnotelinepenalty
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth
    \@parboxrestore
    \protected@edef\@currentlabel{%
      \csname p@footnote\endcsname\@thefnmark
    }%
    \color@begingroup
      \@makefntext{%
        \rule\z@\footnotesep\ignorespaces#1\@finalstrut\strutbox}%
    \color@endgroup}}
\skip\footins 20pt plus4pt minus4pt
\setlength\footnotesep{.75\baselineskip}
%
\long\def\@makecaption#1#2{%
  \setstretch {1.5}
  \vskip\abovecaptionskip
  \sbox\@tempboxa{{#1}. #2}%
  \ifdim \wd\@tempboxa >\hsize
    {{#1}. #2\par}
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\box\@tempboxa}%
  \fi
  \vskip\belowcaptionskip}
\def\@setsize#1#2#3#4{%
  % Modified 1993.04.07--GDG per KPC
    \setstretch {2}
  \@nomath#1%
  \let\@currsize#1%
  \baselineskip #2%
  \baselineskip \baselinestretch\baselineskip
  \parskip \baselinestretch\parskip
  \setbox\strutbox \hbox{%
    \vrule height.7\baselineskip
           depth.3\baselineskip
           width\z@}%
  \skip\footins \baselinestretch\skip\footins
  \normalbaselineskip\baselineskip#3#4}
\def\arraystretch{1.5}
}{}


\def\fps@eqnfloat{!tp} 
\def\ftype@eqnfloat{4} 
\newenvironment{eqnfloat} 
               {\@float{eqnfloat}} 
               {\end@float} 
\newenvironment{eqnfloat*} 
               {\@dblfloat{eqnfloat}} 
               {\end@dblfloat} 


\pagestyle{myheadings}
\pagenumbering{arabic}
\if@twoside
\else
  \raggedbottom
\fi
\if@twocolumn
  \twocolumn
  \sloppy
\else
  \onecolumn
\fi

\frenchspacing
    
\def\ack#1{{\vskip5.5pt\noindent \fontsize{9}{11}\selectfont\section*{Acknowledgment}#1}}

\endinput

