
# La commande d'appel à lilypond
LILY_CMD = lilypond -ddelete-intermediate-files -dno-point-and-click

# version
VERSION := $(shell lilypond -v | head -n 1 | sed -e 's/GNU LilyPond //')

# pour faire coexister la génération avec plusieurs versions
# => le chemin absolu vers lilypond provient de $PATH
PDF = pdf/$(VERSION)

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
A3x4=a3-297x297x4

A4_175x1 =a4-175x297x1
A4_175x2 =a4-175x297x2
A4_175x3 =a4-175x297x3
A4_175x4 =a4-175x297x4
A4_175x6 =a4-175x297x6

NONE = default


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
pdf_scarlatti_A4_175x1 = k64
pdf_scarlatti_A4_175x2 = k1 k35 k59 k62 k63 k67 k87 k100 k102 k185 
pdf_scarlatti_A4_175x3 = k77
pdf_scarlatti_A4_175x4 = k27 k30 k35 k37 k41 k48 k53 k54 k55 k56 k58 k61 k93 k99 k293 k417 k417-longo k491

pdf_scarlatti = $(pdf_scarlatti_A4x1:%=$(PDF)/$(A4x1)/%-$(A4x1).pdf)  \
  		$(pdf_scarlatti_A4x2:%=$(PDF)/$(A4x2)/%-$(A4x2).pdf)  \
  		$(pdf_scarlatti_A4x3:%=$(PDF)/$(A4x3)/%-$(A4x3).pdf)  \
  		$(pdf_scarlatti_A4x4:%=$(PDF)/$(A4x4)/%-$(A4x4).pdf)  \
  		$(pdf_scarlatti_A3x1:%=$(PDF)/$(A3x1)/%-$(A3x1)l.pdf) \
  		$(pdf_scarlatti_A3x1:%=$(PDF)/$(A3x1)/%-$(A3x1)r.pdf) \
  		$(pdf_scarlatti_A3x2:%=$(PDF)/$(A3x2)/%-$(A3x2).pdf)  \
  		$(pdf_scarlatti_A4_175x1:%=$(PDF)/$(A4_175x1)/%-$(A4_175x1).pdf)  \
  		$(pdf_scarlatti_A4_175x2:%=$(PDF)/$(A4_175x2)/%-$(A4_175x2).pdf)  \
  		$(pdf_scarlatti_A4_175x3:%=$(PDF)/$(A4_175x3)/%-$(A4_175x3).pdf)  \
  		$(pdf_scarlatti_A4_175x4:%=$(PDF)/$(A4_175x4)/%-$(A4_175x4).pdf)  \
  		$(pdf_scarlatti_none:%=$(PDF)/$(NONE)/%.pdf)

# bach
pdf_bach_A3x1 = bwv964-adagio bwv964-andante
pdf_bach_A3x2 = bwv964-adagio bwv964-allegro bwv971-concerto bwv971-andante bwv971-allegro
pdf_bach_A3x4 = bwv964-fuga
pdf_bach_A4x1 = bwv964-andante
pdf_bach_A4x3 = bwv964-allegro bwv971-concerto bwv971-andante bwv971-allegro
pdf_bach_A4x4 = bwv964-fuga
pdf_bach_A4x6 = bwv964-fuga
pdf_bach_none = bwv964-adagio bwv964-allegro bwv964-fuga
pdf_bach_A4_175x2 = bwv964-adagio bwv964-andante
pdf_bach_A4_175x3 = bwv964-allegro
pdf_bach_A4_175x4 = bwv971-concerto bwv971-andante bwv971-allegro
pdf_bach_A4_175x6 = bwv964-fuga

