# Mahalanobis MMD Biomedical Two-Sample Testing Report

This repository contains the LaTeX source, compiled PDF, and all figure assets
needed to render the final report.

## Contents

- `report.tex`: main LaTeX source.
- `report.pdf`: compiled PDF preview.
- `figures/`: PNG figures referenced by `report.tex`.
- `report.md`: older Markdown draft kept as source notes.
- `draft_quality_notes.md`: outline and reviewer-style notes.
- `Makefile`: convenience commands for building and cleaning.

## Build

The report is self-contained apart from a standard LaTeX installation. TeX Live
or MacTeX with `latexmk` is recommended.

```bash
make
```

Equivalent direct command:

```bash
latexmk -pdf -interaction=nonstopmode -halt-on-error report.tex
```

The expected output is `report.pdf`. All referenced images are stored under
`figures/`, so the report should compile after cloning without needing the
original experiment repository.

## Clean Build Files

```bash
make clean
```
