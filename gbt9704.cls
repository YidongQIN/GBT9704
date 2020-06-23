\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gbt9704}[2020/05/24 Authorities Documents LaTeX Template with GB/T 9704]

\RequirePackage{kvoptions}
\DeclareBoolOption{redheading}% 打印红头 或 留出空白红头间距

% \DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
% \ProcessKeyvalOptions*
\LoadClass[UTF8,AutoFakeBold=1.2,scheme=plain,linespread=1.5,]{ctexbook}

% 5.2.1 页边与版心尺寸
\RequirePackage{geometry}
\geometry{
    a4paper,% 210 * 297mm
    nomarginpar,% 即\marginparwidth=0pt and \marginparsep=0pt
    hcentering,% 将hmarginratio设为1:1，即left=right
    left=28mm,% 注意left=right
    top=37.00mm,% Word 模板页眉顶端距离20mm
    width=156mm,
    height=225mm,
    }

% 5.2.2 字体和字号
\renewcommand{\normalsize}{\zihao{3}}
\setCJKmainfont{FangSong}
% 7.2.1 份号

% 7.2.2 密级和保密期限


% 7.2.3 紧急程度


% 7.2.4 发文机关标志


% 7.2.5 发文字号
\def\@refnumber{0000}
\newcommand{\refnumber}[1]{\def\@refnumber{#1}}
\newcommand{\makerefnumber}{
    \begin{center}%
        {\zihao{5}\@refnumber}
        \normalsize
    \end{center}
    }

% 7.2.6 签发人
\newcommand{\makesignature}{% 打印落款和日期
    \hfill
    \begin{tabular}[t]{c}%
        \@author \\
        \@date
    \end{tabular}
}

% 7.3.1 标题
\renewcommand\maketitle{% 打印标题和文号
    \begin{center}%
    {\zihao{-2}\songti\@title} \\
    \normalsize
    \end{center}
    }

% 7.3.2 主送机关


% 7.3.3 正文
\setcounter{secnumdepth}{3}% 章节编号深度
\ctexset{%
    punct=quanjiao,% 标点符号用全角
    space=auto,
    autoindent=true,% 首行缩进 2 字符
    chapter={% 一级节标题
        format=\heiti\centering,
        name={,、},
        aftername=\hspace{0.5\ccwd},
        aftername={},
        number=\chinese{chapter},
        nameformat={},
        titleformat={},
        afterindent=true,
        beforeskip=0pt,
        afterskip=0pt,
        break={},% 不会另起一页
        },
    section={
        format=\kaishu,
        name={（,）},
        aftername=\hspace{0.5\ccwd},
        number=\chinese{section},
        afterindent=true,
        beforeskip=0pt,
        afterskip=0pt,
        },
    subsection={
        format=\fangsong,
        name={,.},
        aftername=\hspace{0.5\ccwd},
        number=\arabic{subsection},
        nameformat={},
        titleformat={},
        afterindent=true,
        beforeskip=0pt,
        afterskip=0pt,
    },
    subsubsection={
        format=\fangsong,
        name={（,）},
        aftername=\hspace{0.5\ccwd},
        number=\arabic{subsubsection},
        nameformat={},
        afterindent=true,
        beforeskip=0pt,
        afterskip=0pt,
    },
    paragraph={
        format={},% \heiti\centering,
        % titleformat={},
        % nameformat={},
        % aftername=\hspace{\ccwd},
        afterindent=true,
    },
}

% 7.5 页码
\RequirePackage{fancyhdr}
\fancypagestyle{plain}{
    \fancyhead{}
    \renewcommand\headrulewidth{0pt}% 取消页眉中的装饰分割线。
    \fancyfoot[C]{--- {\zihao{4}\thepage} ---}
}

    \RequirePackage{graphicx}

\AtBeginDocument{%
    \pagestyle{plain}
    \pagenumbering{arabic}
}
