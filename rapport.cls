%Classe réalisée par AT016

%On définit une nouvelle classe définie à partir de book
\ProvidesClass{rapport}
\LoadClassWithOptions{book}

%La base (mettre english si rapport de stage en anglais)
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
%\usepackage[francais]{babel}
\usepackage[english]{babel}

%On rectifie les marges pour centrer le document
\usepackage{geometry}
\geometry{bindingoffset=1.5cm}

%Pour remplir de bullshit
\usepackage{lipsum}

%Pour pouvoir mettre des images
\usepackage{graphicx}

%Pour mettre des liens dans le fichier
\usepackage[xetex,colorlinks=true,pdfmenubar=false,pdfpagemode=UseNone,urlcolor=black,linkcolor=black,citecolor=black,filecolor=black,pdfstartview=FitH]{hyperref}

%Pour plus de maths et de chimie
\usepackage{amsmath,amsfonts,amsthm,mathtools}
\usepackage[version=3]{mhchem} %Chimie
\usepackage{siunitx}  %Utilisation des unités SI

%Si vous avez besoin de mettre du code source par exemple:
% \begin{lstlisting}
% Put your code here.
% \end{lstlisting}
% Ou:
% \lstinputlisting[language=Python]{source_filename.py}
\usepackage{listings}

%Pour la bibliographie
% \usepackage{bibtex}

%Pour les tableaux
\usepackage{array} %Centrer les tableaux
\usepackage[hang, small,labelfont=bf,up,textfont=it,up]{caption} %Nom des tables personnalisés
\usepackage{booktabs} %Tables avec des lignes marquées

%On redéfinit des headers propres
\usepackage{fancyhdr}
\setlength{\headheight}{15.2pt}
\pagestyle{fancy}
\lhead{}
\chead{\textit{ \nouppercase{\leftmark}}}
\rhead{}

%Footers
\lfoot{}
\cfoot{}
\rfoot{}
\fancyfoot[LE,RO]{\thepage}

%On overwrite la fonction pour les début de chapitres
\fancypagestyle{plain}{%
  \fancyhf{}\fancyfoot[LE,RO]{\thepage}%
  \renewcommand{\headrulewidth}{0pt}}
  
%Un poil plus pratique
\newcommand\institute[1]{\large \textbf{#1}}

%On rédéfinit les chapitres
\usepackage{titlesec}
\titleformat{\chapter}[display]
  {\normalfont\Large\bfseries}
  {}{0pt}{\Huge}
\titleformat{\section}
  {\normalfont\large\bfseries}
  {\thesection}{1em}{}
%  \titleformat{\subsection}
%  {\normalfont}
%  {\thesection}{1em}{}
  \titleformat{\subsection}
  {\normalfont\bfseries}
  {\thesubsection}{1em}{}
\titlespacing*{\thechapter}{0pt}{0pt}{0pt}

%Code sample
\usepackage{listings}

\lstdefinelanguage{Julia}
  {morekeywords={begin,abstract,break,case,catch,const,continue,do,else,elseif,%
      end,export,false,for,function,immutable,import,importall,if,in,%
      macro,module,otherwise,quote,return,switch,true,try,type,typealias,%
      using,while,=},%
   sensitive=true,%
   alsoother={$},%
   morecomment=[l]\#,%
   morestring=[s]{"}{"},%
   morestring=[m]{'}{'},%
}[keywords,comments,strings]%

\usepackage{color}
\definecolor{codered}{RGB}{215,58,73}
\definecolor{codeblue}{RGB}{0,92,197}
\definecolor{codepurple}{RGB}{111,66,193}

\lstset{%
    language         = Julia,
    basicstyle       = \ttfamily,
    numbers=left,
    stepnumber=1,
    keywordstyle     = \color{codered},
    %numberstyle      = \tiny\color{codeblue},
    emph={Bernouilli, Gaussian, sample, observe, SMC, model, @model},
    emphstyle={\color{codeblue}},
    % keyword highlighting
    %classoffset=1, % starting new class
    %morekeywords={=,:},
    %keywordstyle=\color{codepurple},
    %classoffset=0,
    %stringstyle      = \color{magenta},
    %commentstyle     = \color{ForestGreen},
    %showstringspaces = false,
}