pdf_bach = $(pdf_bach_A3x1:%=$(PDF)/$(A3x1)/%-$(A3x1)l.pdf) \
	   $(pdf_bach_A3x1:%=$(PDF)/$(A3x1)/%-$(A3x1)r.pdf) \
	   $(pdf_bach_A3x2:%=$(PDF)/$(A3x2)/%-$(A3x2).pdf)  \
	   $(pdf_bach_A3x4:%=$(PDF)/$(A3x4)/%-$(A3x4).pdf)  \
	   $(pdf_bach_A4x1:%=$(PDF)/$(A4x1)/%-$(A4x1).pdf)  \
	   $(pdf_bach_A4x3:%=$(PDF)/$(A4x3)/%-$(A4x3).pdf)  \
	   $(pdf_bach_A4x4:%=$(PDF)/$(A4x4)/%-$(A4x4).pdf)  \
	   $(pdf_bach_A4x6:%=$(PDF)/$(A4x6)/%-$(A4x6).pdf)  \
	   $(pdf_bach_A4_175x2:%=$(PDF)/$(A4_175x2)/%-$(A4_175x2).pdf)  \
	   $(pdf_bach_A4_175x3:%=$(PDF)/$(A4_175x3)/%-$(A4_175x3).pdf)  \
	   $(pdf_bach_A4_175x4:%=$(PDF)/$(A4_175x4)/%-$(A4_175x4).pdf)  \
	   $(pdf_bach_A4_175x6:%=$(PDF)/$(A4_175x6)/%-$(A4_175x6).pdf)  \
	   $(pdf_bach_none:%=$(PDF)/$(NONE)/%.pdf)

# purcell
pdf_purcell_A3x1 = act_tune dance_for_the_fairies Rondeau z661-prelude
pdf_purcell_A3x2 = chaconne
pdf_purcell_A4x1 = act_tune dance_for_the_fairies Rondeau z661-prelude z661-allemande z661-courante-sarabande
pdf_purcell_A4x2 = act_tune
pdf_purcell_A4x3 = chaconne
pdf_purcell_none = z661-allemande z661-courante z661-prelude z661-sarabande
pdf_purcell_A4_175x2 = z661-prelude z661-allemande z661-courante-sarabande

pdf_purcell = $(pdf_purcell_A3x1:%=$(PDF)/$(A3x1)/%-$(A3x1)l.pdf) \
  	      $(pdf_purcell_A3x1:%=$(PDF)/$(A3x1)/%-$(A3x1)r.pdf) \
	      $(pdf_purcell_A3x2:%=$(PDF)/$(A3x2)/%-$(A3x2).pdf)  \
	      $(pdf_purcell_A4x1:%=$(PDF)/$(A4x1)/%-$(A4x1).pdf)  \
	      $(pdf_purcell_A4x2:%=$(PDF)/$(A4x2)/%-$(A4x2).pdf)  \
	      $(pdf_purcell_A4x3:%=$(PDF)/$(A4x3)/%-$(A4x3).pdf)  \
	      $(pdf_purcell_A4_175x2:%=$(PDF)/$(A4_175x2)/%-$(A4_175x2).pdf)  \
	      $(pdf_purcell_none:%=$(PDF)/$(NONE)/%.pdf)

# rameau
pdf_rameau_A3x2 = poule
pdf_rameau_A4x2 = poule
pdf_rameau_A4x3 = poule
pdf_rameau_A4x4 = poule
pdf_rameau_none = livri poule gavotte6doubles
pdf_rameau = $(pdf_rameau_A3x2:%=$(PDF)/$(A3x2)/%-$(A3x2).pdf) \
  	     $(pdf_rameau_A4x2:%=$(PDF)/$(A4x2)/%-$(A4x2).pdf) \
  	     $(pdf_rameau_A4x3:%=$(PDF)/$(A4x3)/%-$(A4x3).pdf) \
  	     $(pdf_rameau_A4x4:%=$(PDF)/$(A4x4)/%-$(A4x4).pdf) \
  	     $(pdf_rameau_none:%=$(PDF)/$(NONE)/%.pdf)

# couperin 
pdf_couperin_none = barricades
pdf_couperin = $(pdf_couperin_none:%=$(PDF)/$(NONE)/%.pdf)


# autres
pdf_others_none = Suite_jeremiah_clarke trio_vivaldi gavotte_campion
pdf_others = $(pdf_others_none:%=$(PDF)/$(NONE)/%.pdf)

# total
pdf = $(pdf_scarlatti) $(pdf_bach) $(pdf_rameau) $(pdf_purcell) $(pdf_couperin) $(pdf_others)


#
# chemins vers les sources
#
scarlatti_dirs = k1 k27 k30 k35 k37 k41 k48 k53 k54 k55 k56 k58 k59 k61 k62 k63 k64 k67 k77 k87 k93 k99 k100 k102 k185 k293 k417 k491
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
# target par défaut
#
.PHONY : all clean
all: $(pdf)

