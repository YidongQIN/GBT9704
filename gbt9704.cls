\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gbt9704}[2020/05/24 Authorities Documents LaTeX Template with GB/T 9704]

\RequirePackage{kvoptions}
\DeclareBoolOption{electronic}% 打印红头 或 留出空白红头间距

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
