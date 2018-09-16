\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dallasLab}

\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{ifthen}
\RequirePackage{calc}
\AtEndOfClass{\RequirePackage{microtype}}

\newif\if@peerjlineno
\DeclareOption{lineno}{\@peerjlinenotrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions*
\LoadClass{article}

\RequirePackage{times}      % Loads the Times-Roman Fonts
\RequirePackage{mathptmx}   % Loads the Times-Roman Math Fonts
\RequirePackage{lineno}     % For numbering the lines if lineno option is given

\if@peerjlineno\linenumbers\fi

\RequirePackage{ifpdf}
\RequirePackage{amsmath,amsfonts,amssymb}
\RequirePackage{graphicx,xcolor}
\RequirePackage{booktabs}
\RequirePackage{authblk}

\RequirePackage[left=2cm,%
                right=2cm,%
                top=2.25cm,%
                bottom=2.25cm,%
                headheight=12pt,%
                letterpaper]{geometry}%

\RequirePackage[labelfont={bf,sf},%
                labelsep=period,%
                justification=raggedright]{caption}
                

\RequirePackage{natbib}


% headers and footers
\RequirePackage{fancyhdr}  % custom headers/footers
\RequirePackage{lastpage}  % Number of pages in the document
\pagestyle{fancy}          % Enables the custom headers/footers

\lhead{}
\rhead{}

\def\citation#1{\def\@citation{#1}}
\newcommand{\printcitation}{\@citation}


% Headers
\chead{\@citation}%

% Footers
%\rfoot{\small\sffamily\bfseries\thepage}%
\renewcommand{\headrulewidth}{0pt}% % No header rule
\renewcommand{\footrulewidth}{0pt}% % No footer rule

%
% section/subsection/paragraph set-up
%
\RequirePackage[explicit]{titlesec}
\titleformat{\section}
  {\color{color1}\large\sffamily\bfseries}
  {\thesection}
  {0.5em}
  {\MakeUppercase{#1}}
  []
\titleformat{name=\section,numberless}
  {\color{color1}\large\sffamily\bfseries}
  {}
  {0em}
  {\MakeUppercase{#1}}
  []  
\titleformat{\subsection}
  {\sffamily\bfseries}
  {\thesubsection}
  {0.5em}
  {#1}
  []
\titleformat{\subsubsection}
  {\sffamily\small\bfseries\itshape}
  {\thesubsubsection}
  {0.5em}
  {#1}
  []    
\titleformat{\paragraph}[runin]
  {\sffamily\small\bfseries}
  {}
  {0em}
  {#1} 
\titlespacing*{\section}{0pc}{3ex \@plus4pt \@minus3pt}{5pt}
\titlespacing*{\subsection}{0pc}{2.5ex \@plus3pt \@minus2pt}{0pt}
\titlespacing*{\subsubsection}{0pc}{2ex \@plus2.5pt \@minus1.5pt}{0pt}
\titlespacing*{\paragraph}{0pc}{1.5ex \@plus2pt \@minus1pt}{10pt}

%
% tableofcontents set-up
%
\usepackage{titletoc}
\contentsmargin{0cm}
\titlecontents{section}[\tocsep]
  {\addvspace{4pt}\small\mdseries\sffamily}
  {\contentslabel[\thecontentslabel]{\tocsep}}
  {}
  {\hfill\thecontentspage}
  []
\titlecontents{subsection}[\tocsep]
  {\addvspace{2pt}\small\sffamily}
  {\contentslabel[\thecontentslabel]{\tocsep}}
  {}
  {\ \titlerule*[.5pc]{.}\ \thecontentspage}
  []
\titlecontents*{subsubsection}[\tocsep]
  {\footnotesize\sffamily}
  {}
  {}
  {}
  [\ \textbullet\ ]  
  
\RequirePackage{enumitem}

% Remove brackets from numbering in List of References
\renewcommand{\@biblabel}[1]{\bfseries\color{color3}\textsuperscript{[#1]}}


\def\xabstract{abstract}
\long\def\abstract#1\end#2{\def\two{#2}\ifx\two\xabstract 
\long\gdef\theabstract{\ignorespaces#1}
\def\go{\end{abstract}}\else
\typeout{^^J^^J PLEASE DO NOT USE ANY \string\begin\space \string\end^^J
COMMANDS WITHIN ABSTRACT^^J^^J}#1\end{#2}
\gdef\theabstract{\vskip12pt BADLY FORMED ABSTRACT: PLEASE DO
NOT USE {\tt\string\begin...\string\end} COMMANDS WITHIN
THE ABSTRACT\vskip12pt}\let\go\relax\fi
\go}





% custom title page 
\renewcommand{\@maketitle}{%
{%
\thispagestyle{empty}%
\vskip-36pt%
{\raggedright\sffamily\bfseries\fontsize{20}{25}\selectfont \@title\par}%
\vskip12pt
{\raggedright\sffamily\mdseries\fontsize{12}{16}\selectfont  \@author\par}
\vskip1.5em%
\vskip18pt
\noindent
{\parbox{\dimexpr\linewidth-2\fboxsep\relax}{\color{color1}\large\sffamily\textbf{If using, please cite the published version of the article:}}}
}%
\vskip10pt\nolinenumbers
{%
\colorbox{color3}{%
\parbox{\dimexpr\linewidth-2\fboxsep\relax}{%
\large \@citation 
}%
}%
}%
{%
\vskip3em%
\noindent
{\parbox{\dimexpr\linewidth-2\fboxsep\relax}{\color{color1}\large\sffamily\textbf{ABSTRACT}}}
}%
\vskip10pt\nolinenumbers
{%
\noindent
\colorbox{color2}{%
\parbox{\dimexpr\linewidth-2\fboxsep\relax}{%
\sffamily\small\vskip1ex\if@peerjlineno\internallinenumbers\fi\theabstract
}%
}%
}%
\vskip25pt%
}%


%-----------------------------------------------
\setlength{\columnsep}{0.55cm} % Distance between the two columns of text
\setlength{\fboxrule}{0.75pt} % Width of the border around the abstract

\definecolor{color1}{RGB}{30,144,255} % Color of section headings
\definecolor{color2}{RGB}{255,232,210} % Color of the box behind the abstract
\definecolor{color3}{RGB}{186,255,216} % Color of the box behind the abstract
\newcommand{\keywordname}{Keywords:} % Defines the keywords heading name

\renewcommand\Authfont{\fontsize{12}{14}\usefont{OT1}{phv}{b}{n}}
\renewcommand\Affilfont{\fontsize{10}{12}\usefont{OT1}{phv}{b}{n}}

\newlength{\tocsep} 
\setlength\tocsep{1.5pc} 
\setcounter{tocdepth}{3} 

\usepackage{lipsum} % Required to insert dummy text
%-----------------------------------------------
%\let\oldbibliography\thebibliography
%\renewcommand{\thebibliography}[1]{%
%\addcontentsline{toc}{section}{\hspace*{-\tocsep}\refname}%
%\oldbibliography{#1}%
%\setlength\itemsep{0pt}%
%}
