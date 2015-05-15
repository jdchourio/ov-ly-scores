
make -k pdf

# ADU: pourquoi le makefile ne marche pas pour ce fichier...
cd scarlatti/k417
lilypond -ddelete-intermediate-files -dno-point-and-click -o ../../pdf/a4-210x297x4/k417-longo-a4-210x297x4 k417-longo-a4-210x297x4.ly
cd ../..

cd pdf 
echo "" | ps2pdf -sPAPERSIZE=a3 - | pdf90 --a3paper /dev/stdin --outfile emptypage.pdf
pdfnup --suffix nup --nup '2x1' --landscape --a3paper a4-210x297x4/k417-a4-210x297x4.pdf
pdfnup --suffix nup --nup '2x1' --landscape --a3paper a4-210x297x4/k417-longo-a4-210x297x4.pdf
pdfnup --suffix nup --nup '2x1' --landscape --a3paper a4-210x297x4/k41-a4-210x297x4.pdf

gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=scores.pdf \
	emptypage.pdf				\
	emptypage.pdf				\
	a3-297x297x1/k1-a3-297x297x1r.pdf	\
	a3-297x297x2/k27-a3-297x297x2.pdf	\
	a3-297x297x2/k37-a3-297x297x2.pdf	\
	a3-297x297x2/k48-a3-297x297x2.pdf	\
	a3-297x297x2/k53-a3-297x297x2.pdf	\
	a3-297x297x2/k54-a3-297x297x2.pdf	\
	a3-297x297x2/k55-a3-297x297x2.pdf	\
	a3-297x297x2/k56-a3-297x297x2.pdf	\
	a3-297x297x2/k61-a3-297x297x2.pdf	\
	a3-297x297x1/k62-a3-297x297x1l.pdf	\
	a3-297x297x1/k67-a3-297x297x1r.pdf	\
	a3-297x297x1/k63-a3-297x297x1l.pdf	\
	a3-297x297x1/k64-a3-297x297x1r.pdf	\
	a3-297x297x2/k77-a3-297x297x2.pdf	\
	a3-297x297x2/k99-a3-297x297x2.pdf	\
	a3-297x297x2/k100-a3-297x297x2.pdf	\
	a3-297x297x2/k30-a3-297x297x2.pdf	\
	k41-a4-210x297x4-nup.pdf		\
	a3-297x297x2/k58-a3-297x297x2.pdf	\
	a3-297x297x2/k93-a3-297x297x2.pdf	\
	k417-longo-a4-210x297x4-nup.pdf		\
	k417-a4-210x297x4-nup.pdf		\
	a3-297x297x1/k87-a3-297x297x1l.pdf	\
	a3-297x297x1/k35-a3-297x297x1r.pdf	\
	a3-297x297x1/k59-a3-297x297x1l.pdf	\
	a3-297x297x1/k102-a3-297x297x1r.pdf	\
	a3-297x297x1/k185-a3-297x297x1l.pdf	\
	emptypage.pdf				\

