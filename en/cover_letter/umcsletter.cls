%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
%% To jest plik ``umcsletter.cls'', bêd±cy modyfikacj± ``letter.cls''
%% - czê¶ci pakietu LaTeX2e. Dalszy tekst pochodzi z oryginalnego
%% pliku a moje przeróbki s± zaznaczone liniami z wykrzykników.
%%
%% W szczególno¶ci: 
%% - dodatkowe opcje dot. wymiarów strony (l. 134)
%% - dodatkowa opcja dot. stopnia pisma - 14pt (l. 172)
%% - inne opcje domy¶lne (l. 189)
%% - dodatkowy styl paginowania (l. 289)
%% - przedefiniowane makro ``\opening'' (l. 415)
%% - dodatkowe makro \dziennik (Liczba dziennika pism wychodz±cych) (l. 456)
%% - przedefiniowane makro ``\closing'' (l. 459)
%% - dodatkowe makro do wyró¿nieñ przez spacjowanie (l. 653)
%% - modyfikacja kilku parametrów ³amania (l. 664)
%% - domy¶lna pagina jest ``plainmod'' (l. 675)
%% Uwaga! numery wierszy nie bêd± aktualne po nastêpnych poprawkach!
%% 
%%                                               Piotr K³osowski
%%                                               Lublin, 07.06.1997 r.
%% Poprawki 1 XII 1997r (v. 0.5):
%% - komenda "\firma" generyje nadruk firmowy (l. 308 i nast.)
%% - zmienione makro "opening" (l. 520)
%% - zmienione makro "closing" (l. 554)
%% 
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
%% The original source files were:
%% 
%% letter.dtx  (with options: `letter')
%% 
%% 
%% This is a generated file. 
%% 
%% Copyright 1993 1994 1995 1996 
%% The LaTeX3 Project and any individual authors listed elsewhere 
%% in this file. 
%% 
%% For further copyright information, and conditions for modification 
%% and distribution, see the file legal.txt, and any other copyright 
%% notices in this file. 
%% 
%% This file is part of the LaTeX2e system. 
%% ---------------------------------------- 
%% This system is distributed in the hope that it will be useful, 
%% but WITHOUT ANY WARRANTY; without even the implied warranty of 
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
%% 
%% For error reports concerning UNCHANGED versions of this file no 
%% more than one year old, see bugs.txt. 
%% 
%% Please do not request updates from us directly. Primary 
%% distribution is through the CTAN archives. 
%% 
%% 
%% IMPORTANT COPYRIGHT NOTICE: 
%% 
%% You are NOT ALLOWED to distribute this file alone. 
%% 
%% You are allowed to distribute this file under the condition that it 
%% is distributed together with all the files listed in manifest.txt. 
%% 
%% If you receive only some of these files from someone, complain! 
%% 
%% 
%% Permission is granted to copy this file to another file with a 
%% clearly different name and to customize the declarations in that 
%% copy to serve the needs of your installation, provided that you 
%% comply with the conditions in the file legal.txt. 
%% 
%% However, NO PERMISSION is granted to generate or to distribute a 
%% modified version of this file under its original name. 
%% 
%% You are NOT ALLOWED to change this file. 
%% 
%% 
%% MODIFICATION ADVICE: 
%% 
%% If you want to customize this file, it is best to make a copy of 
%% the source file(s) from which it was produced. Use a different 
%% name for your copy(ies) and modify the copy(ies); this will ensure 
%% that your modifications do not get overwritten when you install a 
%% new release of the standard system. You should also ensure that 
%% your modified source file does not generate any modified file with 
%% the same name as a standard file. 
%% 
%% You can then easily distribute your modifications by distributing 
%% the modified and renamed copy of the source file, taking care to 
%% observe the conditions in legal.txt; this will ensure that other 
%% users can safely use your modifications. 
%% 
%% You will also need to produce your own, suitably named, .ins file to 
%% control the generation of files from your source file; this file 
%% should contain your own preambles for the files it generates, not 
%% those in the standard .ins files. 
%% 
%% The names of the source files used are shown above. 
%% 
%% 
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
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
%\ProvidesClass{letter}
%              [1996/01/20 v1.2t
%               Standard LaTeX document class]
\ProvidesClass{umcsletter}
%              [1997/06/07 v0.1
              [1997/12/01 v0.5
               NON-Standard LaTeX document class]
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
\newcommand\@ptsize{}
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
   {\setlength\paperheight {210mm}%
    \setlength\paperwidth  {148mm}}
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}%
    \setlength\paperwidth  {176mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}
   {\setlength\paperheight {10.5in}%
    \setlength\paperwidth  {7.25in}}
\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Inne podej¶cie do okre¶lania formatu strony (mo¿liwe: A5, B5, a4, A4) 
%
\newif\if@bookformat \@bookformatfalse
\newlength\bookformatheight
\newlength\bookformatwidth
\DeclareOption{A5format}{%
    \@bookformattrue
    \setlength{\bookformatheight}{38cc}%
    \setlength{\bookformatwidth}{25cc}%
    \setlength{\oddsidemargin}{1.5in}%
}
\DeclareOption {B5format}{%
  \@bookformattrue
  \setlength{\bookformatheight}{42cc}%
  \setlength{\bookformatwidth}{28cc}%
  \setlength{\oddsidemargin}{1in}%
  }
\DeclareOption{a4format}{%
  \@bookformattrue
  \setlength{\bookformatheight}{21cm}%
  \setlength{\bookformatwidth}{14cm}%
  \setlength{\oddsidemargin}{2in}%
  \hoffset=0.5in
  \voffset=-0.6in
  }
\DeclareOption{A4format}{%
  \@bookformattrue
  \setlength{\bookformatheight}{24cm}%
  \setlength{\bookformatwidth}{16cm}%
  \setlength{\oddsidemargin}{1.5in}%
  \hoffset=0.3in
  \voffset=-1.1in
  }
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Opcja wiêkszego stopnia pisma (14pt)
%
\DeclareOption{14pt}{\renewcommand\@ptsize{4}}
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
\if@compatibility
  \DeclareOption{twoside}{\@latexerr{No `twoside' layout for letters}%
                                   \@eha}
