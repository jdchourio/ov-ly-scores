
# Détermination du nombre de processeurs
CPU_CORES=`cat /proc/cpuinfo | grep -m1 "cpu cores" | sed s/".*: "//`

# La commande d'appel à lilypond
LILY_CMD = lilypond -ddelete-intermediate-files -dno-point-and-click -djob-count=$(CPU_CORES)

# Les suffixes utilisés dans ce Makefile
.SUFFIXES: .ly .ily .pdf .midi

# variantes de format
A4x1=a4-210x297x1
A4x2=a4-210x297x2
A4x3=a4-210x297x3
A4x4=a4-210x297x4
A3x1=a3-297x297x1
A3x2=a3-297x297x2

# partitions
scarlatti = k1 k100 k102 k185 k27 k30 k35 k37 k41 k417 k417-longo k48 k53 k54 k55 k56 k58 k59 k61 k62 k63 k64 k67 k77 k87 k93 k99

# objets a construire
# /!\ utiliser make -k, car tous les formats ne sont pas présents pour toutes les cibles
pdf_scarlatti_std = $(scarlatti:%=pdf/%.pdf)
pdf_scarlatti_A4x1 = $(scarlatti:%=pdf/$(A4x1)/%-$(A4x1).pdf)
pdf_scarlatti_A4x2 = $(scarlatti:%=pdf/$(A4x2)/%-$(A4x2).pdf)
pdf_scarlatti_A4x3 = $(scarlatti:%=pdf/$(A4x3)/%-$(A4x3).pdf)
pdf_scarlatti_A4x4 = $(scarlatti:%=pdf/$(A4x4)/%-$(A4x4).pdf)
pdf_scarlatti_A3x1 = $(scarlatti:%=pdf/$(A3x1)/%-$(A3x1)l.pdf) $(scarlatti:%=pdf/$(A3x1)/%-$(A3x1)r.pdf)
pdf_scarlatti_A3x2 = $(scarlatti:%=pdf/$(A3x2)/%-$(A3x2).pdf)

png_scarlatti_std = $(scarlatti:%=png/%.png)

pdf = $(pdf_scarlatti_A4x1) \
      $(pdf_scarlatti_A4x2) \
      $(pdf_scarlatti_A4x3) \
      $(pdf_scarlatti_A4x4) \
      $(pdf_scarlatti_A3x1) \
      $(pdf_scarlatti_A3x2) \
      $(pdf_scarlatti_std)

# chemins vers les sources
VPATH = $(scarlatti:%=$(CURDIR)/scarlatti/%)

# regles de construction + dependances
pdf/$(A4x1)/%-$(A4x1).pdf: %-$(A4x1).ly %.ily
	mkdir -p pdf/$(A4x1) && $(LILY_CMD) -o pdf/$(A4x1) $<

pdf/$(A4x2)/%-$(A4x2).pdf: %-$(A4x2).ly %.ily
	mkdir -p pdf/$(A4x2) && $(LILY_CMD) -o pdf/$(A4x2) $<

pdf/$(A4x3)/%-$(A4x3).pdf: %-$(A4x3).ly %.ily
	mkdir -p pdf/$(A4x3) && $(LILY_CMD) -o pdf/$(A4x3) $<

pdf/$(A4x4)/%-$(A4x4).pdf: %-$(A4x4).ly %.ily
	mkdir -p pdf/$(A4x4) && $(LILY_CMD) -o pdf/$(A4x4) $<

pdf/$(A3x1)/%-$(A3x1)l.pdf: %-$(A3x1)l.ly %.ily
	mkdir -p pdf/$(A3x1) && $(LILY_CMD) -o pdf/$(A3x1) $<

pdf/$(A3x1)/%-$(A3x1)r.pdf: %-$(A3x1)r.ly %.ily
	mkdir -p pdf/$(A3x1) && $(LILY_CMD) -o pdf/$(A3x1) $<


pdf/$(A3x2)/%-$(A3x2).pdf: %-$(A3x2).ly %.ily
	mkdir -p pdf/$(A3x2) && $(LILY_CMD) -o pdf/$(A3x2) $<

