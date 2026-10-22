# Build output

Compiling must not leave auxiliary files in the project root.

- Compile with `latexmk` only. Never run `pdflatex`, `lualatex`, or `xelatex` directly. A bare engine writes `.aux`, `.log`, `.out`, and `.fls` next to the source.
- Do not add a `% !TEX program` line to any `.tex` file. The editor treats that comment as an order to run the named engine, and that run ignores `.latexmkrc`. The CV needs LuaLaTeX; `.latexmkrc` selects it when the source is `marti_ferran_gonzales_cv.tex`. Every other file uses pdfLaTeX. The editor recipe is only `latexmk`, with no `-pdf` and no `-lualatex` flag, so the rc file keeps that choice.
- `.latexmkrc` sends auxiliary files to `build/` and leaves the PDF in the project root. Do not pass `-outdir` or `-output-directory`.
- After every compile, check the project root. The only build products allowed there are the PDF and, if latexmk copied it, `.synctex.gz`. Delete any `.aux`, `.log`, `.out`, `.fls`, `.fdb_latexmk`, or `.toc` that landed in the root.
- Do not commit `build/` or PDFs.

# Commits

Every completed change gets its own commit before the next one starts. Do not leave finished work as uncommitted local changes. Do not push unless asked.