\else
  \DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\fi
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Inne opcje domy¶lne
%
%\ExecuteOptions{letterpaper,10pt,oneside,onecolumn,final}
\ExecuteOptions{a4paper,12pt,oneside,onecolumn,final}
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
\ProcessOptions
\input{size1\@ptsize.clo}
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
\if@bookformat
    \setlength\textwidth{\bookformatwidth}
    \@settopoint\textwidth
    \setlength\@tempdima{\bookformatheight}
    \divide\@tempdima\baselineskip
    \@tempcnta=\@tempdima
    \setlength\textheight{\@tempcnta\baselineskip}
    \addtolength\textheight{\topskip}
    \setlength{\evensidemargin}{\oddsidemargin}
\fi
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0.7em}
\setlength\parindent{0\p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setlength\headheight{12\p@}
\setlength\headsep   {45\p@}
\setlength\footskip{25\p@}
\if@compatibility
  \setlength\textwidth{365\p@}
  \setlength\textheight{505\p@}
\fi
\if@compatibility
  \setlength\oddsidemargin{53pt}
  \setlength\evensidemargin{53pt}
  \setlength\marginparwidth{90pt}
\else
  \setlength\@tempdima{\paperwidth}
  \addtolength\@tempdima{-2in}
  \addtolength\@tempdima{-\textwidth}
  \setlength\oddsidemargin   {.5\@tempdima}
  \setlength\evensidemargin  {\oddsidemargin}
  \setlength\marginparwidth  {90\p@}
\fi
\setlength\marginparsep {11\p@}
\setlength\marginparpush{5\p@}
\setlength\topmargin{27pt}
\setlength\footnotesep{12\p@}
\setlength{\skip\footins}{10\p@ \@plus 2\p@ \@minus 4\p@}
\if@twoside
  \def\ps@headings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@oddhead{\slshape\headtoname{} \ignorespaces\toname
                    \hfil \@date
                    \hfil \pagename{} \thepage}%
      \let\@evenhead\@oddhead}
\else
  \def\ps@headings{%
      \let\@oddfoot\@empty
      \def\@oddhead{\slshape\headtoname{} \ignorespaces\toname
                    \hfil \@date
                    \hfil \pagename{} \thepage}}
