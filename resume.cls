\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2026/09/24 Minimal portable resume class]

\LoadClass[10pt]{article}
\RequirePackage{enumitem}

\pagestyle{empty}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}
\newlength{\sectionskip}
\setlength{\sectionskip}{1.1ex}
\newlength{\sectionlineskip}
\setlength{\sectionlineskip}{0.45ex}

\makeatletter
\newcommand{\@resumename}{}
\newcommand{\@resumeaddress}{}
\newcommand{\name}[1]{\gdef\@resumename{#1}}
\newcommand{\address}[1]{\g@addto@macro\@resumeaddress{#1\\}}
\AtBeginDocument{%
  \begin{center}
    {\LARGE\bfseries \@resumename}\par\vspace{0.35em}
    {\small \@resumeaddress}
  \end{center}\vspace{-0.6em}
}
\makeatother

\newenvironment{rSection}[1]{%
  \vspace{\sectionskip}\noindent\textbf{\MakeUppercase{#1}}\par\vspace{\sectionlineskip}\hrule\vspace{0.35em}
}{\vspace{0.25em}}

\setlist[itemize]{leftmargin=1.5em, topsep=0.2em, itemsep=0.15em, parsep=0pt, partopsep=0pt}