pdf/%.pdf: %.ly %.ily
	mkdir -p pdf && $(LILY_CMD) -o pdf $<

png/%.png: %.ly %.ily
	mkdir -p png && $(LILY_CMD) --png -ddelete-intermediate-files=#f -dresolution=300 -o png $<

pdf: $(pdf)
	
png: $(png_scarlatti_std)

all: $(pdf) $(png_scarlatti_std)
.PHONY : all png pdf

# ./others/Suite_jeremiah_clarke.ly
# ./others/trio_vivaldi.ly
# ./rameau/livri/livri.ly
# ./bach/english_suites/prelude.ly
# ./scarlatti/k99/k99.ily
# ./scarlatti/k99/k99-a3-297x297x2.ly
# ./scarlatti/k99/k99-a4-150x297x4.ly
# ./scarlatti/k99/k99-a4-210x297x3.ly
# ./scarlatti/k99/k99-a4-297x150x4.ly
# ./scarlatti/k99/k99.ly
# ./scarlatti/k99/k99-a4-210x297x2.ly
# ./scarlatti/k56/k56-a3-297x297x2.ly
# ./scarlatti/k56/k56.ily
# ./scarlatti/k56/k56.ly
# ./scarlatti/k56/k56-a4-210x297x3.ly
# ./scarlatti/k56/k56-a4-210x297x2.ly
# ./scarlatti/k100/k100-a4-210x297x3.ly
# ./scarlatti/k100/k100-a3-297x297x2.ly
# ./scarlatti/k100/k100-a4-210x297x2.ly
# ./scarlatti/k100/k100.ily
# ./scarlatti/k100/k100.ly
# ./scarlatti/k35/k35-a3-297x297x1.ly
# ./scarlatti/k35/k35-a4-210x297x2.ly
# ./scarlatti/k35/k35.ily
# ./scarlatti/k35/k35.ly
# ./scarlatti/k59/k59-a4-210x297x1.ly
# ./scarlatti/k59/k59-a3-297x297x1.ly
# ./scarlatti/k59/k59.ly
# ./scarlatti/k59/k59.ily
# ./scarlatti/k54/k54.ily
# ./scarlatti/k54/k54-a4-210x297x2.ly
# ./scarlatti/k54/k54-a4-210x297x3.ly
# ./scarlatti/k54/k54-a4-297x150x4.ly
# ./scarlatti/k54/k54.ly
# ./scarlatti/k54/k54-a4-150x297x4.ly
# ./scarlatti/k54/k54-a3-297x297x2.ly
# ./scarlatti/k27/k27-a3-297x297x2.ly
# ./scarlatti/k27/k27-a4-210x297x2.ly
# ./scarlatti/k27/k27-a4-210x297x3.ly
# ./scarlatti/k27/k27.ly
# ./scarlatti/k27/k27.ily
# ./scarlatti/k62/k62.ly
# ./scarlatti/k62/k62.ily
# ./scarlatti/k62/k62-a4-210x297x2.ly
# ./scarlatti/k62/k62-a3-297x297x1.ly
# ./scarlatti/k41/k41-a4-210x297x3.ly
# ./scarlatti/k41/k41-a4-297x150x4.ly
# ./scarlatti/k41/k41.ily
# ./scarlatti/k41/k41-a4-150x297x4.ly
# ./scarlatti/k41/k41.ly
# ./scarlatti/k41/k41-a3-297x297x2.ly
# ./scarlatti/k63/k63.ly
# ./scarlatti/k63/k63-a3-297x297x1.ly
# ./scarlatti/k63/k63.ily
# ./scarlatti/k63/k63-a4-210x297x1.ly
# ./scarlatti/k48/k48-a3-297x297x2.ly
# ./scarlatti/k48/k48.ly
# ./scarlatti/k48/k48-a4-210x297x2.ly
# ./scarlatti/k48/k48.ily
# ./scarlatti/k48/k48-a4-210x297x3.ly
# ./scarlatti/k87/k87.ly
# ./scarlatti/k87/k87-a3-297x297x1.ly
# ./scarlatti/k87/k87.ily
# ./scarlatti/k87/k87-a4-210x297x1.ly
# ./scarlatti/k30/k30-a4-150x297x4.ly
# ./scarlatti/k30/k30.ly
# ./scarlatti/k30/k30.ily
# ./scarlatti/k30/k30-a3-297x297x2.ly
# ./scarlatti/k30/k30-a4-210x297x3.ly
# ./scarlatti/k30/k30-a4-297x150x4.ly
# ./scarlatti/k53/k53-a3-297x297x2.ly
# ./scarlatti/k53/k53-a4-297x150x4.ly
# ./scarlatti/k53/k53-a4-210x297x2.ly
# ./scarlatti/k53/k53-a4-150x297x4.ly
# ./scarlatti/k53/k53-a4-210x297x3.ly
# ./scarlatti/k53/k53.ily
# ./scarlatti/k53/k53.ly
# ./scarlatti/k417/k417.ly
# ./scarlatti/k58/k58.ily
# ./scarlatti/k58/k58-a4-150x297x4.ly
# ./scarlatti/k58/k58-a3-297x297x2.ly
# ./scarlatti/k58/k58.ly
# ./scarlatti/k58/k58-a4-210x297x3.ly
# ./scarlatti/k58/k58-a4-297x150x4.ly
# ./scarlatti/k102/k102-a4-210x297x2.ly
# ./scarlatti/k102/k102-a3-297x297x2.ly
# ./scarlatti/k102/k102.ily
# ./scarlatti/k102/k102.ly
# ./scarlatti/k102/k102-a4-210x297x3.ly
# ./scarlatti/template.ly
# ./scarlatti/k55/k55.ily
# ./scarlatti/k55/k55-a4-210x297x3.ly
# ./scarlatti/k55/k55-a3-297x297x2.ly
# ./scarlatti/k55/k55.ly
# ./scarlatti/k55/k55-a4-210x297x2.ly
# ./scarlatti/k64/k64.ily
# ./scarlatti/k64/k64-a4-210x297x1.ly
# ./scarlatti/k64/k64.ly
# ./scarlatti/k64/k64-a3-297x297x1.ly
# ./scarlatti/k185/k185-a3-297x297x1.ly
# ./scarlatti/k185/k185.ly
# ./scarlatti/k185/k185-a4-210x297x1.ly
# ./scarlatti/k185/k185.ily
# ./scarlatti/k77/k77.ly
# ./scarlatti/k77/k77-a3-297x297x2.ly
# ./scarlatti/k77/k77-a4-210x297x2.ly
# ./scarlatti/k77/k77-a4-210x297x3.ly
# ./scarlatti/k77/k77.ily
# ./scarlatti/k1/k1-a3-297x297x1.ly
# ./scarlatti/k1/k1-a4-210x297x1.ly
# ./scarlatti/k1/k1-a4-210x297x2.ly
# ./scarlatti/k1/k1.ily
# ./scarlatti/k1/k1.ly
# ./scarlatti/k67/k67.ily
# ./scarlatti/k67/k67-a4-210x297x1.ly
# ./scarlatti/k67/k67-a3-297x297x1.ly
# ./scarlatti/k67/k67.ly
# ./scarlatti/k61/k61-a4-210x297x3.ly
# ./scarlatti/k61/k61.ily
# ./scarlatti/k61/k61.ly
# ./scarlatti/k61/k61-a4-150x297x4.ly
# ./scarlatti/k61/k61-a3-297x297x2.ly
# ./scarlatti/k37/k37-a3-297x297x2.ly
# ./scarlatti/k37/k37-a4-210x297x3.ly
# ./scarlatti/k37/k37.ily
# ./scarlatti/k37/k37-a4-210x297x2.ly
# ./scarlatti/k37/k37.ly
# ./scarlatti/fuga.ly
# ./scarlatti/k93/k93-a4-150x297x4.ly
# ./scarlatti/k93/k93-a4-297x150x4.ly
# ./scarlatti/k93/k93.ily
# ./scarlatti/k93/k93.ly
# ./scarlatti/k93/k93-a4-210x297x3.ly
# ./scarlatti/k93/k93-a3-297x297x2.ly
