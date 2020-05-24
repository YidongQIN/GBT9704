\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gbt9704}[2020/05/24 Authorities Documents LaTeX Template with GB/T 9704]

\RequirePackage{kvoptions}
\DeclareBoolOption{electronic}% 打印红头 或 留出空白红头间距
% TODO 结合pkg{fancyhdy} 控制首页行为

% \DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
% \ProcessKeyvalOptions*
\LoadClass[UTF8,scheme=chinese]{ctexart}

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
        format=\heiti,
        aftername=\hspace{\ccwd},% 节编号与标题内容默认\quad，改为间距一个汉字
        number=\chinese{section},
        % nameformat={},% 默认已经为空
        % titleformat={},% 默认已经为空
        % nameformat=\tongji@title@font\sihao,% 默认为空，改为比中文小一号
        % afterindent=true,
        % beforeskip={24bp \@plus 1ex \@minus .2ex},
        % afterskip={6bp \@plus .2ex},
        },
    subsection={
        format=\kaiti,
        aftername=\hspace{\ccwd},% 章节编号与标题内容间距一个汉字
        number=（\chinese{section}）,
        % nameformat=\tongji@title@font\banxiaosi,% 默认为空，改为比中文小一号
        % afterindent=true,
        % beforeskip={12bp \@plus 1ex \@minus .2ex},
        % afterskip={6bp \@plus .2ex},
        },
    }
\AtBeginDocument{%
  \pagestyle{empty}
%   \pagenumbering{roman}
}