clean: ; rm $(pdf)


#
# regles de construction
#
.SECONDEXPANSION:

$(PDF)/$(A4x1) $(PDF)/$(A4x2) $(PDF)/$(A4x3) $(PDF)/$(A4x4) $(PDF)/$(A4x5) $(PDF)/$(A4x6) \
$(PDF)/$(A3x1) $(PDF)/$(A3x2) $(PDF)/$(A3x4) $(PDF)/$(NONE) $(PDF)/$(A4_175x1) $(PDF)/$(A4_175x2) $(PDF)/$(A4_175x3) \
$(PDF)/$(A4_175x4) $(PDF)/$(A4_175x6) png : 
	mkdir -p $@

$(PDF)/$(A4x1)/%.pdf: %.ly | $$(@D) ; $(LILY_CMD) -o $(@D) $<
$(PDF)/$(A4x2)/%.pdf: %.ly | $$(@D) ; $(LILY_CMD) -o $(@D) $<
$(PDF)/$(A4x3)/%.pdf: %.ly | $$(@D) ; $(LILY_CMD) -o $(@D) $<
$(PDF)/$(A4x4)/%.pdf: %.ly | $$(@D) ; $(LILY_CMD) -o $(@D) $<
$(PDF)/$(A4x5)/%.pdf: %.ly | $$(@D) ; $(LILY_CMD) -o $(@D) $<
$(PDF)/$(A4x6)/%.pdf: %.ly | $$(@D) ; $(LILY_CMD) -o $(@D) $<

$(PDF)/$(A3x1)/%.pdf: %.ly | $$(@D) ; $(LILY_CMD) -o $(@D) $<
$(PDF)/$(A3x2)/%.pdf: %.ly | $$(@D) ; $(LILY_CMD) -o $(@D) $<
$(PDF)/$(A3x4)/%.pdf: %.ly | $$(@D) ; $(LILY_CMD) -o $(@D) $<

$(PDF)/$(NONE)/%.pdf: %.ly | $$(@D) ;$(LILY_CMD) -o $(@D) $<

$(PDF)/$(A4_175x1)/%.pdf: %.ly | $$(@D) ; $(LILY_CMD) -o $(@D) $<
$(PDF)/$(A4_175x2)/%.pdf: %.ly | $$(@D) ; $(LILY_CMD) -o $(@D) $<
$(PDF)/$(A4_175x3)/%.pdf: %.ly | $$(@D) ; $(LILY_CMD) -o $(@D) $<
$(PDF)/$(A4_175x4)/%.pdf: %.ly | $$(@D) ; $(LILY_CMD) -o $(@D) $<
$(PDF)/$(A4_175x6)/%.pdf: %.ly | $$(@D) ; $(LILY_CMD) -o $(@D) $<

png/%.png: %.ly | $$(@D)
	$(LILY_CMD) --png -ddelete-intermediate-files=#f -dresolution=300 -o $(@D) $<


#
# Dependances
#

# includes généraux
$(PDF)/*/*.pdf : include/general.ily include/tagline.ily 

# formats
$(PDF)/$(A4x1)/*/pdf  : include/a4-210x297.ily
$(PDF)/$(A4x2)/*/pdf  : include/a4-210x297.ily
$(PDF)/$(A4x3)/*/pdf  : include/a4-210x297.ily
$(PDF)/$(A4x4)/*/pdf  : include/a4-210x297.ily
$(PDF)/$(A4x5)/*/pdf  : include/a4-210x297.ily
$(PDF)/$(A4x6)/*/pdf  : include/a4-210x297.ily

$(PDF)/$(A3x1)/*l.pdf : include/a3-297x297l.ily include/a3-297x297.ily
$(PDF)/$(A3x1)/*r.pdf : include/a3-297x297r.ily include/a3-297x297.ily
$(PDF)/$(A3x2)/*.pdf  : include/a3-297x297.ily
$(PDF)/$(A3x4)/*.pdf  : include/a3-297x297.ily

$(PDF)/$(A4_175x1)/*.pdf  : include/a4-175x297.ily
$(PDF)/$(A4_175x2)/*.pdf  : include/a4-175x297.ily
$(PDF)/$(A4_175x3)/*.pdf  : include/a4-175x297.ily
$(PDF)/$(A4_175x4)/*.pdf  : include/a4-175x297.ily
$(PDF)/$(A4_175x6)/*.pdf  : include/a4-175x297.ily

# rameau
$(PDF)/*/poule*.pdf : poule.ily
$(PDF)/*/livri*.pdf $(PDF)/*/poule*.pdf $(PDF)/*/gavotte6doubles*.pdf : include/rameau-ornements.ily

# purcell
$(PDF)/*/z661*.pdf : include/purcell-ornements.ily

