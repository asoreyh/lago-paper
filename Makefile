base=lago
version=
name=${base}${version}
all:
	pdflatex ${name}.tex

full:
	make clean
	pdflatex ${name}.tex
	bibtex ${name}
	pdflatex ${name}.tex
	pdflatex ${name}.tex
	pdflatex ${name}.tex

clean:
	rm -f ${name}.aux ${name}.log ${name}.bbl ${name}.blg ${name}.out ${name}.toc

fullclean:
	rm -f *.aux *.log *.bbl *.blg *.out *.toc
	rm -f sites/*.aux sites/*.log sites/*.bbl sites/*.blg sites/*.out sites/*.toc

fulldel:
	make fullclean
	rm -f ${name}.pdf 
