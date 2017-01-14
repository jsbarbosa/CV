\LoadClass{article}
\RequirePackage{color}
\RequirePackage{varwidth}
\RequirePackage{titlesec}
\RequirePackage{multicol}
\RequirePackage{fontawesome}
\RequirePackage[most]{tcolorbox}
\RequirePackage[margin=2cm]{geometry}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[2017/01/14 Custom CV class]

\titleformat{\section}         % Customise the \section command 
	{\Large\scshape\raggedright} % Make the \section headers large (\Large),
	% small capitals (\scshape) and left aligned (\raggedright)
	{}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
	{}                           % Can be used to insert code before the heading
	[\titlerule] % Inserts a horizontal line after the heading

\titleformat{\subsection}
	{\large\scshape\raggedright}
	{}{0em}
	{}

\newcommand{\datedsection}[2]{%
	\section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
	\subsection[#1]{#1 \hfill #2}%
}

\tcbset{enhanced,
	colback=red!5!white,
	boxrule=0.1pt,
	lifted shadow={1mm}{-2mm}{3mm}{0.1mm}{black!50!white},
	colframe=red!75!black,
}
	
\newcommand{\personal}[6]
{
	\begin{center}
	\begin{tcolorbox}[colback=red!65!white, hbox]\color{white}\huge\textsc{#1}\end{tcolorbox}
	\begin{tcolorbox}[hbox]
	\begin{varwidth}{\textwidth}
	\begin{tabular}{@{}l|l}
		\faEnvelope & \texttt{#5}\\
		\faGithub & #6\\
		\faPhone & \texttt{#4}\\
		\faHome  & \texttt{#2} \\
		& \texttt{#3}
	\end{tabular}\\
	\end{varwidth}
	\end{tcolorbox}
	\end{center}
}

{\renewcommand{\arraystretch}{1.5}
\thispagestyle{empty}