$(PDF)/*/z661-*prelude*.pdf   : z661-prelude.ily
$(PDF)/*/z661-*allemande*.pdf : z661-allemande.ily
$(PDF)/*/z661-*courante*.pdf  : z661-courante.ily
$(PDF)/*/z661-*sarabande*.pdf : z661-sarabande.ily

$(PDF)/*/act_tune*.pdf		 : act_tune.ily
$(PDF)/*/Rondeau*.pdf 		 : Rondeau.ily
$(PDF)/*/dance_for_the_fairies*.pdf : dance_for_the_fairies.ily
$(PDF)/*/chaconne*.pdf 		 : chaconne.ily

# bach
$(PDF)/*/bwv964-andante*.pdf : bwv964-andante.ily
$(PDF)/*/bwv964-allegro*.pdf : bwv964-allegro.ily
$(PDF)/*/bwv964-adagio*.pdf  : bwv964-adagio.ily 
$(PDF)/*/bwv964-fuga*.pdf    : bwv964-fuga.ily   

$(PDF)/*/bwv971-concerto*.pdf : bwv971-concerto.ily
$(PDF)/*/bwv971-andante*.pdf  : bwv971-andante.ily
$(PDF)/*/bwv971-allegro*.pdf  : bwv971-allegro.ily

# scarlatti
$(PDF)/*/k1*.pdf   : k1.ily
$(PDF)/*/k27*.pdf  : k27.ily
$(PDF)/*/k30*.pdf  : k30.ily
$(PDF)/*/k35*.pdf  : k35.ily
$(PDF)/*/k37*.pdf  : k37.ily
$(PDF)/*/k41*.pdf  : k41.ily
$(PDF)/*/k48*.pdf  : k48.ily
$(PDF)/*/k53*.pdf  : k53.ily
$(PDF)/*/k54*.pdf  : k54.ily
$(PDF)/*/k55*.pdf  : k55.ily
$(PDF)/*/k56*.pdf  : k56.ily
$(PDF)/*/k58*.pdf  : k58.ily
$(PDF)/*/k59*.pdf  : k59.ily
$(PDF)/*/k61*.pdf  : k61.ily
$(PDF)/*/k62*.pdf  : k62.ily
$(PDF)/*/k63*.pdf  : k63.ily
$(PDF)/*/k64*.pdf  : k64.ily
$(PDF)/*/k67*.pdf  : k67.ily
$(PDF)/*/k77*.pdf  : k77.ily
$(PDF)/*/k87*.pdf  : k87.ily
$(PDF)/*/k93*.pdf  : k93.ily
$(PDF)/*/k99*.pdf  : k99.ily
$(PDF)/*/k100*.pdf : k100.ily
$(PDF)/*/k102*.pdf : k102.ily
$(PDF)/*/k185*.pdf : k185.ily
$(PDF)/*/k185*.pdf : k185.ily
$(PDF)/*/k293*.pdf : k293.ily
$(PDF)/*/k417*.pdf : k417.ily
$(PDF)/*/k491*.pdf : k491.ily

#
# Assemblages
#

