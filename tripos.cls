%%
%% This is file `tripos.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% tripos.dtx  (with options: `class')
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tripos}
    [2024/02/02 Tripos exam class (Markus Kuhn)]
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\ExecuteOptions{draft}
\newif\ifcommonpackages
\newif\ifownpackages
\newif\ifsans
\newif\ifcrop
\DeclareOption{ownpackages}{\ownpackagestrue}
\DeclareOption{noownpackages}{\ownpackagesfalse}
\DeclareOption{commonpackages}{\commonpackagestrue}
\DeclareOption{nocommonpackages}{\commonpackagesfalse}
\DeclareOption{sans}{\sanstrue}
\DeclareOption{crop}{\croptrue}
\DeclareOption{oneside}{\@twosidefalse}
\DeclareOption{twoside}{\@twosidetrue}
\ExecuteOptions{twoside,commonpackages,noownpackages}
\ProcessOptions
\RequirePackage{pgfkeys}
\input{size12.clo}
\setlength\paperwidth {210mm}
\setlength\paperheight{297mm}
\setlength\voffset{0pt}
\setlength\topmargin{-53pt}
\setlength\headheight{12pt}
\setlength\headsep{67.5pt}
\setlength\textheight{664pt}
\setlength\parskip{\baselineskip}
\setlength\lineskip{1pt}
\setlength\normallineskip{1pt}
\setlength\footskip{2\parskip}
\raggedbottom
\newlength{\indentation}
\newlength{\numbergap}
\setlength\indentation{25pt}
\setlength\numbergap{12pt}
\setlength\hoffset{0pt}
\setlength\oddsidemargin{27.5pt}
\setlength\evensidemargin{\oddsidemargin}
\setlength\textwidth{432pt}
\setlength\parindent{0pt}
\ifcrop
\setlength\hoffset{-22mm}
\setlength\voffset{-32mm}
\setlength\paperwidth {170mm}
\setlength\paperheight{250mm}
\fi
\ifsans
\RequirePackage{helvet}
\RequirePackage[helvet]{sfmath}
\renewcommand{\familydefault}{\sfdefault}
\fi
\pretolerance=1000
\tolerance=2000
\hyphenpenalty=2000
\exhyphenpenalty=2000
\newcommand{\@listo}{
   \setlength\topsep{0pt}
   \setlength\partopsep{0pt}
   \setlength\parsep{\parskip}
   \setlength\itemsep{0pt}
   \setlength\leftmargin{\indentation}
   \setlength\labelsep{4pt}
   \setlength\labelwidth{\leftmargin}
   \addtolength\labelwidth{-\labelsep}
}
\renewcommand{\@listi  }{\@listo}
\renewcommand{\@listI  }{\@listo}
\renewcommand{\@listii }{\@listo}
\renewcommand{\@listiii}{\@listo}
\renewcommand{\@listiv }{\@listo}
\renewcommand{\@listv  }{\@listo}
\renewcommand\theenumi  {(\textit{\@alph\c@enumi})}
\renewcommand\theenumii {(\textit{\@roman\c@enumii})}
\renewcommand\theenumiii{(\@Alph\c@enumiii)}
\renewcommand\theenumiv {(\the\c@enumiv)}
\newcommand\a@theenumi  {(\@alph\c@enumi)}
\newcommand\a@theenumii {(\@roman\c@enumii)}
\newcommand\a@theenumiii{(\@Alph\c@enumiii)}
\newcommand\a@theenumiv {(\the\c@enumiv)}
\newcommand\labelenumi  {\makebox[\labelwidth][l]{\theenumi}}
\newcommand\labelenumii {\makebox[\labelwidth][l]{\theenumii}}
\newcommand\labelenumiii{\makebox[\labelwidth][l]{\theenumiii}}
\newcommand\labelenumiv {\makebox[\labelwidth][l]{\theenumiv}}
\renewcommand\p@enumii  {\theenumi}
\renewcommand\p@enumiii {\theenumi\theenumii}
\renewcommand\p@enumiv  {\p@enumiii\theenumiii}
\newcommand\labelitemi  {\makebox[\labelwidth][c]{\textbullet\hspace{-\labelsep}}}
\newcommand\labelitemii {\makebox[\labelwidth][c]{\textbf{\textendash}\hspace{-\labelsep}}}
\newcommand\labelitemiii{\makebox[\labelwidth][c]{\textasteriskcentered\hspace{-\labelsep}}}
\newcommand\labelitemiv {\makebox[\labelwidth][c]{\textperiodcentered\hspace{-\labelsep}}}
\newcommand\a@theenum{%
  \ifnum\@enumdepth>0\a@theenumi
  \ifnum\@enumdepth>1\a@theenumii
  \ifnum\@enumdepth>2\a@theenumiii
  \ifnum\@enumdepth>3\a@theenumiv\fi\fi\fi\fi}
