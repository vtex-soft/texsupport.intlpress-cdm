# LaTeX author support for the International Press book series *Current Developments in Mathematics* (*CDM*)

## Table of Contents

* [About](#about)
* [Package content](#package-content)
* [Setup](#setup)
* [Recomended usage of `ipbook` package](#recomended-usage-of-ipbook-package)
* [Submission](#submission)
* [Bug reports](#bug-reports)

## About

Author support service provides LaTeX style files and `*.tex` file templates designed for International Press book series
[Current Developments in Mathematics (CDM)](https://www.intlpress.com/site/pub/pages/books/_home/series/00000007/) manuscripts.

## Package content

The following files are given in the repository (or directly in `*.zip` archive):

* `ipbook.cls` - LaTeX style files designed for International Press book series.
  Please do not change them. These files are already loaded in the respective template files;
* `cdm-template.tex` - topmatter template (should be used for manuscript preparation);
* `cdm-sample.tex` - book series sample article;
* `cdm-sample.pdf` - book series sample article (`PDF` file);

## Setup
* Clone the repository or download the `*.zip` archive. Rename the package to `<your-project-name>`.
* Install `ipbook.cls` file in your TeX system (suggested directory: `ipbook`).
* Use the file `cdm-template.tex` to start your article as a template.
* Use the file `cdm-sample.tex` as a reference for how to prepare a topmatter of your article.

## Recommended usage of `ipbook` package

Use `cdm-template.tex` as a template.

### Document class options

For the CDM journal `cdm` option must be set
in a `\documentclass[]{ipart}`:
```latex
\documentclass[cdm]{ipart}
```

### LaTeX document preamble content

The preamble of your LaTeX document should look like this:

```latex
\documentclass[cdm]{ipbook}

\title[A sample document]{A sample document for IP book series}

\author{First Author}
\address{Address of the First Author, Country}
\email{first@somewhere.com}
\thanks{First Author is supported by ...}
\author{Second Author}
\address{Address of the Second Author, Country}
\email{second@somewhere.com}

\begin{document}

    \begin{abstract}
    ...
    \end{abstract}

    \maketitle

    \tableofcontents

    Your manuscript content

\end{document}
```

## Submission

Submit one single file as a `ZIP` archive.
Pack your root folder `<your-project-name>` with files and subfolders.

## Bug reports

Please submit bug report or feature requests at
[github](https://github.com/vtex-soft/texsupport.intlpress-cdm/issues) page.