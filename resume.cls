% Author: Cooper Wolfden
% Edited: 02/01/2024

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2023/11/21 Custom resume class]

\LoadClass{article}

\RequirePackage{titlesec}
\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading
  
\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}
 
\RequirePackage{geometry}
\setlength{\evensidemargin}{-0.25in}
\setlength{\headheight}{0in}
\setlength{\headsep}{0in}
\setlength{\oddsidemargin}{-0.25in}
\setlength{\paperheight}{11in}
\setlength{\paperwidth}{8.5in}
\setlength{\tabcolsep}{0in}
\setlength{\textheight}{9.5in}
\setlength{\textwidth}{7in}
\setlength{\topmargin}{-0.3in}
\setlength{\topskip}{0in}
\setlength{\voffset}{-0.1in}



\RequirePackage{enumitem}
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=false,
    linkcolor=black,
    filecolor=white,      
    urlcolor=white,
}

\RequirePackage{graphicx}
\RequirePackage{makecell}

\DeclareDocumentCommand{\author}{m}{\newcommand{\authorname}{#1}\renewcommand{\@author}{#1}}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}

\newcommand{\education}[5]{%
%   \vspace{-5pt}
  \begin{tabular*}{\textwidth}{l@{\extracolsep{\fill}}r}
    \vspace{-0.5pt}
    {\scshape{\bfseries #1}} & #2 \\
    {#3} & {\small#4} \\
    \hspace{10pt}\small{\textit{\makecell[l]{#5}}} \\
  \end{tabular*}
}

\newcommand{\work}[5]{%
%   \vspace{-5pt}
  \begin{tabular*}{\textwidth}{l@{\extracolsep{\fill}}r}
    \vspace{-0.5pt}
    {\scshape{\bfseries #1}} & #2 \\
    {#3} & {\small#4} \\
    \hspace{10pt}\small{\textit{\makecell[l]{#5}}} \\
  \end{tabular*}
}
%\parbox{0.75\textwidth}{
%\small
%    \begin{itemize}
%    \vspace{-2pt}
%    #5
%    \end{itemize}
%}
%   \subsubsection[#1]{#1}%
%   \vspace{-5pt}
%   #2 \hfill #3 \\
%   #4

\pagestyle{empty}

\newcommand{\skills}[1]{%
  \begin{itemize}[leftmargin=10pt]
          {#1}
  \end{itemize}
}

\newcommand{\projects}[1]{%
  {#1}
}

\newcommand{\project}[2]{%
  \begin{tabular*}{\textwidth}{l@{\extracolsep{\fill}}r}
    \vspace{1pt}
    {#1} & {\small#2}
  \end{tabular*}
}

\newcommand{\name}[1]{%
  \centerline{\Huge{#1}}
}

\newcommand\contact[2]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1 {\large\textperiodcentered} #2 {\large}%
        }%
    }%
}

\newcommand{\resitem}[1]{\small \item[\textbf{--}] #1 \vspace{-4pt}}