book-a4-175x297:
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=scores-a4-175x297.pdf \
	  -f $(PDF)/$(A4_175x2)/k1-$(A4_175x2).pdf			\
	  -c showpage							\
	  -c showpage							\
	  -f $(PDF)/$(A4_175x4)/k27-$(A4_175x4).pdf			\
	  -f $(PDF)/$(A4_175x4)/k35-$(A4_175x4).pdf			\
	  -f $(PDF)/$(A4_175x4)/k37-$(A4_175x4).pdf			\
	  -f $(PDF)/$(A4_175x4)/k48-$(A4_175x4).pdf			\
	  -f $(PDF)/$(A4_175x4)/k53-$(A4_175x4).pdf			\
	  -f $(PDF)/$(A4_175x4)/k54-$(A4_175x4).pdf			\
	  -f $(PDF)/$(A4_175x4)/k55-$(A4_175x4).pdf			\
	  -f $(PDF)/$(A4_175x4)/k56-$(A4_175x4).pdf			\
	  -f $(PDF)/$(A4_175x2)/k59-$(A4_175x2).pdf			\
	  -c showpage							\
	  -c showpage							\
	  -f $(PDF)/$(A4_175x4)/k61-$(A4_175x4).pdf			\
	  -f $(PDF)/$(A4_175x2)/k62-$(A4_175x2).pdf			\
	  -c showpage							\
	  -c showpage							\
	  -f $(PDF)/$(A4_175x2)/k63-$(A4_175x2).pdf			\
	  -f $(PDF)/$(A4_175x1)/k64-$(A4_175x1).pdf			\
	  -c showpage							\
	  -f $(PDF)/$(A4_175x2)/k67-$(A4_175x2).pdf			\
	  -c showpage							\
	  -c showpage							\
	  -f $(PDF)/$(A4_175x3)/k77-$(A4_175x3).pdf			\
	  -c showpage							\
	  -f $(PDF)/$(A4_175x2)/k87-$(A4_175x2).pdf			\
	  -c showpage							\
	  -c showpage							\
	  -f $(PDF)/$(A4_175x4)/k99-$(A4_175x4).pdf			\
	  -f $(PDF)/$(A4_175x2)/k100-$(A4_175x2).pdf			\
	  -c showpage							\
	  -c showpage							\
	  -f $(PDF)/$(A4_175x2)/k102-$(A4_175x2).pdf			\
	  -f $(PDF)/$(A4_175x2)/k185-$(A4_175x2).pdf			\
	  -f $(PDF)/$(A4_175x4)/k293-$(A4_175x4).pdf			\
	  -f $(PDF)/$(A4_175x4)/k491-$(A4_175x4).pdf			\
	  -c showpage							\
	  -c showpage							\
	  -c showpage							\
	  -c showpage							\
	  -f $(PDF)/$(A4_175x4)/k30-$(A4_175x4).pdf			\
	  -f $(PDF)/$(A4_175x4)/k41-$(A4_175x4).pdf			\
	  -f $(PDF)/$(A4_175x4)/k58-$(A4_175x4).pdf			\
	  -f $(PDF)/$(A4_175x4)/k93-$(A4_175x4).pdf			\
	  -f $(PDF)/$(A4_175x4)/k417-longo-$(A4_175x4).pdf		\
	  -f $(PDF)/$(A4_175x4)/k417-$(A4_175x4).pdf			\
	  -c showpage							\
	  -c showpage							\
	  -c showpage							\
	  -c showpage							\
	  -f $(PDF)/$(A4_175x2)/z661-prelude-$(A4_175x2).pdf		\
	  -f $(PDF)/$(A4_175x2)/z661-allemande-$(A4_175x2).pdf		\
	  -f $(PDF)/$(A4_175x2)/z661-courante-sarabande-$(A4_175x2).pdf	\
	  -c showpage							\
	  -c showpage							\
	  -c showpage							\
	  -c showpage							\
	  -c showpage							\
	  -c showpage							\
	  -f $(PDF)/$(A4_175x4)/bwv971-concerto-$(A4_175x4).pdf		\
	  -f $(PDF)/$(A4_175x4)/bwv971-andante-$(A4_175x4).pdf		\
	  -f $(PDF)/$(A4_175x4)/bwv971-allegro-$(A4_175x4).pdf		\
	  -c showpage							\
	  -c showpage							\
	  -c showpage							\
	  -c showpage							\
	  -f $(PDF)/$(A4_175x2)/bwv964-adagio-$(A4_175x2).pdf		\
	  -c showpage							\
	  -c showpage							\
	  -f $(PDF)/$(A4_175x6)/bwv964-fuga-$(A4_175x6).pdf		\
	  -c showpage							\
	  -c showpage							\
	  -f $(PDF)/$(A4_175x2)/bwv964-andante-$(A4_175x2).pdf		\
	  -c showpage							\
	  -c showpage							\
	  -f $(PDF)/$(A4_175x3)/bwv964-allegro-$(A4_175x3).pdf		\
	  -c showpage																				\
	  ""

