# Auxiliary files stay in build/. latexmk moves the PDF to the project root.
# Never put a TeX-program magic comment in a .tex file. The editor treats it
# as an order to run that engine directly, which writes .aux/.log/.out here.
$aux_dir = 'build';
$out_dir = '';
$emulate_aux = 1;

my $src = join ' ', @ARGV;
if ($src =~ /marti_ferran_gonzales_cv/) {
    $pdf_mode = 4; # lualatex: Calibri is loaded with fontspec
} else {
    $pdf_mode = 1; # pdflatex
}
