\ProvidesClass{zjureport}
\LoadClass{ctexart}
\RequirePackage{graphicx, xcolor, tikz}
\RequirePackage{geometry, titlesec, fancyhdr}
\RequirePackage{listings, cncolours}
\RequirePackage{indentfirst, enumitem, zhnumber}

% 设置版式
\linespread{1.2}
\geometry{top=1in,bottom=1in,left=1in,right=1in}

% 设置标题和字体格式
\setCJKmainfont[ItalicFont={KaiTi},BoldFont={SimHei}]{SimSun}
\setmonofont{DejaVu Sans Mono}
\setCJKfamilyfont{KaiTi}[AutoFakeBold=2.5]{KaiTi}

\setcounter{secnumdepth}{3}
\renewcommand\thesection{\zhnumber{\arabic{section}}、}
\renewcommand\thesubsection{\arabic{subsection}.}
\renewcommand\thesubsubsection{(\arabic{subsubsection})}
\setlist[enumerate,1]{label=(\arabic*)}
\setlist[enumerate,2]{label=\alph*.}
\titleformat*{\section}{\large\bfseries}
\titleformat*{\subsection}{\normalsize\bfseries}
\titleformat*{\subsubsection}{\normalsize}

% 代码格式和颜色定义
\colorlet{keyword}{松花绿}
\colorlet{comment}{漆黑!50}
\colorlet{emph1}{靛蓝}
\colorlet{emph2}{琥珀}
\lstset{
  frame=tb,
  framerule=0.5pt,
  numbers=none,
  breaklines=true,
  breakatwhitespace=true,
  keywordstyle = \bfseries\color{keyword},
  commentstyle = \itshape\color{comment},
  emphstyle    = [1]\itshape\color{emph1},
  emphstyle    = [2]\color{emph2},
  basicstyle   = {\small\ttfamily},
}

% 信息
\newcommand\major[1]{\def\@major{#1}}
\newcommand\name[1]{\def\@name{#1}}
\newcommand\stuid[1]{\def\@stuid{#1}}
\newcommand\claid[1]{\def\@claid{#1}}
\newcommand\college[1]{\def\@college{#1}}
\renewcommand\date[1]{\def\@date{#1}}
\newcommand\lab[1]{\def\@lab{#1}}
\newcommand\course[1]{\def\@course{#1}}
\newcommand\instructor[1]{\def\@instructor{#1}}
\newcommand\grades[1]{\def\@grades{#1}}
\newcommand\expname[1]{\def\@expname{#1}}
\newcommand\exptype[1]{\def\@exptype{#1}}
\newcommand\partner[1]{\def\@partner{#1}}
\graphicspath{{figures/}}

% 页眉
\pagestyle{fancy}
\lhead{\@title}
\rhead{\@name}

% 下划线定义
\def\zjuu[#1]#2{
  \underline{\hbox to #1{\hfil#2\hfil}}}

% 首页头部
\newcommand{\makeheader}{
\begin{figure}[h]
  \begin{minipage}{0.4\linewidth}
    \centerline{\includegraphics[\linewidth]{中国地质大学}}
  \end{minipage}%
  \begin{minipage}{0.3\linewidth}
    \centerline{\fontsize{36}{50}\CJKfamily{KaiTi}{\textbf{\xeCJKsetup{CJKglue=\hskip 0.8pt}实验报告}}}
  \end{minipage}%
  \begin{minipage}{.3\linewidth}
    \raggedleft
    \begin{tabular*}{.8\linewidth}{ll}
      专业： & \zjuu[70pt]\@major   \\
      姓名： & \zjuu[70pt]\@name    \\
      学号： & \zjuu[70pt]\@stuid   \\
      班级： & \zjuu[70pt]\@claid   \\
      日期： & \zjuu[70pt]\@date \\
      地点： & \zjuu[70pt]\@lab
    \end{tabular*}
  \end{minipage}
\end{figure}

\begin{table}[!htbp]
  \centering
  \begin{tabular*}{\linewidth}{llllll}
    课程名称： & \zjuu[150pt]\@course   & 指导老师： & \zjuu[50pt]\@instructor   & 成绩：        & \zjuu[50pt]\@grades \\
    实验名称： & \zjuu[150pt]\@expname  & 实验类型： & \zjuu[50pt]\@exptype      & 同组学生姓名： & \zjuu[50pt]\@partner
  \end{tabular*}
\end{table}
\thispagestyle{empty}

}

% 封面
\newcommand{\makecover}{
  \begin{center}
    \vphantom{\Large hello}
    \begin{center}
      \includegraphics[width=0.3\linewidth]{中国地质大学}
    \end{center}
    \vspace{0.5cm}
    \bfseries\Huge{\@title}\\
    \vspace{0.5cm}
    \bfseries\huge{\@expname}
    \vspace{2.5cm}
    \begin{center}
      \Large
      \linespread{2}
      \centering
      \renewcommand\arraystretch{1.6}
      \begin{tabular}{p{3cm}p{6cm}}
        \bfseries{课程名称：} & \@course \\ \cline{2-2}
        \bfseries{姓名：}     & \@name   \\ \cline{2-2}
%         \bfseries{学院：}     & \@college \\ \cline{2-2}
        \bfseries{专业：}     & \@major  \\ \cline{2-2}
        \bfseries{班级：}     & \@claid  \\ \cline{2-2}
        \bfseries{学号：}     & \@stuid  \\ \cline{2-2}
        \bfseries{指导老师：} & \@instructor  \\ \cline{2-2}
      \end{tabular}
    \end{center}
    \vspace{2cm}
    \Large{中国地质大学计算机学院}\\
    \vspace{0.5cm}
    \Large{\@date}
  \end{center}
  \thispagestyle{empty}
  \newpage
}
\endinput