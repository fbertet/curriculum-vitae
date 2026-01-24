# Curriculum vitae

[![CI/CD pipeline](https://img.shields.io/github/actions/workflow/status/fbertet/curriculum-vitae/.github%2Fworkflows%2Fcv.yml?label=CI%2FCD%20Pipeline)](https://github.com/fbertet/curriculum-vitae/actions)
[![Latest Release](https://img.shields.io/github/v/release/fbertet/curriculum-vitae?label=Release)](https://github.com/fbertet/curriculum-vitae/releases/latest)
[![GitHub License](https://img.shields.io/github/license/fbertet/curriculum-vitae?label=License)](LICENSE)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-%23FE5196?logo=conventionalcommits&logoColor=white)](https://conventionalcommits.org)

<p align="center">
    <a href="https://cv-en.bertet.dev">
        <img src="https://github.com/fbertet/curriculum-vitae/releases/latest/download/english_cv_preview.png" alt="English CV preview" width="250">
    </a>
    <a href="https://cv-fr.bertet.dev">
        <img src="https://github.com/fbertet/curriculum-vitae/releases/latest/download/french_cv_preview.png" alt="French CV preview" width="250">
    </a>
</p>

<p align="center">
  <em>My personal CV created with LaTeX and Awesome CV template.</em>
</p>


Latest versions can be found here: [English version 🇬🇧](https://cv-en.bertet.dev) | [French version 🇫🇷](https://cv-fr.bertet.dev)


## Local Development

To build this CV locally, you will need to have Git and Docker installed, then:
``` bash
git clone git@github.com:fbertet/curriculum-vitae.git
cd curriculum-vitae
make
```

Wait ~30 seconds and look at the resulting .pdf files in the `outputs/` directory.


## CI/CD Pipeline

This repository uses a Github Actions workflow CI/CD pipeline.

When changes are pushed on `main` or on branches that have an associated PR:
- Build job runs to compile PDFs

When a tag `v*.*` is pushed:
- Build job runs to compile PDFs
- Create-preview to create PNG versions of the CV (Displayed above in this README)
- Deploy job runs to create a Github release and upload PDFs and PNGs as release assets


## DNS Records & Redirection rules

To allow me sharing my CV easily, I configured DNS records and redirection rules:
- https://cv-fr.bertet.dev leads to `https://github.com/fbertet/curriculum-vitae/releases/latest/download/french_cv.pdf`
- https://cv-en.bertet.dev leads to `https://github.com/fbertet/curriculum-vitae/releases/latest/download/english_cv.pdf`


## Acknowledgments

- Awesome CV: https://github.com/posquit0/Awesome-CV
- LaTeX project: https://github.com/latex3


## License

This project is licensed under the LaTeX Project Public License (LPPL Version 1.3c) – see the [LICENSE](LICENSE) file for details.
