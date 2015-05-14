
# La commande d'appel à lilypond
LILY_CMD = lilypond -ddelete-intermediate-files -dno-point-and-click

# Les suffixes utilisés dans ce Makefile
.SUFFIXES: .ly .ily .pdf .midi

# variantes de format
A4x1=a4-210x297x1
A4x2=a4-210x297x2
A4x3=a4-210x297x3
A4x4=a4-210x297x4
A4x5=a4-210x297x5
A4x6=a4-210x297x6

A3x1=a3-297x297x1
A3x2=a3-297x297x2
A3x3=a3-297x297x3
A3x4=a3-297x297x4


#
# objets a construire
#
# scarlatti
pdf_scarlatti_A4x1 = k1 k59 k63 k87 k64 k185 k67
pdf_scarlatti_A4x2 = k1 k27 k35 k37 k48 k53 k54 k55 k56 k62 k77 k99 k100 k102 k491
pdf_scarlatti_A4x3 = k27 k30 k37 k41 k48 k53 k54 k55 k56 k58 k61 k77 k93 k99 k100 k102 k491
pdf_scarlatti_A4x4 = k41 k417 k417-longo
pdf_scarlatti_A3x1 = k1 k35 k59 k62 k63 k64 k67 k87 k100 k102 k185
pdf_scarlatti_A3x2 = k27 k30 k37 k41 k48 k53 k54 k55 k56 k58 k61 k77 k93 k99 k100 k102 k491
pdf_scarlatti_none = k1 k27 k30 k35 k37 k41 k48 k53 k54 k55 k56 k58 k59 k61 k62 k63 k64 k67 k77 k87 k93 k99 k100 k102 k185 k417

pdf_scarlatti = $(pdf_scarlatti_A4x1:%=pdf/$(A4x1)/%-$(A4x1).pdf)  \
  		$(pdf_scarlatti_A4x2:%=pdf/$(A4x2)/%-$(A4x2).pdf)  \
  		$(pdf_scarlatti_A4x3:%=pdf/$(A4x3)/%-$(A4x3).pdf)  \
  		$(pdf_scarlatti_A4x4:%=pdf/$(A4x4)/%-$(A4x4).pdf)  \
  		$(pdf_scarlatti_A3x1:%=pdf/$(A3x1)/%-$(A3x1)l.pdf) \
  		$(pdf_scarlatti_A3x1:%=pdf/$(A3x1)/%-$(A3x1)r.pdf) \
  		$(pdf_scarlatti_A3x2:%=pdf/$(A3x2)/%-$(A3x2).pdf)  \
  		$(pdf_scarlatti_none:%=pdf/%.pdf)

# bach
pdf_bach_A3x1 = bwv964-adagio bwv964-andante
pdf_bach_A3x2 = bwv964-adagio bwv964-allegro
pdf_bach_A3x4 = bwv964-fuga
pdf_bach_A4x1 = bwv964-andante
pdf_bach_A4x3 = bwv964-allegro
pdf_bach_A4x4 = bwv964-fuga
pdf_bach_A4x6 = bwv964-fuga
pdf_bach_none = bwv964-adagio bwv964-allegro bwv964-fuga bwv971-1 bwv971-2 bwv971-3

pdf_bach = $(pdf_bach_A3x1:%=pdf/$(A3x1)/%-$(A3x1)l.pdf) \
	   $(pdf_bach_A3x1:%=pdf/$(A3x1)/%-$(A3x1)r.pdf) \
	   $(pdf_bach_A3x2:%=pdf/$(A3x2)/%-$(A3x2).pdf)  \
	   $(pdf_bach_A3x4:%=pdf/$(A3x4)/%-$(A3x4).pdf)  \
	   $(pdf_bach_A4x1:%=pdf/$(A4x1)/%-$(A4x1).pdf)  \
	   $(pdf_bach_A4x3:%=pdf/$(A4x3)/%-$(A4x3).pdf)  \
	   $(pdf_bach_A4x4:%=pdf/$(A4x4)/%-$(A4x4).pdf)  \
	   $(pdf_bach_A4x6:%=pdf/$(A4x6)/%-$(A4x6).pdf)  \
	   $(pdf_bach_none:%=pdf/%.pdf)

# purcell
pdf_purcell_A3x1 = act_tune dance_for_the_fairies Rondeau z661-prelude
pdf_purcell_A3x2 = chaconne
pdf_purcell_A4x1 = act_tune dance_for_the_fairies Rondeau z661-prelude z661-allemande z661-courante-sarabande
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

# rameau
pdf_rameau_none = livri poule gavotte6doubles
pdf_rameau = $(pdf_rameau_none:%=pdf/%.pdf)


# couperin 
pdf_couperin_none = barricades
pdf_couperin = $(pdf_couperin_none:%=pdf/%.pdf)


# autres
pdf_others_none = Suite_jeremiah_clarke trio_vivaldi gavotte_campion
pdf_others = $(pdf_others_none:%=pdf/%.pdf)


pdf = $(pdf_scarlatti) $(pdf_bach) $(pdf_rameau) $(pdf_purcell) $(pdf_couperin) $(pdf_others)


