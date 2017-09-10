include(`inc.m4')

define(CSE_INTERN_AND_PROJECT, `
    projects related to CSE blahblah
')

define(SE_INTERN_AND_PROJECT, `
    projects related to SE blahblah
')

\documentclass[a4paper,12pt]{article}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{lmodern}

\title{Statement of Purpose}
\author{Zheng Luo}

\begin{document}

\maketitle

define(PROGRAM_TYPE, ifelse(PROGRAM_MAJOR(), `GENERAL', `CSE', PROGRAM_MAJOR()))

PROGRAM_TYPE()_FULLNAME() dnl
is my life-long endeavor and I put much effort into it.

PROGRAM_TYPE()_INTERN_AND_PROJECT()

I firmly believe that I am qualified for SCHOOL()'s 
ifelse(PROGRAM, `GENERAL', `Master', PROGRAM()_FULLNAME()) dnl
program.

\end{document}
