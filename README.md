# Pandoc Docker container with XeLaTeX

[![License][license]][license_link]
[![Docker Stars][docker_starts]][docker_repo]
[![Docker Pulls][docker_pulls]][docker_repo]

Provides a Docker container with [`Pandoc`](http://pandoc.org/) and [`LaTeX`](https://www.latex-project.org) installed.

```
$ docker run --rm -v `pwd`:/data jpbernius/pandoc
```
```
pandoc [OPTIONS] [FILES]
Input formats:  commonmark, docbook, docx, epub, haddock, html, json*, latex,
               markdown, markdown_github, markdown_mmd, markdown_phpextra,
               markdown_strict, mediawiki, native, odt, opml, org, rst, t2t,
               textile, twiki
               [ *only Pandoc's JSON version of native AST]
Output formats: asciidoc, beamer, commonmark, context, docbook, docx, dokuwiki,
               dzslides, epub, epub3, fb2, haddock, html, html5, icml, json*,
               latex, man, markdown, markdown_github, markdown_mmd,
               markdown_phpextra, markdown_strict, mediawiki, native, odt,
               opendocument, opml, org, pdf**, plain, revealjs, rst, rtf, s5,
               slideous, slidy, tei, texinfo, textile
               [**for pdf output, use latex or beamer and -o FILENAME.pdf]
```

---

## Example
Generate HTML from Markdown
```
$ docker run --rm -v `pwd`:/data jpbernius/pandoc -o example.html example.md
```
---
Generate PDF from Markdown
```
$ docker run --rm -v `pwd`:/data jpbernius/pandoc -o example.html example.md
```

---

## Packages

| LaTeX                         | Pandoc                     |
| ----------------------------- | -------------------------- |
| `lmodern`                     | `pandoc`                   |
| `texlive-latex-base`          | `pandoc-citeproc`          |
| `texlive-fonts-recommended`   | `pandoc-citeproc-preamble` |
| `texlive-generic-recommended` | `pandoc-crossref`          |
| `texlive-lang-english`        |                            |
| `texlive-lang-german`         |                            |
| `latex-xcolor`                |                            |
| `texlive-math-extra`          |                            |
| `texlive-latex-extra`         |                            |
| `texlive-bibtex-extra`        |                            |
| `biber`                       |                            |
| `fontconfig`                  |                            |
| `texlive-xetex`               |                            |


[license]: https://img.shields.io/github/license/jpbernius/docker-pandoc.svg?maxAge=2592000
[license_link]: https://github.com/jpbernius/docker-pandoc/blob/master/LICENSE
[docker_repo]: https://hub.docker.com/r/jpbernius/pandoc/
[docker_starts]: https://img.shields.io/docker/stars/jpbernius/pandoc.svg
[docker_pulls]: https://img.shields.io/docker/pulls/jpbernius/pandoc.svg
