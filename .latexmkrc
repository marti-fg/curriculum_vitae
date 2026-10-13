# pdflatex writes into build/. latexmk then moves the PDF and SyncTeX
# file to the project root and leaves the auxiliary files in build/.
$aux_dir = 'build';
$out_dir = '';
$emulate_aux = 1;
