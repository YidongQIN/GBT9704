\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gbt9704}[2020/05/24 Authorities Documents LaTeX Template with GB/T 9704]

\RequirePackage{kvoptions}
\DeclareBoolOption{electronic}% 打印红头 或 留出空白红头间距
% TODO 结合pkg{fancyhdy} 控制首页行为

% \DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
% \ProcessKeyvalOptions*
\LoadClass[UTF8,AutoFakeBold,scheme=chinese]{ctexart}

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

\RequirePackage{graphicx}

\newcommand{\docnum}[1]{#1}

% \renewcommand{\maketitle}{}% TODO 打印标题和文号
% \renewcommand{\makesignature}{}% TODO 打印落款和日期

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
        format=\bfseries\centering,
        % titleformat={},
        % nameformat={},
        % aftername=\hspace{\ccwd},
    },
    }
\AtBeginDocument{%
    \pagestyle{empty}
%   \pagenumbering{roman}
}