\fi
\def\ps@empty{%
  \let\@oddfoot\@empty\let\@oddhead\@empty
  \let\@evenfoot\@empty\let\@evenhead\@empty
  }
\def\ps@firstpage{%
  \let\@oddhead\@empty
  \def\@oddfoot{%
    \raisebox{-45\p@}[\z@]{%
      \hb@xt@\textwidth
      {%
        \hspace*{100\p@}%
        \ifcase \@ptsize\relax
          \normalsize
        \or
          \small
        \or
          \footnotesize
        \or
          \ErrorMessage{!!!}
        \or
          \scriptsize
        \fi
        \fromlocation \hfill \telephonenum
        }%
      }
    \hss
    }
  }
\def\ps@plain{%
  \let\@oddhead\@empty
  \def\@oddfoot{\normalfont\hfil\thepage\hfil}%
  \def\@evenfoot{\normalfont\hfil\thepage\hfil}%
  }
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% PLAINMOD. Pagina dolna ¶rodkowana ozdobna (z pauzami po bokach)
\def\ps@plainmod {%
    \let\@mkboth = \@gobbletwo
    \def\@evenhead {}%
    \def\@evenfoot {\mbox{}\hfil --- \rm\thepage\ ---\hfil}%
    \def\@oddhead {}%
    \def\@oddfoot {\mbox{}\hfil --- \rm\thepage\ ---\hfil}%
}
% FIRMOWY. Nadruk firmowy + Pagina dolna ¶rodkowana ozdobna
\newcommand{\@znakf}{\mbox{}}
\newcommand{\@nazwaf}{}
% FIRMA ``UMCS''
\newcommand{\@umcs}{umcs}
\newcommand{\@znakumcs}{\includegraphics[height = \@wysnag]{umcs.eps}}
\newcommand{\@nazwaumcs}{%
  \parbox[b][\@wysnag][c]{\@szernag}{\vss
    \fontfamily{antt}\selectfont
    \centerline{\LARGE 
      \resizebox{\@szernag}{!}{%
        UNIWERSYTET MARII CURIE-SK\L ODOWSKIEJ%
        }%
      }
    \vspace{3pt}
    \hrule
    \vspace{3pt}
    \centerline{\footnotesize
      20-031 Lublin, pl. Marii Curie-Sk\l odowskiej 5, 
      telex 064~32~23, faks (48-81) 537~51~02
      }
    \vss
    }
  }
% FIRMA ``WYDAWNICTWO'' (UMCS)
\newcommand{\@wyd}{wydawnictwo}
\newcommand{\@znakwyd}{\includegraphics[height = \@wysnag]{wyd_umcs.eps}}
\newcommand{\@nazwawyd}{
  \parbox[b][\@wysnag][c]{\@szernag}{\vss
    \fontfamily{antt}\selectfont
    \centerline{\LARGE 
      \resizebox{\@szernag}{!}{%
        Wydawnictwo Uniwersytetu Marii Curie-Sk\l odowskiej
        }%
      }
    \vspace{3pt}
    \hrule
    \vspace{3pt}
    \centerline{\footnotesize
      20-031 Lublin, pl. Marii Curie-Sk\l odowskiej 5, p. 1010, tel.~537~53~04
      }
    \vss
    }
  }
% FIRMA ``SKOK''
\newcommand{\@skok}{skok}
\newlength{\@wysnag}\setlength{\@wysnag}{.1\textwidth}
\newlength{\@szernag}\setlength{\@szernag}{1.05\textwidth}
\newcommand{\@znakskok}{\includegraphics[height = \@wysnag]{skok.eps}}
\newcommand{\@nazwaskok}{%
  \parbox[b][\@wysnag][c]{\@szernag}{\vss
    \fontfamily{antt}\selectfont
    \centerline{\Large 
      \resizebox{\@szernag}{!}{%
        Sp\'o\l dzielcza Kasa Oszcz\k edno\'sciowo-Kredytowa przy UMCS%
        }%
      }
    \vspace{3pt}
    \hrule
    \vspace{3pt}
    \centerline{\footnotesize
      20-031 Lublin, pl. Marii Curie-Sk\l odowskiej 5, p. 15, tel.~537~53~70
      }
    \vss
    }
  }
