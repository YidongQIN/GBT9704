\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gbt9704}[2020/05/24 Authorities Documents LaTeX Template with GB/T 9704]

\RequirePackage{kvoptions}
\DeclareBoolOption{redheading}% 打印红头 或 留出空白红头间距

% \DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
% \ProcessKeyvalOptions*
\LoadClass[UTF8,AutoFakeBold,scheme=chinese]{ctexart}

\def\@refnumber{0000}
\newcommand{\refnumber}[1]{\def\@refnumber{#1}}

\renewcommand{\normalsize}{\fontsize{16pt}{22pt}}

\RequirePackage{geometry}
\geometry{
    a4paper,% 210 * 297mm
    % nomarginpar,% 即\marginparwidth=0pt and \marginparsep=0pt
    % hcentering,% 将hmarginratio设为1:1，即left=right
    left=28mm,% 注意left=right
    top=37.00mm,% Word 模板页眉顶端距离20mm
    width=156mm,
    height=225mm,
    }

\RequirePackage{fontspec}
\setCJKmainfont{FangSong}

\RequirePackage{fancyhdr}
\fancypagestyle{plain}{
    \fancyfoot[C]{-\zihao{4}\thepage-}
}

\RequirePackage{graphicx}

\renewcommand\maketitle{% 打印标题和文号
    \begin{center}%
    \zihao{-2} \@title \\
    \vspace{1ex}
    \zihao{5} \@refnumber \\
    \normalsize
    \end{center}
    }
\newcommand{\makesignature}{% 打印落款和日期
    \hfill
    \begin{tabular}[t]{c}%
        \@author \\
        \@date
    \end{tabular}
}

\ctexset{%
    punct=quanjiao,% 标点符号用全角
    space=auto,
    autoindent=true,% 首行缩进 2 字符
    section={% 一级节标题
        format=\heiti\centering,
        aftername=\hspace{\ccwd},
        name={,、},
        number=\chinese{section},
        },
    subsection={
        format=\kaishu,
        aftername=\hspace{\ccwd},
        number=（\chinese{subsection}）,
        },
    subsubsection={
        format=\bfseries\fangsong,
        aftername=\hspace{\ccwd},
        number=\arabic{subsubsection},
    },
    paragraph={
        format={},% \heiti\centering,
        % titleformat={},
        % nameformat={},
        % aftername=\hspace{\ccwd},
    },
    }
\AtBeginDocument{%
    \pagestyle{plain}
    \pagenumbering{arabic}
    % \newgeometry
    % \restoregeometry
}