#
# chemins vers les sources
#
scarlatti_dirs = k1 k27 k30 k35 k37 k41 k48 k53 k54 k55 k56 k58 k59 k61 k62 k63 k64 k67 k77 k87 k93 k99 k100 k102 k185 k417 k491
bach_dirs = bwv964 bwv971-concerto_italien
purcell_dirs = fairy_queen z661
rameau_dirs = livri poule gavotte6doubles
couperin_dirs = barricades

VPATH = $(scarlatti_dirs:%=$(CURDIR)/scarlatti/%) \
	$(bach_dirs:%=$(CURDIR)/bach/%)		  \
	$(rameau_dirs:%=$(CURDIR)/rameau/%)	  \
	$(couperin_dirs:%=$(CURDIR)/couperin/%)	  \
	$(purcell_dirs:%=$(CURDIR)/purcell/%)	  \
	$(CURDIR)/others


#
# regles de construction + dependances
#
pdf/$(A4x1)/%-$(A4x1).pdf: %-$(A4x1).ly %.ily
	mkdir -p pdf/$(A4x1) && $(LILY_CMD) -o pdf/$(A4x1) $<

pdf/$(A4x2)/%-$(A4x2).pdf: %-$(A4x2).ly %.ily
	mkdir -p pdf/$(A4x2) && $(LILY_CMD) -o pdf/$(A4x2) $<

pdf/$(A4x3)/%-$(A4x3).pdf: %-$(A4x3).ly %.ily
	mkdir -p pdf/$(A4x3) && $(LILY_CMD) -o pdf/$(A4x3) $<

pdf/$(A4x4)/%-$(A4x4).pdf: %-$(A4x4).ly %.ily
	mkdir -p pdf/$(A4x4) && $(LILY_CMD) -o pdf/$(A4x4) $<

pdf/$(A4x5)/%-$(A4x5).pdf: %-$(A4x5).ly %.ily
	mkdir -p pdf/$(A4x5) && $(LILY_CMD) -o pdf/$(A4x5) $<

pdf/$(A4x6)/%-$(A4x6).pdf: %-$(A4x6).ly %.ily
	mkdir -p pdf/$(A4x6) && $(LILY_CMD) -o pdf/$(A4x6) $<

pdf/$(A3x1)/%-$(A3x1)l.pdf: %-$(A3x1)l.ly %.ily
	mkdir -p pdf/$(A3x1) && $(LILY_CMD) -o pdf/$(A3x1) $<

pdf/$(A3x1)/%-$(A3x1)r.pdf: %-$(A3x1)r.ly %.ily
	mkdir -p pdf/$(A3x1) && $(LILY_CMD) -o pdf/$(A3x1) $<

pdf/$(A3x2)/%-$(A3x2).pdf: %-$(A3x2).ly %.ily
	mkdir -p pdf/$(A3x2) && $(LILY_CMD) -o pdf/$(A3x2) $<

pdf/$(A3x3)/%-$(A3x3).pdf: %-$(A3x3).ly %.ily
	mkdir -p pdf/$(A3x3) && $(LILY_CMD) -o pdf/$(A3x3) $<

pdf/$(A3x4)/%-$(A3x4).pdf: %-$(A3x4).ly %.ily
	mkdir -p pdf/$(A3x4) && $(LILY_CMD) -o pdf/$(A3x4) $<

pdf/%.pdf: %.ly %.ily
	mkdir -p pdf && $(LILY_CMD) -o pdf $<

png/%.png: %.ly %.ily
	mkdir -p png && $(LILY_CMD) --png -ddelete-intermediate-files=#f -dresolution=300 -o png $<

all: $(pdf)


#
# cas particuliers
#
# - lorsqu'il n'y a pas de fichier .ily (travaux en cours, format unique, ...)
# - lorsque le fichier .ily n'a pas le meme basename que le fichier .ly
#
pdf/$(A4x4)/k417-longo-$(A4x4).pdf: k417-longo-$(A4x4).ly k417.ily
	mkdir -p pdf/$(A4x4) && $(LILY_CMD) -o pdf/$(A4x4) $<

pdf/$(A4x1)/z661-courante-sarabande-$(A4x1).pdf: z661-courante-sarabande-$(A4x1).ly z661-courante.ily z661-sarabande.ily
	mkdir -p pdf/$(A4x4) && $(LILY_CMD) -o pdf/$(A4x1) $<

pdf/bwv971-1.pdf: bwv971-1.ly 
	$(LILY_CMD) -o pdf $<

pdf/bwv971-2.pdf: bwv971-2.ly 
	$(LILY_CMD) -o pdf $<

pdf/bwv971-3.pdf: bwv971-3.ly 
	$(LILY_CMD) -o pdf $<

pdf/barricades.pdf: barricades.ly 
	$(LILY_CMD) -o pdf $<

pdf/livri.pdf: livri.ly 
	$(LILY_CMD) -o pdf $<

pdf/poule.pdf: poule.ly 
	$(LILY_CMD) -o pdf $<

pdf/gavotte6doubles.pdf: gavotte6doubles.ly
	$(LILY_CMD) -o pdf $<

pdf/Suite_jeremiah_clarke.pdf: Suite_jeremiah_clarke.ly
	$(LILY_CMD) -o pdf $<

pdf/trio_vivaldi.pdf: trio_vivaldi.ly 
	$(LILY_CMD) -o pdf $<

pdf/gavotte_campion.pdf: gavotte_campion.ly 
	$(LILY_CMD) -o pdf $<

.PHONY : all