%%
\newcommand{\firma}[1]{%
  \ps@firmowy
  \setlength{\headheight}{.1\textwidth}
  \newcommand{\@firma}{#1}
  \ifx \@firma\@umcs 
    \let\@znakf\@znakumcs 
    \let\@nazwaf\@nazwaumcs 
  \else 
    \ifx \@firma\@wyd 
      \let \@znakf\@znakwyd 
      \let \@nazwaf\@nazwawyd
    \else 
      \ifx \@firma\@skok 
        \let \@znakf\@znakskok 
        \let \@nazwaf\@nazwaskok
      \else 
        \ClassError{umcsletter}{%
          Dostêpne s± jedynie nag³ówki "umcs", "wydawnictwo" i "skok"}{}
      \fi
    \fi
  \fi
  }
\def\ps@firmowy {%
    \let\@mkboth = \@gobbletwo
    \def\@evenhead {\llap{\@znakf \hskip1cc}\rlap{\@nazwaf}}%
    \def\@evenfoot {\mbox{}\hfil --- \rm\thepage\ ---\hfil}%
    \def\@oddhead {\llap{\@znakf \hskip1cc}\rlap{\@nazwaf}}%
    \def\@oddfoot {\mbox{}\hfil --- \rm\thepage\ ---\hfil}%
}
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
\newcommand*{\name}[1]{\def\fromname{#1}}
\newcommand*{\signature}[1]{\def\fromsig{#1}}
\newcommand*{\address}[1]{\def\fromaddress{#1}}
\newcommand*{\location}[1]{\def\fromlocation{#1}}
\newcommand*{\telephone}[1]{\def\telephonenum{#1}}
\name{}
\signature{}
\address{}
\location{}
\telephone{}

\newcommand*{\makelabels}{%
  \AtBeginDocument{%
    \let\@startlabels\startlabels
    \let\@mlabel\mlabel
    \if@filesw \immediate\write\@mainaux{\string\@startlabels}\fi
    }%
  \AtEndDocument{%
    \if@filesw\immediate\write\@mainaux{\string\clearpage}\fi
    }%
  }
\@onlypreamble\makelabels

\newenvironment{letter}[1]{\newpage
  \if@twoside 
    \ifodd\c@page \else\thispagestyle{empty} \hbox{}\newpage\fi
  \fi
  \c@page\@ne
  \interlinepenalty=200 % smaller than the TeXbook value
  \@processto{\leavevmode\ignorespaces #1}%
  }{%
  \stopletter\@@par
  \pagebreak\@@par
  \if@filesw
    \begingroup
      \let\\=\relax
      \let\protect\@unexpandable@protect
      \immediate\write\@auxout{%
        \string\@mlabel{\returnaddress}{\toname\\\toaddress}%
        }%
    \endgroup
  \fi
  }

\long\def\@processto#1{%
  \@xproc #1\\@@@
  \ifx\toaddress\@empty \else \@yproc #1@@@\fi
  }
\long\def\@xproc #1\\#2@@@{%
  \def\toname{#1}%
  \def\toaddress{#2}%
  }
\long\def\@yproc #1\\#2@@@{%
  \def\toaddress{#2}%
  }
\newcommand*{\stopbreaks}{%
  \interlinepenalty \@M
  \def\par{\@@par\nobreak}
  \let\\\@nobreakcr
  \let\vspace\@nobreakvspace
  }
\DeclareRobustCommand\@nobreakvspace{\@ifstar\@nobreakvspacex\@nobreakvspacex}

\def\@nobreakvspacex#1{%
  \ifvmode
    \nobreak\vskip #1\relax
  \else
    \@bsphack
    \vadjust{\nobreak\vskip #1}
    \@esphack
  \fi
  }
\def\@nobreakcr{%
  \vadjust{\penalty\@M}%
  \@ifstar{\@xnewline}{\@xnewline}%
  }
\newcommand*{\startbreaks}{%
  \let\\\@normalcr
  \interlinepenalty 200
  \def\par{\@@par\penalty 200\relax}%
  }
\newdimen\longindentation
\longindentation=.5\textwidth
\newdimen\indentedwidth
\indentedwidth=\textwidth
\advance\indentedwidth -\longindentation
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
%\newcommand*{\opening}[1]{%
%  \ifx\@empty\fromaddress
%    \thispagestyle{firstpage}%
%    {\raggedleft
%      \@date
%      \par
%      }%
%  \else  % home address
%    \thispagestyle{empty}%
%    {\raggedleft
%      \begin{tabular}{l}\ignorespaces
%        \fromaddress \\*[2\parskip]%
%        \@date 
%      \end{tabular}
%      \par
%      }%
%  \fi
%  \vspace{2\parskip}%
%  {\raggedright 
%    \toname \\ 
%    \toaddress 
%    \par
%    }%
%  \vspace{2\parskip}%
%  #1%
%  \par\nobreak
%  }
\newcommand*{\opening}[1]{%
  \par
  \noindent
  \begin{tabular}[t]{@{}l@{}}
    \ifx\@empty\fromaddress%       je¿eli wywo³ane makro \firma w
      \pagestyle{firmowy}  %       górnej paginie umieszczany jest znak firmowy
    \else                         
      \thispagestyle{empty}%       adres nadawcy w lewym górnym rogu
      \ignorespaces\fromaddress\\[\medskipamount]%
    \fi
    \makebox[.3\textwidth][l]{%
      \ifx\@dziennik\empty
      \else
        L. dz. \@dziennik
      \fi
      }%
  \end{tabular}%
  \hfill
  \begin{tabular}[t]{@{}l@{}}\ignorespaces
    \@date\\[2cc]
    \toname \\ 
    \toaddress\\
  \end{tabular}
  \par
  \vspace{3\medskipamount}%
  #1
  \par
  \vspace{\parskip}%
  \par\nobreak
  }
\def\@dziennik{}
\newcommand{\dziennik}[1]{\renewcommand{\@dziennik}{#1}}
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
\newcommand{\closing}[1]{\par\nobreak
  \vspace{\parskip}%
  \stopbreaks
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
%  \noindent
%  \ifx\@empty\fromaddress \else \hspace*{\longindentation}\fi
%  \parbox{\indentedwidth}{
%    \raggedright
%    \ignorespaces #1\\[4\medskipamount]%
%    \ifx\@empty\fromsig
%      \fromname
%    \else 
%      \fromsig 
%    \fi
%    \strut}%
%  \par
%  }
  #1
  \par
  \vspace{4\medskipamount}%
  {\raggedleft
    \begin{tabular}{@{}c@{}}
      \ifx\@empty\fromsig
        \fromname
      \else 
        \fromsig 
      \fi
    \end{tabular}%
    \hspace{.1\hsize}
    \par
    }
  }
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
\medskipamount=\parskip

\newcommand*{\cc}[1]{%
  \par\noindent
  \parbox[t]{\textwidth}{%
    \@hangfrom{\normalfont\ccname: }%
    \ignorespaces 
    #1
    \strut
    }
  \par
  }
\newcommand*{\encl}[1]{%
  \par\noindent
  \parbox[t]{\textwidth}{%
    \@hangfrom{\normalfont\enclname: }%
    \ignorespaces #1\strut}\par}
\newcommand*{\ps}{\par\startbreaks}
\newcommand*{\stopletter}{}
\newcommand*{\returnaddress}{}
\newcount\labelcount
\newcommand*{\startlabels}{\labelcount\z@
  \pagestyle{empty}%
  \let\@texttop\relax
  \topmargin -50\p@
  \headsep \z@
  \oddsidemargin -35\p@
  \evensidemargin -35\p@
  \textheight 10in
  \@colht\textheight  \@colroom\textheight \vsize\textheight
  \textwidth 550\p@
  \columnsep 26\p@
  \ifcase \@ptsize\relax
    \normalsize
  \or
    \small
  \or
    \footnotesize
  \fi
  \baselineskip \z@
  \lineskip \z@
  \boxmaxdepth \z@
  \parindent \z@
  \twocolumn\relax}
\let\@startlabels=\relax
\newcommand*{\mlabel}[2]{%
  \parbox[b][2in][c]{262\p@}{\strut\ignorespaces #2}%
  }
\let\@mlabel=\@gobbletwo
\setlength\leftmargini  {2.5em}
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\setlength\leftmarginv  {1em}
\setlength\leftmarginvi {1em}
\setlength\leftmargin    {\leftmargini}
\setlength  \labelsep  {5\p@}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\setlength\partopsep{0\p@}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\def\@listI{\setlength\leftmargin{\leftmargini}
            \setlength\parsep {0\p@}%
            \setlength\topsep {.4em}%
            \setlength\itemsep{.4em}}
\let\@listi\@listI
\@listi
\def\@listii {\setlength  \leftmargin{\leftmarginii}%
              \setlength  \labelwidth{\leftmarginii}%
              \addtolength\labelwidth{-\labelsep}}
\def\@listiii{\setlength  \leftmargin{\leftmarginiii}%
              \setlength  \labelwidth{\leftmarginiii}%
              \addtolength\labelwidth{-\labelsep}%
              \setlength  \topsep    {.2em}%
              \setlength  \itemsep   {\topsep}}
\def\@listiv {\setlength  \leftmargin{\leftmarginiv}%
              \setlength  \labelwidth{\leftmarginiv}%
              \addtolength\labelwidth{-\labelsep}}
\def\@listv  {\setlength  \leftmargin{\leftmarginv}%
              \setlength  \labelwidth{\leftmarginv}%
              \addtolength\labelwidth{-\labelsep}}
\def\@listvi {\setlength  \leftmargin{\leftmarginvi}%
              \setlength  \labelwidth{\leftmarginvi}%
              \addtolength\labelwidth{-\labelsep}}
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{$\m@th\bullet$}
\newcommand\labelitemii{\normalfont\bfseries --}
\newcommand\labelitemiii{$\m@th\ast$}
\newcommand\labelitemiv{$\m@th\cdot$}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*{\descriptionlabel}[1]{\hspace\labelsep
                                \normalfont\bfseries #1}

\newenvironment{verse}
               {\let\\=\@centercr
                \list{}{\setlength\itemsep{\z@}%
                        \setlength\itemindent{-15\p@}%
                        \setlength\listparindent{\itemindent}%
                        \setlength\rightmargin{\leftmargin}%
                        \addtolength\leftmargin{15\p@}}%
                \item[]}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\setlength\listparindent{1.5em}%
                        \setlength\itemindent{\listparindent}%
                        \setlength\rightmargin{\leftmargin}}%
                \item[]}
               {\endlist}
\newenvironment{quote}
               {\list{}{\setlength\rightmargin{\leftmargin}}%
                \item[]}
               {\endlist}

\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\renewcommand\theequation{\@arabic\c@equation}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\relax}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\relax}
\DeclareRobustCommand*{\cal}{\@fontswitch{\relax}{\mathcal}}
\DeclareRobustCommand*{\mit}{\@fontswitch{\relax}{\mathnormal}}
\renewcommand\footnoterule{%
  \kern-\p@
  \hrule \@width .4\columnwidth
  \kern .6\p@}
\long\def\@makefntext#1{%
    \noindent
    \hangindent 5\p@
    \hb@xt@5\p@{\hss\@makefnmark}#1}
\newcommand*{\ccname}{cc}
\newcommand*{\enclname}{encl}
\newcommand*{\pagename}{Page}
\newcommand*{\headtoname}{To}

\newcommand*{\today}{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{plain}
\pagenumbering{arabic}
\raggedbottom
\def\@texttop{\ifnum\c@page=1\vskip \z@ plus.00006fil\relax\fi}
\onecolumn
%------------------------------------------------------------------------
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% SPACJOWANIE - uwaga: odstêpy miêdzywyrazowe nale¿y wymuszaæ komend± "\ "!
\long\def\spac#1{{\insertspace#1\end}}
\def\insertspace #1{%
    \ifx #1\end
        \let\next = \relax
    \else
        \,#1%
        \let\next = \insertspace
    \fi
    \next
}
% Propozycja parametrów steruj±cych ³amaniem akapitów i stron
\clubpenalty=10000
\widowpenalty=10000
\pretolerance=1000
\tolerance=2000
\hbadness=2000
\vbadness=2000
\hfuzz=3pt

% Pagina dolna ¶rodkowana z pauzami po bokach
\ps@plainmod
%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
\endinput
%% 
%% End of file `letter.cls'.
