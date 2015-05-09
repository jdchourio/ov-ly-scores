
# La commande d'appel à lilypond
LILY_CMD = lilypond -ddelete-intermediate-files -dno-point-and-click

# Les suffixes utilisés dans ce Makefile
.SUFFIXES: .ly .ily .pdf .midi

# variantes de format
A4x1=a4-210x297x1
A4x2=a4-210x297x2
A4x3=a4-210x297x3
A4x4=a4-210x297x4
A3x1=a3-297x297x1
A3x2=a3-297x297x2

#
# objets a construire
#
# scarlatti
pdf_scarlatti_A4x1 = k1 k59 k63 k87 k64 k185 k67
pdf_scarlatti_A4x2 = k1 k27 k35 k37 k48 k53 k54 k55 k56 k62 k77 k99 k100 k102
pdf_scarlatti_A4x3 = k27 k30 k37 k41 k48 k53 k54 k55 k56 k58 k61 k77 k93 k99 k100 k102
pdf_scarlatti_A4x4 = k41 k417 k417-longo
pdf_scarlatti_A3x1 = k1 k35 k59 k62 k63 k64 k67 k87 k100 k102 k185
pdf_scarlatti_A3x2 = k27 k30 k37 k41 k48 k53 k54 k55 k56 k58 k61 k77 k93 k99 k100 k102
pdf_scarlatti_none = k1 k27 k30 k35 k37 k41 k48 k53 k54 k55 k56 k58 k59 k61 k62 k63 k64 k67 k77 k87 k93 k99 k100 k102 k185 k417

pdf_scarlatti = $(pdf_scarlatti_A4x1:%=pdf/$(A4x1)/%-$(A4x1).pdf)  \
  		$(pdf_scarlatti_A4x2:%=pdf/$(A4x2)/%-$(A4x2).pdf)  \
  		$(pdf_scarlatti_A4x3:%=pdf/$(A4x3)/%-$(A4x3).pdf)  \
  		$(pdf_scarlatti_A4x4:%=pdf/$(A4x4)/%-$(A4x4).pdf)  \
  		$(pdf_scarlatti_A3x1:%=pdf/$(A3x1)/%-$(A3x1)l.pdf) \
  		$(pdf_scarlatti_A3x1:%=pdf/$(A3x1)/%-$(A3x1)r.pdf) \
  		$(pdf_scarlatti_A3x2:%=pdf/$(A3x2)/%-$(A3x2).pdf)  \
  		$(pdf_scarlatti_none:%=pdf/%.pdf)

# purcell
pdf_purcell_A3x1 = act_tune dance_for_the_fairies Rondeau z661-prelude
pdf_purcell_A3x2 = chaconne
pdf_purcell_A4x1 = act_tune dance_for_the_fairies Rondeau z661-prelude
pdf_purcell_A4x2 = act_tune
pdf_purcell_A4x3 = chaconne
pdf_purcell_none = z661-allemande z661-courante z661-prelude z661-sarabande

pdf_purcell = $(pdf_purcell_A3x1:%=pdf/$(A3x1)/%-$(A3x1)l.pdf) \
  	      $(pdf_purcell_A3x1:%=pdf/$(A3x1)/%-$(A3x1)r.pdf) \
	      $(pdf_purcell_A3x2:%=pdf/$(A3x2)/%-$(A3x2).pdf)  \
	      $(pdf_purcell_A4x1:%=pdf/$(A4x1)/%-$(A4x1).pdf)  \
	      $(pdf_purcell_A4x2:%=pdf/$(A4x2)/%-$(A4x2).pdf)  \
	      $(pdf_purcell_A4x3:%=pdf/$(A4x3)/%-$(A4x3).pdf)  \
	      $(pdf_purcell_none:%=pdf/%.pdf)

pdf = $(pdf_scarlatti) $(pdf_purcell)

# chemins vers les sources
scarlatti_dirs = k1 k27 k30 k35 k37 k41 k48 k53 k54 k55 k56 k58 k59 k61 k62 k63 k64 k67 k77 k87 k93 k99 k100 k102 k185 k417
purcell_dirs = fairy_queen z661

VPATH = $(scarlatti_dirs:%=$(CURDIR)/scarlatti/%) \
	$(purcell_dirs:%=$(CURDIR)/purcell/%)

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

all: $(pdf)

# cas particuliers
pdf/$(A4x4)/k417-longo-$(A4x4).pdf: k417-longo-$(A4x4).ly k417.ily
	mkdir -p pdf/$(A4x4) && $(LILY_CMD) -o pdf/$(A4x4) $<

.PHONY : all png pdf