\newenvironment{resumeenumerate}{\let\tmp@usecounter\usecounter
\def\usecounter##1{\@nmbrlisttrue\def\@listctr{##1}}
\enumerate\let\usecounter\tmp@usecounter
}{\endenumerate}
\newenvironment{compact}{\setlength{\parskip}{0.5\baselineskip}}{}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}
\pagenumbering{arabic}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\ifownpackages
  \DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
  \DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
  \DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
  \DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
  \DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
  \DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
  \DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
  \DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
  \DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\fi
\newcommand{\absize}{%
   \ifx\@currsize\normalsize\footnotesize\else  % test more likely sizes first
    \ifx\@currsize\small\scriptsize\else
     \ifx\@currsize\footnotesize\tiny\else
      \ifx\@currsize\large\small\else
       \ifx\@currsize\Large\normalsize\else
        \ifx\@currsize\LARGE\large\else
         \ifx\@currsize\scriptsize\tiny\else
          \ifx\@currsize\huge\Large\else
           \ifx\@currsize\Huge\LARGE
   \fi\fi\fi\fi\fi\fi\fi\fi\fi
}
\newcounter{paper}
\newcounter{section}
\newcounter{question}
\newcounter{origquestion}
\setcounter{paper}{1}
\setcounter{question}{1}
\newif\ifmetadata
\newif\ifanswers
\newif\iftopics
\newif\ifrenumberquestions
\newif\ifnewpage
\newif\ifnewsheet
\newif\ifrecordmarks
\newcommand*\triposset[1]{\pgfqkeys{/tripos}{#1}}
\newcommand*\triposget[1]{\pgfkeysvalueof{/tripos/#1}}
\newcommand\triposifempty[3]{\pgfkeysgetvalue{/tripos/#1}{\@value}%
  \ifx\@value\relax#2\else\ifx\@value\@empty#2\else#3\fi\fi}
\triposset{paper/.code={\setcounter{paper}{#1}}}
\triposset{question/.code={\ifrenumberquestions
    \setcounter{origquestion}{#1}\else
    \setcounter{question}{#1}\fi}}
\triposset{metadata/.is if=metadata,
           answers/.is if=answers,
           topics/.is if=topics,
           renumberquestions/.is if=renumberquestions,
           newpage/.is if=newpage,
           newsheet/.is if=newsheet,
           metadata=true,answers=false,topics=false,
           renumberquestions=false,
           newpage=true,newsheet=false}
\triposset{title/.initial={title=???},
           subtitle/.initial=,
           code/.initial={code=???},
           year/.initial={year=???},
           date/.initial={date=???},
           day/.style={date=#1 \triposget{year}},
           time/.initial={time=???},
           enddate/.initial=,
           endtime/.initial={endtime=???},
           subject/.initial={subject=???},
           rubrics/.initial={rubrics=???},
           rubrics2/.initial=,
           author/.initial={author=???},
           fullmarks/.style={totalmarks=#1}, % for backwards compatibility
           totalmarks/.initial=,
           totalmarkspaper/.initial=,
           recordmarks/.code={\ifrecordmarks\else\newwrite\@marksfile
             \immediate\openout\@marksfile\jobname.marks\recordmarkstrue\fi},
           recordmarks/.value forbidden}
\triposset{titlecentre/.initial=}
\triposset{titlebottomleft/.initial=}
\triposset{titlebottomright/.initial=}
\triposset{titlewarningwidth/.initial=278pt}
\triposset{titlewarning/.style={titlecentre={
    \fboxrule=3pt\fboxsep=1.8pt
      \fbox{\fboxrule=1.2pt\fboxsep=13pt
        \fbox{\parbox{\triposget{titlewarningwidth}}{\centerlastline
                                                     \large\bfseries #1}}}
}}}
\triposset{stationery requirements/.style={
  titlebottomleft={STATIONERY REQUIREMENTS\\\itshape #1}
}}
\triposset{special requirements/.style={
  titlebottomright={SPECIAL REQUIREMENTS\\\itshape #1}
}}
\newcommand\centerlastline{\leftskip=0pt plus .5fil
  \rightskip=0pt plus -.5fil
  \parfillskip=0pt plus 1fil}
\triposset{attempts/.style={rubrics2={Submit the answers in
      #1 \textbf{separate} bundles, each with its own cover sheet. On each
      cover sheet, write the numbers of \textbf{all} attempted questions,
      and circle the number of the question attached.
    }}}
\triposset{structure/.is choice}
\triposset{structure/1abc2d/.style={rubrics={Answer \textbf{one} question
      from each of Sections A, B and C, and \textbf{two} questions
      from Section D.
    }}}
\triposset{structure/5q/.style={rubrics={
      Answer \textbf{five} questions.}}}
\triposset{structure/3q/.style={rubrics={
      Answer \textbf{three} questions.}}}
\triposset{structure/aq/.style={rubrics={
      Answer \textbf{all} questions.
    }}}
\triposset{structure/3a1b40/.style={rubrics={
      Answer \textbf{three} questions from Section A\\
      \phantom{Answer}\makebox[0pt][r]{and} \textbf{one} question
      from Section B.\\[2.4pt]
      Forty per cent of the marks will be allocated to Section B.
    }}}
\triposset{structure/5qmax2ps/.style={rubrics={
      Answer \textbf{five} questions.\\[2.4pt]
      No more than \textbf{two} questions
      from any one section are to be answered.
    }}}
\triposset{structure/5qmin1ps/.style={rubrics={
      Answer \textbf{five} questions.\\[2.4pt]
      At least \textbf{one} question from each section is to be answered.
    }}}
\triposset{paper style/.style={newpage=false}}
\triposset{solutionnotes style/.style={}}
\triposset{signoff style/.style={newsheet=true}}
\triposset{CST/.style={
    subject=COMPUTER SCIENCE MOCK \ Paper \arabic{paper},
    code=CST,subtitle=,totalmarks=20,time=2.00,endtime=4.00,attempts=three,
    titlewarning={You may not start to read the
    questions printed on the subsequent pages of this question paper
    until instructed that you may do so by the Invigilator},
    stationery requirements={Script paper\\$\frac{d\vec{x}}{dt}=0$},
    special requirements={Approved calculator permitted}
}}
\triposset{MockIA/.style={
    CST,code=CSTX0,
    structure=3q,title=COMPUTER SCIENCE TRIPOS MOCK \ Part I{\absize A}}}
\triposset{MockIB/.style={
    CST,code=CSTX1,
    structure=3q,title=COMPUTER SCIENCE TRIPOS MOCK \ Part I{\absize B}}}
\triposset{CSTpartIA/.style={
    CST,code=CST0,
    structure=1abc2d,title=COMPUTER SCIENCE TRIPOS \ Part I{\absize A}}}
\triposset{CSTpartIAIB/.style={
    CST,code=CST0+CST1,
    structure=1abc2d,title={COMPUTER SCIENCE TRIPOS
      \ Part I{\absize A}~{\absize 75\%}, Part I{\absize B}~{\absize 50\%}}}}
\triposset{CSTpartIB/.style={
    CST,code=CST1,
    structure=5q,title=COMPUTER SCIENCE TRIPOS \ Part I{\absize B}}}
\triposset{CSTpartIBII/.style={
    CST,code=CST1+CST2,
    structure=5q,title={COMPUTER SCIENCE TRIPOS
      \ Part I{\absize B}~{\absize75\%}, Part II~{\absize 50\%}}}}
\triposset{CSTpartII/.style={
    CST,code=CST2,
    structure=5q,title=COMPUTER SCIENCE TRIPOS \ Part II}}
\triposset{CSTpartIA/NST/.style={
    CSTpartIA,
    subtitle={NATURAL SCIENCES TRIPOS \ Part I{\absize A} \ (Paper CS/1)}
}}
\triposset{CSTpartIA/NST/PPS/.style={
    CSTpartIA,
    subtitle={NATURAL SCIENCES TRIPOS \ Part I{\absize A} \ (Paper CS/1)\\
              POLITICS, PSYCHOLOGY, AND SOCIOLOGY TRIPOS \ Part I \ (Paper 9)}
}}
\triposset{CSTpartIA/NST/PBS/.style={
    CSTpartIA,
    subtitle={NATURAL SCIENCES TRIPOS \ Part I{\absize A} \ (Paper CS/1)\\
              PSYCHOL. AND BEHAVIOURAL SCIENCES TRIPOS \ Part I \ (Paper CS~1)}
}}
\triposset{CSTpartIII/ACS/.style={
    title={COMPUTER SCIENCE TRIPOS \ Part III\\
           MPHIL IN ADVANCED COMPUTER SCIENCE},
    metadata=false,
    paper=0
  },
  modulename/.style={subject={\textbf{\large Module \triposget{code} -- #1}}}
}
\triposset{takehome/.style={
    structure=aq,
    rubrics2={
      Answers may be either handwritten in the
      booklet provided, or computer printed.
      If submitting computer-printed answers,
      please use the yellow cover sheet provided.
      \\[\parskip]
      On the cover page, enter the numbers of all the
      questions you have answered. Put a circle around the number(s) of the
      question(s) you have answered in each answer booklet if you have used
      more than one book.
      \\[\parskip]
      All booklets and cover sheets must be returned to
      Graduate Education Office whether used or not.
      \\[2\parskip]
      The completed answers should be submitted to
      the Graduate Education Office
      \textbf{no later than \triposget{endtime} on \triposget{enddate}}.
      \\[\parskip]
      Students will be required to sign an undertaking that
      work submitted will be entirely their own;
      \textbf{no collaboration is permitted}.
    },
    stationery requirements={Two 20-page answer booklets\\Yellow cover sheet}
}}
\triposset{solutionnotes head/.initial={--- Solution notes ---}}
\triposset{
  signoff request/.initial={
    An examination question which you set recently is
    likely to appear as reproduced below. Please check carefully
    that this is what you intended.
  },
  signoff declaration/.initial={
    I have carefully checked the above and can find no errors.
  }
}
\triposset{
  signoff checker request/.initial={
    An examination question which you checked recently is
    likely to appear as reproduced below. Please check carefully
    that this is what you intended.
  },
  signoff checker declaration/.initial={
    I have carefully checked the above and can find no errors.
  }
}
\newif\if@sectionstart
\newcommand\section{
  \ifpaper
    \par
    \addtocounter{section}{1}
    \@sectionstarttrue
    \ifnewsheet\cleardoublepage\else\ifnewpage\clearpage\else\filbreak\fi\fi
    \vspace{3em}
    \hspace*{-\indentation}\textbf{SECTION~\Alph{section}}
    \par
  \fi
}
\newcounter{marksum}
\newcounter{marksumpaper}
\newcommand{\questionprelude}{}
\newcommand{\questionpostscriptum}{}
\newlength{\questiongap}
\setlength\questiongap{3em}
\newenvironment{question}[2][]{\triposset{author=,#1}%
  \par
  \ifrecordmarks\immediate\write\@marksfile{question|\triposget{year}|%
    \arabic{paper}|\arabic{question}|\triposget{author}|#2}\fi%
  \if@sectionstart
  \else
    \ifnewsheet\cleardoublepage\else\ifnewpage\clearpage\else\filbreak\fi\fi
    \ifmetadata
      \vspace{4\baselineskip}% do not (see below) move above question heading
    \else
      \vspace{\questiongap}% regular space between questions
    \fi
  \fi
  \global\@sectionstartfalse
\begingroup
  \setcounter{marksum}{0}%
  \setcounter{equation}{0}%
  \setlength\partopsep{0pt}
  \setlength\topsep{0pt}
  \let\lonely@item@error\makelabel% preserve default definition
  \trivlist
  \item[{\makebox[0pt][r]{\textbf{\strut\arabic{question}}\hspace{\numbergap}}}]
  \def\makelabel{\lonely@item@error}% restore default
  \def\question@heading{#2}\ifx\question@heading\@empty\else
    \questionprelude
    \ifmetadata
      \makebox[0pt][l]{\parbox{\linewidth}{%
        \if@sectionstart
          \vspace*{-8\baselineskip}% move above section and question heading
        \else
          \vspace*{-4\baselineskip}% move above question heading
        \fi
        \hspace*{-\indentation}\textbf{\triposget{title} -- \triposget{year}
        -- Paper \arabic{paper}
        \ifrenumberquestions-- Question \arabic{origquestion}\fi}}}%
    \fi
    \textbf{\question@heading\ifmetadata\ (\triposget{author})\fi}\par\fi
  \ignorespaces
}{
  \triposifempty{totalmarks}{}{
    \ifnum\value{marksum}=\triposget{totalmarks}
    \else
      \def\markswarning{expected \triposget{totalmarks} marks total,
        but found \arabic{marksum}}
      \ClassWarningNoLine{tripos}{Question \arabic{question}: \markswarning}
      \textbf{[Warning: \markswarning]}\par
    \fi
  }
  \endtrivlist
  \questionpostscriptum
  \endgroup
  \addtocounter{question}{1}
}
\newcommand{\fullmarks}{\@ifstar\fullmarks@text\fullmarks@integer}
\newcount\@marks
\newcommand*{\fullmarks@integer}[2][1]{\@marks=#2\multiply\@marks by#1%
  \fullmarks@text{\the\@marks}{#2 mark\ifnum#2=1 \else s\fi\ifnum#1=1
    \else\space each\fi}}
\newcommand*{\fullmarks@text}[2]{%
  \ifrecordmarks\immediate\write\@marksfile{fullmarks|\a@theenum|#1|#2}\fi%
  \addtocounter{marksum}{#1}\addtocounter{marksumpaper}{#1}%
  {\hspace*{\fill}\nolinebreak[1]%
  \hspace{5pt}\hspace*{\fill}\mbox{[#2]}\parfillskip=0pt%
  \finalhyphendemerits=0\par}}
\def\question@labelprefix{\triposget{year}-p\arabic{paper}-q\arabic{question}}
\let\orig@label=\label
\let\orig@ref=\ref
\let\orig@pageref=\pageref
\renewcommand*\label[1]{\orig@label{\question@labelprefix:#1}}%
\renewcommand*\ref[1]{\orig@ref{\question@labelprefix:#1}}%
\renewcommand*\pageref[1]{\orig@pageref{\question@labelprefix:#1}}%
\let\@topics\@empty
\newcommand*\topic[1]{\iftopics\g@addto@macro\@topics{{#1}\par}\fi}
\@mparswitchfalse
\setlength\marginparwidth{75pt}
\setlength\marginparsep{10pt}
\reversemarginpar
\def\output@topics{\global\let\@@topics\@topics
  \global\let\@topics\@empty
  \ifx\@@topics\@empty\else
    \marginpar{\sffamily\footnotesize\raggedright\@@topics}\fi}
\let\tripos@@everypar\everypar
\newtoks\tripos@everypar
\tripos@everypar\expandafter{\the\everypar}
\tripos@@everypar{\output@topics\the\tripos@everypar}
\let\everypar\tripos@everypar
\newcommand*\hint[1]{\note[Hint]{#1}}
\newcommand*\note[2][Note]{[\emph{#1:} #2]}
\newsavebox{\answerbox}
\newcommand{\answerheader}{\emph{Answer:}\hspace{0.8em plus 0.2em}}
\newenvironment{answer}{\par\pagebreak[1]
  \ifanswers\else\renewcommand*\ref[1]{}\renewcommand*\pageref[1]{}\fi
  \renewcommand{\fullmarks}{\ClassError{tripos}
    {\@backslashchar fullmarks not allowed in answer environment}}
  \def\makelabel##1{%
    \@latex@error{Lonely \string\item--perhaps a missing
          list environment}\@ehc}
  \ifanswers\else\begingroup\lrbox{\answerbox}\begingroup\minipage{\linewidth}\fi
  \parskip=\medskipamount
  \footnotesize\let\@listi\@listI
  \renewcommand\footnoterule{%
    \kern8\p@\hrule\@width.15\columnwidth\kern3\p@}
  \newcommand\@makefntext[1]{\footnotesize
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}##1}%
  \rule{\linewidth}{1pt}
  \par\nobreak\nointerlineskip\vspace{-\parskip}\vspace{4pt}
  \answerheader\nopagebreak\ignorespaces
}{%
  \par\nopagebreak\nointerlineskip\vspace{-\parskip}\vspace{4pt}
  \rule{\linewidth}{1pt}%
  \ifanswers\else\endminipage\endgroup\endlrbox\endgroup\fi
  \par\pagebreak[2]
}
\newcommand\blankpage{
  \ifpaper
  \clearpage
  \vspace*{\fill}
  \begin{center}
    \emph{This page is intentionally left blank.}
  \end{center}
  \vspace*{\fill}
  \clearpage
  \fi
}
\newcommand*\awaiting[1]{
  \emph{\ldots\ awaiting text from #1 (\triposget{author}) \ldots}
  \triposset{totalmarks=}
  \typeout{Awaiting question \arabic{question} from \triposget{author}:
    \question@heading}
}
\newcommand*\context[1]{\par
  \iftopics[\textit{Context: #1.}]\par\fi}
\newsavebox{\subjectareasbox}
\newenvironment{subjectareas}{\par
  \begin{lrbox}{\subjectareasbox}\begin{minipage}{\linewidth}[\textit
    \bgroup\ignorespaces
}{\unskip\egroup]\end{minipage}\end{lrbox}%
  \iftopics\usebox{\subjectareasbox}\fi
}
\newcommand\continued{\ifanswers\else
  \vfill\rightline{\textbf{[continued \ldots]}}
  \newpage\fi
}
\newcommand\spacer{\par
  \parbox{\linewidth}{\rule{2pt}{42pt}\qquad
    \raisebox{10pt}{\parbox[b]{406pt}{\centering
        Please leave this much space at the bottom of the page,\\
        to allow for a section header or end-of-paper footer.}\par}}}
\newcommand\titlerule{\par\nointerlineskip
  \makebox[\textwidth]{\kern-\indentation\leaders\vrule height 0.5pt\hfill
    \relax}\par\nointerlineskip}
\newcommand\maketitle{
  \ifpaper
    \thispagestyle{papertitle}
    \makebox[0pt][l]{\IfFileExists{uc-logo.pdf}{%
        \kern-\indentation\raisebox{2\baselineskip}[0pt][0pt]{%
          \includegraphics[width=30mm]{uc-logo.pdf}}}{}}%
    {\large\textbf{\ifnum\triposget{year}>2020%
                   \triposifempty{code}{}{\triposget{code}\\}\fi%
     \triposget{title}
     \triposifempty{subtitle}{}{\\[6pt]\small\triposget{subtitle}}}\par}
    \vskip 6pt
    \titlerule
    \triposifempty{enddate}
      {\triposget{date}\qquad\triposget{time} to \triposget{endtime}}
      {\triposget{date}\hspace{1em minus 0.3em}\triposget{time}%
       \hspace{2em minus 1em}to\hspace{2em minus 1em}%
       \triposget{enddate}\hspace{1em minus 0.3em}\triposget{endtime}}
    \vskip -3pt
    \titlerule
    \vskip 6pt
    \triposget{subject}

    \textit{\ignorespaces\triposget{rubrics}}

    \textit{\ignorespaces\triposget{rubrics2}}
    \vfill
    \centerline{\triposget{titlecentre}}
    \vfill
    \parbox{432pt}{%
      \parbox[t]{240pt}{\mbox{}\triposget{titlebottomleft}}%
      \parbox[t]{192pt}{\mbox{}\triposget{titlebottomright}}%
    }
    \vspace*{\parskip}
    \newpage
  \fi
}
\newif\ifpaper\papertrue
\newenvironment{paper}[1][]{
  \ifpaper
    \triposset{metadata=false,answers=false,topics=false,paper style}
  \fi
  \setcounter{marksumpaper}{0}
  \setcounter{section}{0}
  \setcounter{question}{1}
  \triposset{#1}
  \ifrecordmarks\immediate\write\@marksfile{paper|\triposget{year}|%
    \arabic{paper}|\triposget{author}}\fi%
  \ifpaper
    \cleardoublepage
    \setcounter{page}{1}
    \expandafter\@ifundefined{paper@\roman{paper}@lastpage}{\gdef\@@lastpage{-1}}
      {\global\edef\@@lastpage{\csname paper@\roman{paper}@lastpage\endcsname}}
    \pagestyle{paper}
    \addtolength\parskip{0pt minus 3pt}
  \fi
}{
  \triposifempty{totalmarkspaper}{}{
    \ifnum\value{marksumpaper}=\triposget{totalmarkspaper}
    \else
      \def\markswarning{expected \triposget{totalmarkspaper} marks total,
        but found \arabic{marksumpaper}}
      \ClassWarningNoLine{tripos}{%
        \ifnum\value{paper}=0 \else Paper \arabic{paper}: \fi\markswarning}
      \textbf{[Warning: \markswarning]}\par
    \fi
  }
  \ifpaper\ifnum\value{question}=1\else
    \nopagebreak
    \vspace{36pt}
    \centerline{\textbf{END OF PAPER}\label{l@stp@ge}%
      \write\@auxout
        {\string\gdef\string\paper@\roman{paper}@lastpage{\arabic{page}}}%
    }
    \newpage
  \fi\fi
  \addtocounter{paper}{1}
}
\def\iflastpage#1#2{\ifnum\value{page}=\@@lastpage\relax#1\else#2\fi}
\newenvironment{solutionnotes}[1][]{
  \addtolength\parskip{0pt plus 2pt minus 5pt}
  \triposset{metadata=true,answers=true,topics=true,solutionnotes style,#1}
  \pagestyle{solutionnotes}
  \paperfalse
}{
  \newpage
}

\newenvironment{signoff}[1][]{
  \triposset{metadata=false,answers=false,topics=false,newpage=true,
    signoff style,#1}
  \renewcommand{\questionprelude}{\setcounter{page}{1}%
    \pagestyle{signoff}%
    \makebox[0pt][l]{\parbox[b][0pt][b]{\linewidth}{%
        \triposget{signoff request}
        \vspace{12pt}
        \titlerule
        \vspace*{19.2pt}}}}
  \renewcommand{\questionpostscriptum}{%
    \nopagebreak
    \vspace{-2\parskip}\makebox[0pt][l]{\parbox[t][0pt][t]{\linewidth}{%
        \vspace{16pt}
        \titlerule
        \vspace{12pt}
        \triposget{signoff declaration}\par
        \vspace{18pt}
        Signed $\ldots\ldots\ldots\ldots\ldots\ldots\ldots\ldots\ldots\ldots$%
        \qquad
        Date $\ldots\ldots\ldots\ldots\ldots\ldots\ldots\ldots\ldots\ldots$\par
      }}%
    \newpage
  }
  \addtolength\parskip{0pt minus 3pt}
  \paperfalse
  \pagestyle{empty}
}{}
\newenvironment{signoffchecker}[1][]{
  \triposset{metadata=false,answers=true,topics=true,newpage=true,
    signoff style,#1}
  \renewcommand{\questionprelude}{\setcounter{page}{1}%
    \pagestyle{signoff}%
    \makebox[0pt][l]{\parbox[b][0pt][b]{\linewidth}{%
        \triposget{signoff checker request}
        \vspace{12pt}
        \titlerule
        \vspace*{19.2pt}}}}
  \renewcommand{\questionpostscriptum}{%
    \nopagebreak
    \vspace{-\parskip}\parbox{\linewidth}{%
        \vspace{16pt}
        \titlerule
        \vspace{12pt}
        \triposget{signoff checker declaration}\par
        \vspace{18pt}
        Signed $\ldots\ldots\ldots\ldots\ldots\ldots\ldots\ldots\ldots\ldots$%
        \qquad
        Date $\ldots\ldots\ldots\ldots\ldots\ldots\ldots\ldots\ldots\ldots$\par}
    \newpage
  }
  \addtolength\parskip{0pt minus 3pt}
  \paperfalse
  \pagestyle{empty}
}{}
\newcommand\ps@paper{%
  \ifrenumberquestions\else
    \renewcommand\@oddhead{\hfil\scriptsize\triposget{code}.\triposget{year}.%
      \ifnum\value{paper}=0\else\arabic{paper}.\fi\thepage}
  \fi
  \let\@evenhead\@oddhead
  \renewcommand\@oddfoot {\hfil\thepage\hfil%
    \if@twoside\makebox[0pt][r]{\iflastpage{}{(TURN OVER)}}\fi}
  \renewcommand\@evenfoot{\hfil\thepage\hfil}
}
\newcommand\ps@papertitle{%
  \ps@paper
  \renewcommand\@oddfoot{}
  \renewcommand\@evenfoot{}
}
\newcommand\ps@solutionnotes{%
  \renewcommand\@oddhead{\hspace*{-\indentation}\hfil\raisebox{-5mm}
                         {\textit{\Large\triposget{solutionnotes head}}}\hfil}
  \let\@evenhead\@oddhead
  \renewcommand\@oddfoot{\hfil\thepage\hfil}
  \let\@evenfoot\@oddfoot
}
\newcommand\ps@signoff{%
  \renewcommand\@oddhead{\textbf{EXAMINATION QUESTION BY
    \triposget{author}}\quad\hfil\triposget{code} \triposget{year}
    P\arabic{paper}~Q\arabic{question}\ifnum\thepage>1~/~\thepage\fi}
  \let\@evenhead\@oddhead
  \renewcommand\@oddfoot{}
  \let\@evenfoot\@oddfoot
}
\pagestyle{plain}
\ifcommonpackages
\RequirePackage[utf8]{inputenc}
\RequirePackage{color}
\RequirePackage{graphicx}
\DeclareGraphicsExtensions{}
\DeclareGraphicsRule{.pdftex}{pdf}{*}{}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{stmaryrd}
\RequirePackage{proof}
\RequirePackage{latexsym}
\RequirePackage{upgreek}
\RequirePackage{upquote}[2012/04/19]
\RequirePackage{alltt}
\fi
\InputIfFileExists{tripos-config.tex}{}{}
\ifownpackages\else
\RequirePackage{docmute}[2012/01/28]
\newcommand*\help@ownpackages{If you use this class for something other than
  submitting a Tripos question:\MessageBreak enabling class option
  [ownpackages] disables this restriction.}
\newcommand*\help@globaldecls{We restrict in Tripos questions the use of
  global declarations, which could\MessageBreak interfere or collide
  with other questions, to make sure all questions can be\MessageBreak
  compiled together into papers.\MessageBreak\MessageBreak\help@ownpackages}
\renewcommand*\usepackage[2][]{
  \ClassError{tripos}{Do not load packages in Tripos questions}{We disable
    the loading of packages by individual Tripos questions, \MessageBreak
    to make sure all questions can be compiled together into papers.
    \MessageBreak\MessageBreak\help@ownpackages}}
\renewcommand*{\newlength}[1]{
  \ClassError{tripos}{Avoid global declarations}{\help@globaldecls}}
\fi
\endinput
%%
%% End of file `tripos.cls'.