#./bach/bwv964/bwv964-adagio-a3-297x297x1l.ly
#./bach/bwv964/bwv964-adagio-a3-297x297x1r.ly
#./bach/bwv964/bwv964-adagio-a3-297x297x2.ly
#./bach/bwv964/bwv964-adagio.ly
#./bach/bwv964/bwv964-allegro-a3-297x297x2.ly
#./bach/bwv964/bwv964-allegro-a4-210x297x3.ly
#./bach/bwv964/bwv964-allegro.ly
#./bach/bwv964/bwv964-andante-a3-297x297x1l.ly
#./bach/bwv964/bwv964-andante-a3-297x297x1r.ly
#./bach/bwv964/bwv964-andante-a4-210x297x1.ly
#./bach/bwv964/bwv964-fuga-a3-297x297x4.ly
#./bach/bwv964/bwv964-fuga-a4-210x297x4.ly
#./bach/bwv964/bwv964-fuga-a4-210x297x6.ly
#./bach/bwv964/bwv964-fuga.ly
#./bach/bwv971-concerto_italien/bwv971-1.ly
#./bach/bwv971-concerto_italien/bwv971-2.ly
#./bach/bwv971-concerto_italien/bwv971-3.ly
#./bach/english_suites/prelude.ly
#./others/Suite_jeremiah_clarke.ly
#./others/trio_vivaldi.ly
#./purcell/fairy_queen/act_tune-a3-297x297x1l.ly
#./purcell/fairy_queen/act_tune-a3-297x297x1r.ly
#./purcell/fairy_queen/act_tune-a4-210x297x1.ly
#./purcell/fairy_queen/act_tune-a4-210x297x2.ly
#./purcell/fairy_queen/chaconne-a3-210x297x2.ly
#./purcell/fairy_queen/chaconne-a4-210x297x3.ly
#./purcell/fairy_queen/dance_for_the_fairies-a3-297x297x1l.ly
#./purcell/fairy_queen/dance_for_the_fairies-a3-297x297x1r.ly
#./purcell/fairy_queen/dance_for_the_fairies-a4-210x297x1.ly
#./purcell/fairy_queen/Rondeau-a3-297x297x1l.ly
#./purcell/fairy_queen/Rondeau-a3-297x297x1r.ly
#./purcell/fairy_queen/Rondeau-a4-210x297x1.ly
#./purcell/z661/z661-allemande.ly
#./purcell/z661/z661-courante.ly
#./purcell/z661/z661-prelude-a3-297x297x1l.ly
#./purcell/z661/z661-prelude-a3-297x297x1r.ly
#./purcell/z661/z661-prelude-a4-210x297x1.ly
#./purcell/z661/z661-prelude.ly
#./purcell/z661/z661-sarabande.ly
#./rameau/gavotte6doubles/gavotte6doubles.ly
#./rameau/livri/livri.ly
#./rameau/poule/poule.ly
#./scarlatti/fuga.ly
#./scarlatti/k100/k100-a3-297x297x1l.ly
#./scarlatti/k100/k100-a3-297x297x1r.ly
#./scarlatti/k100/k100-a3-297x297x2.ly
#./scarlatti/k100/k100-a4-210x297x2.ly
#./scarlatti/k100/k100-a4-210x297x3.ly
#./scarlatti/k100/k100.ly
#./scarlatti/k102/k102-a3-297x297x1l.ly
#./scarlatti/k102/k102-a3-297x297x1r.ly
#./scarlatti/k102/k102-a3-297x297x2.ly
#./scarlatti/k102/k102-a4-210x297x2.ly
#./scarlatti/k102/k102-a4-210x297x3.ly
#./scarlatti/k102/k102.ly
#./scarlatti/k185/k185-a3-297x297x1l.ly
#./scarlatti/k185/k185-a3-297x297x1r.ly
#./scarlatti/k185/k185-a4-210x297x1.ly
#./scarlatti/k185/k185.ly
#./scarlatti/k1/k1-a3-297x297x1l.ly
#./scarlatti/k1/k1-a3-297x297x1r.ly
#./scarlatti/k1/k1-a4-210x297x1.ly
#./scarlatti/k1/k1-a4-210x297x2.ly
#./scarlatti/k1/k1.ly
#./scarlatti/k27/k27-a3-297x297x2.ly
#./scarlatti/k27/k27-a4-210x297x2.ly
#./scarlatti/k27/k27-a4-210x297x3.ly
#./scarlatti/k27/k27.ly
#./scarlatti/k30/k30-a3-297x297x2.ly
#./scarlatti/k30/k30-a4-150x297x4.ly
#./scarlatti/k30/k30-a4-210x297x3.ly
#./scarlatti/k30/k30-a4-297x150x4.ly
#./scarlatti/k30/k30.ly
#./scarlatti/k35/k35-a3-297x297x1l.ly
#./scarlatti/k35/k35-a3-297x297x1r.ly
#./scarlatti/k35/k35-a4-210x297x2.ly
#./scarlatti/k35/k35.ly
#./scarlatti/k37/k37-a3-297x297x2.ly
#./scarlatti/k37/k37-a4-210x297x2.ly
#./scarlatti/k37/k37-a4-210x297x3.ly
#./scarlatti/k37/k37.ly
#./scarlatti/k417/k417-a4-210x297x4.ly
#./scarlatti/k417/k417-longo-a4-210x297x4.ly
#./scarlatti/k417/k417-longo.ly
#./scarlatti/k417/k417.ly
#./scarlatti/k41/k41-a3-297x297x2.ly
#./scarlatti/k41/k41-a4-150x297x4.ly
#./scarlatti/k41/k41-a4-210x297x3.ly
#./scarlatti/k41/k41-a4-210x297x4.ly
#./scarlatti/k41/k41-a4-297x150x4.ly
#./scarlatti/k41/k41.ly
#./scarlatti/k48/k48-a3-297x297x2.ly
#./scarlatti/k48/k48-a4-210x297x2.ly
#./scarlatti/k48/k48-a4-210x297x3.ly
#./scarlatti/k48/k48.ly
#./scarlatti/k53/k53-a3-297x297x2.ly
#./scarlatti/k53/k53-a4-150x297x4.ly
#./scarlatti/k53/k53-a4-210x297x2.ly
#./scarlatti/k53/k53-a4-210x297x3.ly
#./scarlatti/k53/k53-a4-297x150x4.ly
#./scarlatti/k53/k53.ly
#./scarlatti/k54/k54-a3-297x297x2.ly
#./scarlatti/k54/k54-a4-150x297x4.ly
#./scarlatti/k54/k54-a4-210x297x2.ly
#./scarlatti/k54/k54-a4-210x297x3.ly
#./scarlatti/k54/k54-a4-297x150x4.ly
#./scarlatti/k54/k54.ly
#./scarlatti/k55/k55-a3-297x297x2.ly
#./scarlatti/k55/k55-a4-210x297x2.ly
#./scarlatti/k55/k55-a4-210x297x3.ly
#./scarlatti/k55/k55.ly
#./scarlatti/k56/k56-a3-297x297x2.ly
#./scarlatti/k56/k56-a4-210x297x2.ly
#./scarlatti/k56/k56-a4-210x297x3.ly
#./scarlatti/k56/k56.ly
#./scarlatti/k58/k58-a3-297x297x2.ly
#./scarlatti/k58/k58-a4-150x297x4.ly
#./scarlatti/k58/k58-a4-210x297x3.ly
#./scarlatti/k58/k58-a4-297x150x4.ly
#./scarlatti/k58/k58.ly
#./scarlatti/k59/k59-a3-297x297x1l.ly
#./scarlatti/k59/k59-a3-297x297x1r.ly
#./scarlatti/k59/k59-a4-210x297x1.ly
#./scarlatti/k59/k59.ly
#./scarlatti/k61/k61-a3-297x297x2.ly
#./scarlatti/k61/k61-a4-150x297x4.ly
#./scarlatti/k61/k61-a4-210x297x3.ly
#./scarlatti/k61/k61.ly
#./scarlatti/k62/k62-a3-297x297x1l.ly
#./scarlatti/k62/k62-a3-297x297x1r.ly
#./scarlatti/k62/k62-a4-210x297x2.ly
#./scarlatti/k62/k62.ly
#./scarlatti/k63/k63-a3-297x297x1l.ly
#./scarlatti/k63/k63-a3-297x297x1r.ly
#./scarlatti/k63/k63-a4-210x297x1.ly
#./scarlatti/k63/k63.ly
#./scarlatti/k64/k64-a3-297x297x1l.ly
#./scarlatti/k64/k64-a3-297x297x1r.ly
#./scarlatti/k64/k64-a4-210x297x1.ly
#./scarlatti/k64/k64.ly
#./scarlatti/k67/k67-a3-297x297x1l.ly
#./scarlatti/k67/k67-a3-297x297x1r.ly
#./scarlatti/k67/k67-a4-210x297x1.ly
#./scarlatti/k67/k67.ly
#./scarlatti/k77/k77-a3-297x297x2.ly
#./scarlatti/k77/k77-a4-210x297x2.ly
#./scarlatti/k77/k77-a4-210x297x3.ly
#./scarlatti/k77/k77.ly
#./scarlatti/k87/k87-a3-297x297x1l.ly
#./scarlatti/k87/k87-a3-297x297x1r.ly
#./scarlatti/k87/k87-a4-210x297x1.ly
#./scarlatti/k87/k87.ly
#./scarlatti/k93/k93-a3-297x297x2.ly
#./scarlatti/k93/k93-a4-150x297x4.ly
#./scarlatti/k93/k93-a4-210x297x3.ly
#./scarlatti/k93/k93-a4-297x150x4.ly
#./scarlatti/k93/k93.ly
#./scarlatti/k99/k99-a3-297x297x2.ly
#./scarlatti/k99/k99-a4-150x297x4.ly
#./scarlatti/k99/k99-a4-210x297x2.ly
#./scarlatti/k99/k99-a4-210x297x3.ly
#./scarlatti/k99/k99-a4-297x150x4.ly
#./scarlatti/k99/k99.ly
#./scarlatti/template.ly
#./scarlatti/test.ly
