
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
pdf_scarlatti_A4_175x1 = k64 k95
pdf_scarlatti_A4_175x2 = k1 k35 k59 k62 k63 k67 k87 k100 k102 k185 k322 k333 k341 k343 k347 k348 k451 k452
pdf_scarlatti_A4_175x3 = k77 k308 k358 k373
pdf_scarlatti_A4_175x4 = k27 k30 k35 k37 k41 k48 k53 k54 k55 k56 k58 k61 k82 k93 k99 k293 k314 k351 k417 k417-longo k491

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
pdf_bach_A4_175x1 = invention10
pdf_bach_A4_175x2 = bwv964-adagio bwv964-andante invention01 invention02 invention03 invention04 invention05 invention06 invention07 invention08 invention09 invention11 invention12 invention13 invention14 invention15 Sinfonia01 Sinfonia02 Sinfonia03 Sinfonia04 Sinfonia05 Sinfonia06 Sinfonia07 Sinfonia08 Sinfonia09 Sinfonia10 Sinfonia11 Sinfonia12 Sinfonia13 Sinfonia14 Sinfonia15
pdf_bach_A4_175x3 = bwv964-allegro bwv805-duetto4
pdf_bach_A4_175x4 = bwv971-concerto bwv971-andante bwv971-allegro bwv802-duetto1 bwv803-duetto2 bwv804-duetto3
pdf_bach_A4_175x6 = bwv964-fuga

pdf_bach = $(pdf_bach_A3x1:%=$(PDF)/$(A3x1)/%-$(A3x1)l.pdf) \
	   $(pdf_bach_A3x1:%=$(PDF)/$(A3x1)/%-$(A3x1)r.pdf) \
	   $(pdf_bach_A3x2:%=$(PDF)/$(A3x2)/%-$(A3x2).pdf)  \
	   $(pdf_bach_A3x4:%=$(PDF)/$(A3x4)/%-$(A3x4).pdf)  \
	   $(pdf_bach_A4x1:%=$(PDF)/$(A4x1)/%-$(A4x1).pdf)  \
	   $(pdf_bach_A4x3:%=$(PDF)/$(A4x3)/%-$(A4x3).pdf)  \
	   $(pdf_bach_A4x4:%=$(PDF)/$(A4x4)/%-$(A4x4).pdf)  \
	   $(pdf_bach_A4x6:%=$(PDF)/$(A4x6)/%-$(A4x6).pdf)  \
	   $(pdf_bach_A4_175x1:%=$(PDF)/$(A4_175x1)/%-$(A4_175x1).pdf)  \
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

# mozart
pdf_mozart_A4_175x3 = k545-3
pdf_mozart_A4_175x4 = k545-1 k545-2
pdf_mozart = $(pdf_mozart_A4x3:%=$(PDF)/$(A4x3)/%-$(A4x3).pdf)  \
	     $(pdf_mozart_A4x4:%=$(PDF)/$(A4x4)/%-$(A4x4).pdf)


# autres
pdf_others_none = Suite_jeremiah_clarke trio_vivaldi gavotte_campion
pdf_others = $(pdf_others_none:%=$(PDF)/$(NONE)/%.pdf)

# total
pdf = $(pdf_scarlatti) $(pdf_bach) $(pdf_rameau) $(pdf_purcell) $(pdf_couperin) $(pdf_mozart) $(pdf_others)


#
# chemins vers les sources
#
scarlatti_dirs = k1 k27 k30 k35 k37 k41 k48 k53 k54 k55 k56 k58 k59 k61 k62 k63 k64 k67 k77 k82 k87 k93 k95 k99 k100 k102 k185 k293 k308 k314 k322 k333 k341 k343 k347 k348 k351 k358 k373 k417 k451 k452 k491
bach_dirs = bwv964 bwv971-concerto_italien bwv802-duetto1 bwv803-duetto2 bwv804-duetto3 bwv805-duetto4 inventions sinfonias
purcell_dirs = fairy_queen z661
rameau_dirs = livri poule gavotte6doubles
couperin_dirs = barricades
mozart_dirs = k545

VPATH = $(scarlatti_dirs:%=$(CURDIR)/scarlatti/%) \
	$(bach_dirs:%=$(CURDIR)/bach/%)		  \
	$(rameau_dirs:%=$(CURDIR)/rameau/%)	  \
	$(couperin_dirs:%=$(CURDIR)/couperin/%)	  \
	$(purcell_dirs:%=$(CURDIR)/purcell/%)	  \
	$(mozart_dirs:%=$(CURDIR)/mozart/%)	  \
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

$(PDF)/*/bwv802-duetto1*.pdf  : bwv802-duetto1.ily
$(PDF)/*/bwv803-duetto2*.pdf  : bwv803-duetto2.ily
$(PDF)/*/bwv804-duetto3*.pdf  : bwv804-duetto3.ily
$(PDF)/*/bwv805-duetto4*.pdf  : bwv805-duetto4.ily

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
$(PDF)/*/k82*.pdf  : k82.ily
$(PDF)/*/k87*.pdf  : k87.ily
$(PDF)/*/k93*.pdf  : k93.ily
$(PDF)/*/k95*.pdf  : k95.ily
$(PDF)/*/k99*.pdf  : k99.ily
$(PDF)/*/k100*.pdf : k100.ily
$(PDF)/*/k102*.pdf : k102.ily
$(PDF)/*/k185*.pdf : k185.ily
$(PDF)/*/k185*.pdf : k185.ily
$(PDF)/*/k293*.pdf : k293.ily
$(PDF)/*/k308*.pdf : k308.ily
$(PDF)/*/k314*.pdf : k314.ily
$(PDF)/*/k322*.pdf : k322.ily
$(PDF)/*/k333*.pdf : k333.ily
$(PDF)/*/k341*.pdf : k341.ily
$(PDF)/*/k343*.pdf : k343.ily
$(PDF)/*/k347*.pdf : k347.ily
$(PDF)/*/k348*.pdf : k348.ily
$(PDF)/*/k351*.pdf : k351.ily
$(PDF)/*/k358*.pdf : k358.ily
$(PDF)/*/k373*.pdf : k373.ily
$(PDF)/*/k417*.pdf : k417.ily
$(PDF)/*/k451*.pdf : k451.ily
$(PDF)/*/k452*.pdf : k452.ily
$(PDF)/*/k491*.pdf : k491.ily

#
# Assemblages
#

books: books-a4-175x297

books-a4-175x297: book1-a4-175x297-recto.pdf book1-a4-175x297-verso.pdf book2-a4-175x297-recto.pdf book2-a4-175x297-verso.pdf

book-a4-175x297.pdf:
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$@       	\
	  -f pdf/2.19.20/$(A4_175x2)/k1-$(A4_175x2).pdf				\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x4)/k27-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x4)/k35-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x4)/k37-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x4)/k48-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x4)/k53-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x4)/k54-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x4)/k55-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x4)/k56-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x2)/k59-$(A4_175x2).pdf			\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x4)/k61-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x2)/k62-$(A4_175x2).pdf			\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x2)/k63-$(A4_175x2).pdf			\
	  -f pdf/2.19.20/$(A4_175x1)/k64-$(A4_175x1).pdf			\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x2)/k67-$(A4_175x2).pdf			\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x3)/k77-$(A4_175x3).pdf			\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x4)/k82-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x2)/k87-$(A4_175x2).pdf			\
	  -f pdf/2.19.20/$(A4_175x1)/k95-$(A4_175x1).pdf			\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x4)/k99-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x2)/k100-$(A4_175x2).pdf			\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x2)/k102-$(A4_175x2).pdf			\
	  -f pdf/2.19.20/$(A4_175x2)/k185-$(A4_175x2).pdf			\
	  -f pdf/2.19.20/$(A4_175x4)/k293-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x3)/k308-$(A4_175x3).pdf			\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x4)/k314-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x3)/k373-$(A4_175x3).pdf			\
	  -c showpage								\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x2)/k322-$(A4_175x2).pdf			\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x2)/k333-$(A4_175x2).pdf			\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x2)/k341-$(A4_175x2).pdf			\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x2)/k343-$(A4_175x2).pdf			\
	  -f pdf/2.19.20/$(A4_175x2)/k347-$(A4_175x2).pdf			\
	  -f pdf/2.19.20/$(A4_175x2)/k348-$(A4_175x2).pdf			\
	  -f pdf/2.19.20/$(A4_175x4)/k351-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x3)/k358-$(A4_175x3).pdf			\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x4)/k491-$(A4_175x4).pdf			\
	  -c showpage								\
	  -c showpage								\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x4)/k30-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x4)/k41-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x4)/k58-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x4)/k93-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x4)/k417-longo-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x4)/k417-$(A4_175x4).pdf			\
	  -c showpage								\
	  -c showpage								\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x2)/z661-prelude-$(A4_175x2).pdf		\
	  -f pdf/2.19.20/$(A4_175x2)/z661-allemande-$(A4_175x2).pdf		\
	  -f pdf/2.19.20/$(A4_175x2)/z661-courante-sarabande-$(A4_175x2).pdf	\
	  -c showpage								\
	  -c showpage								\
	  -c showpage								\
	  -c showpage								\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x4)/bwv971-concerto-$(A4_175x4).pdf		\
	  -f pdf/2.19.20/$(A4_175x4)/bwv971-andante-$(A4_175x4).pdf		\
	  -f pdf/2.19.20/$(A4_175x4)/bwv971-allegro-$(A4_175x4).pdf		\
	  -c showpage								\
	  -c showpage								\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x4)/bwv802-duetto1-$(A4_175x4).pdf		\
	  -f pdf/2.19.20/$(A4_175x4)/bwv803-duetto2-$(A4_175x4).pdf		\
	  -f pdf/2.19.20/$(A4_175x4)/bwv804-duetto3-$(A4_175x4).pdf		\
	  -f pdf/2.19.20/$(A4_175x3)/bwv805-duetto4-$(A4_175x3).pdf		\
	  -c showpage								\
	  -c showpage								\
	  -c showpage								\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x2)/bwv964-adagio-$(A4_175x2).pdf		\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x6)/bwv964-fuga-$(A4_175x6).pdf		\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x2)/bwv964-andante-$(A4_175x2).pdf		\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x3)/bwv964-allegro-$(A4_175x3).pdf		\
	  -c showpage								\


book1-full-a4-175x297.pdf: book-a4-175x297.pdf
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$@ \
	 -dFirstPage=1   -dLastPage=2   -f $< \
	 -dFirstPage=5   -dLastPage=6   -f $< \
	 -dFirstPage=9   -dLastPage=10  -f $< \
	 -dFirstPage=13  -dLastPage=14  -f $< \
	 -dFirstPage=17  -dLastPage=18  -f $< \
	 -dFirstPage=21  -dLastPage=22  -f $< \
	 -dFirstPage=25  -dLastPage=26  -f $< \
	 -dFirstPage=29  -dLastPage=30  -f $< \
	 -dFirstPage=33  -dLastPage=34  -f $< \
	 -dFirstPage=37  -dLastPage=38  -f $< \
	 -dFirstPage=41  -dLastPage=42  -f $< \
	 -dFirstPage=45  -dLastPage=46  -f $< \
	 -dFirstPage=49  -dLastPage=50  -f $< \
	 -dFirstPage=53  -dLastPage=54  -f $< \
	 -dFirstPage=57  -dLastPage=58  -f $< \
	 -dFirstPage=61  -dLastPage=62  -f $< \
	 -dFirstPage=65  -dLastPage=66  -f $< \
	 -dFirstPage=69  -dLastPage=70  -f $< \
	 -dFirstPage=73  -dLastPage=74  -f $< \
	 -dFirstPage=77  -dLastPage=78  -f $< \
	 -dFirstPage=81  -dLastPage=82  -f $< \
	 -dFirstPage=85  -dLastPage=86  -f $< \
	 -dFirstPage=89  -dLastPage=90  -f $< \
	 -dFirstPage=93  -dLastPage=94  -f $< \
	 -dFirstPage=97  -dLastPage=98  -f $< \
	 -dFirstPage=101 -dLastPage=102 -f $< \
	 -dFirstPage=105 -dLastPage=106 -f $< \
	 -dFirstPage=109 -dLastPage=110 -f $< \
	 -dFirstPage=113 -dLastPage=114 -f $< \
	 -dFirstPage=117 -dLastPage=118 -f $< \
	 -dFirstPage=121 -dLastPage=122 -f $< \
	 -dFirstPage=125 -dLastPage=126 -f $< \
	 -dFirstPage=129 -dLastPage=130 -f $< \
	 -dFirstPage=133 -dLastPage=134 -f $< \
	 -dFirstPage=137 -dLastPage=138 -f $< \
	 -dFirstPage=141 -dLastPage=142 -f $< \
	 -dFirstPage=145 -dLastPage=146 -f $< \
	 -dFirstPage=149 -dLastPage=150 -f $< \
	 -dFirstPage=153 -dLastPage=154 -f $< \
	 -dFirstPage=157 -dLastPage=158 -f $< \
	 -dFirstPage=161 -dLastPage=162 -f $< \
	 -dFirstPage=165 -dLastPage=166 -f $< \
	 -dFirstPage=169 -dLastPage=170 -f $< \
	 -dFirstPage=173 -dLastPage=174 -f $< \
	 -dFirstPage=177 -dLastPage=178 -f $< \
	 -dFirstPage=181 -dLastPage=182 -f $< \
	 -dFirstPage=185 -dLastPage=186 -f $< \
	 -dFirstPage=189 -dLastPage=190 -f $< \
	 -dFirstPage=193 -dLastPage=194 -f $< \
	 -dFirstPage=197 -dLastPage=198 -f $< \
	 -dFirstPage=201 -dLastPage=202 -f $< \
	 -dFirstPage=205 -dLastPage=206 -f $< \
	 -dFirstPage=209 -dLastPage=210 -f $< \
	 -dFirstPage=213 -dLastPage=214 -f $< \
	 -dFirstPage=217 -dLastPage=218 -f $< \
	 -dFirstPage=221 -dLastPage=222 -f $< \
	 -dFirstPage=225 -dLastPage=226 -f $< \


book2-full-a4-175x297.pdf: book-a4-175x297.pdf
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$@ \
	  -dFirstPage=3   -dLastPage=4   -f $< \
	  -dFirstPage=7   -dLastPage=8   -f $< \
	  -dFirstPage=11  -dLastPage=12  -f $< \
	  -dFirstPage=15  -dLastPage=16  -f $< \
	  -dFirstPage=19  -dLastPage=20  -f $< \
	  -dFirstPage=23  -dLastPage=24  -f $< \
	  -dFirstPage=27  -dLastPage=28  -f $< \
	  -dFirstPage=31  -dLastPage=32  -f $< \
	  -dFirstPage=35  -dLastPage=36  -f $< \
	  -dFirstPage=39  -dLastPage=40  -f $< \
	  -dFirstPage=43  -dLastPage=44  -f $< \
	  -dFirstPage=47  -dLastPage=48  -f $< \
	  -dFirstPage=51  -dLastPage=52  -f $< \
	  -dFirstPage=55  -dLastPage=56  -f $< \
	  -dFirstPage=59  -dLastPage=60  -f $< \
	  -dFirstPage=63  -dLastPage=64  -f $< \
	  -dFirstPage=67  -dLastPage=68  -f $< \
	  -dFirstPage=71  -dLastPage=72  -f $< \
	  -dFirstPage=75  -dLastPage=76  -f $< \
	  -dFirstPage=79  -dLastPage=80  -f $< \
	  -dFirstPage=83  -dLastPage=84  -f $< \
	  -dFirstPage=87  -dLastPage=88  -f $< \
	  -dFirstPage=91  -dLastPage=92  -f $< \
	  -dFirstPage=95  -dLastPage=96  -f $< \
	  -dFirstPage=99  -dLastPage=100 -f $< \
	  -dFirstPage=103 -dLastPage=104 -f $< \
	  -dFirstPage=107 -dLastPage=108 -f $< \
	  -dFirstPage=111 -dLastPage=112 -f $< \
	  -dFirstPage=115 -dLastPage=116 -f $< \
	  -dFirstPage=119 -dLastPage=120 -f $< \
	  -dFirstPage=123 -dLastPage=124 -f $< \
	  -dFirstPage=127 -dLastPage=128 -f $< \
	  -dFirstPage=131 -dLastPage=132 -f $< \
	  -dFirstPage=135 -dLastPage=136 -f $< \
	  -dFirstPage=139 -dLastPage=140 -f $< \
	  -dFirstPage=143 -dLastPage=144 -f $< \
	  -dFirstPage=147 -dLastPage=148 -f $< \
	  -dFirstPage=151 -dLastPage=152 -f $< \
	  -dFirstPage=155 -dLastPage=156 -f $< \
	  -dFirstPage=159 -dLastPage=160 -f $< \
          -dFirstPage=163 -dLastPage=164 -f $< \
          -dFirstPage=167 -dLastPage=168 -f $< \
          -dFirstPage=171 -dLastPage=172 -f $< \
          -dFirstPage=175 -dLastPage=176 -f $< \
          -dFirstPage=179 -dLastPage=180 -f $< \
          -dFirstPage=183 -dLastPage=184 -f $< \
          -dFirstPage=187 -dLastPage=188 -f $< \
          -dFirstPage=191 -dLastPage=192 -f $< \
          -dFirstPage=195 -dLastPage=196 -f $< \
          -dFirstPage=199 -dLastPage=200 -f $< \
          -dFirstPage=203 -dLastPage=204 -f $< \
          -dFirstPage=207 -dLastPage=208 -f $< \
          -dFirstPage=211 -dLastPage=212 -f $< \
          -dFirstPage=215 -dLastPage=216 -f $< \
          -dFirstPage=219 -dLastPage=220 -f $< \
          -dFirstPage=223 -dLastPage=224 -f $< \
          -dFirstPage=227 -dLastPage=228 -f $< \


book1-a4-175x297.pdf: book1-full-a4-175x297.pdf
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$@ \
	 -c showpage \
	 -dFirstPage=1   -dLastPage=48  -f $< \
	 -dFirstPage=57  -dLastPage=114 -f $< \


book2-a4-175x297.pdf: book2-full-a4-175x297.pdf
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$@ \
	 -c showpage \
	 -dFirstPage=3   -dLastPage=18  -f $< \
	 -dFirstPage=21  -dLastPage=22  -f $< \
	 -dFirstPage=25  -dLastPage=26  -f $< \
	 -dFirstPage=29  -dLastPage=36  -f $< \
	 -dFirstPage=39  -dLastPage=82  -f $< \
	 -dFirstPage=85  -dLastPage=102 -f $< \
	 -dFirstPage=107 -dLastPage=108 -f $< \
	 -dFirstPage=113 -dLastPage=113 -f $< \


book1-a4-175x297-recto.pdf: book1-a4-175x297.pdf
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$@ \
	  -dFirstPage=1   -dLastPage=1   -f $< \
	  -dFirstPage=3   -dLastPage=3   -f $< \
	  -dFirstPage=5   -dLastPage=5   -f $< \
	  -dFirstPage=7   -dLastPage=7   -f $< \
	  -dFirstPage=9   -dLastPage=9   -f $< \
	  -dFirstPage=11  -dLastPage=11  -f $< \
	  -dFirstPage=13  -dLastPage=13  -f $< \
	  -dFirstPage=15  -dLastPage=15  -f $< \
	  -dFirstPage=17  -dLastPage=17  -f $< \
	  -dFirstPage=19  -dLastPage=19  -f $< \
	  -dFirstPage=21  -dLastPage=21  -f $< \
	  -dFirstPage=23  -dLastPage=23  -f $< \
	  -dFirstPage=25  -dLastPage=25  -f $< \
	  -dFirstPage=27  -dLastPage=27  -f $< \
	  -dFirstPage=29  -dLastPage=29  -f $< \
	  -dFirstPage=31  -dLastPage=31  -f $< \
	  -dFirstPage=33  -dLastPage=33  -f $< \
	  -dFirstPage=35  -dLastPage=35  -f $< \
	  -dFirstPage=37  -dLastPage=37  -f $< \
	  -dFirstPage=39  -dLastPage=39  -f $< \
	  -dFirstPage=41  -dLastPage=41  -f $< \
	  -dFirstPage=43  -dLastPage=43  -f $< \
	  -dFirstPage=45  -dLastPage=45  -f $< \
	  -dFirstPage=47  -dLastPage=47  -f $< \
	  -dFirstPage=49  -dLastPage=49  -f $< \
	  -dFirstPage=51  -dLastPage=51  -f $< \
	  -dFirstPage=53  -dLastPage=53  -f $< \
	  -dFirstPage=55  -dLastPage=55  -f $< \
	  -dFirstPage=57  -dLastPage=57  -f $< \
	  -dFirstPage=59  -dLastPage=59  -f $< \
	  -dFirstPage=61  -dLastPage=61  -f $< \
	  -dFirstPage=63  -dLastPage=63  -f $< \
	  -dFirstPage=65  -dLastPage=65  -f $< \
	  -dFirstPage=67  -dLastPage=67  -f $< \
	  -dFirstPage=69  -dLastPage=69  -f $< \
	  -dFirstPage=71  -dLastPage=71  -f $< \
	  -dFirstPage=73  -dLastPage=73  -f $< \
	  -dFirstPage=75  -dLastPage=75  -f $< \
	  -dFirstPage=77  -dLastPage=77  -f $< \
	  -dFirstPage=79  -dLastPage=79  -f $< \
	  -dFirstPage=81  -dLastPage=81  -f $< \
	  -dFirstPage=83  -dLastPage=83  -f $< \
	  -dFirstPage=85  -dLastPage=85  -f $< \
	  -dFirstPage=87  -dLastPage=87  -f $< \
	  -dFirstPage=89  -dLastPage=89  -f $< \
	  -dFirstPage=91  -dLastPage=91  -f $< \
	  -dFirstPage=93  -dLastPage=93  -f $< \
	  -dFirstPage=95  -dLastPage=95  -f $< \
	  -dFirstPage=97  -dLastPage=97  -f $< \
	  -dFirstPage=99  -dLastPage=99  -f $< \
	  -dFirstPage=101 -dLastPage=101 -f $< \
	  -dFirstPage=103 -dLastPage=103 -f $< \
	  -dFirstPage=105 -dLastPage=105 -f $< \
	  -dFirstPage=107 -dLastPage=107 -f $< \


book1-a4-175x297-verso.pdf: book1-a4-175x297.pdf
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$@ \
	  -dFirstPage=2   -dLastPage=2   -f $< \
	  -dFirstPage=4   -dLastPage=4   -f $< \
	  -dFirstPage=6   -dLastPage=6   -f $< \
	  -dFirstPage=8   -dLastPage=8   -f $< \
	  -dFirstPage=10  -dLastPage=10  -f $< \
	  -dFirstPage=12  -dLastPage=12  -f $< \
	  -dFirstPage=14  -dLastPage=14  -f $< \
	  -dFirstPage=16  -dLastPage=16  -f $< \
	  -dFirstPage=18  -dLastPage=18  -f $< \
	  -dFirstPage=20  -dLastPage=20  -f $< \
	  -dFirstPage=22  -dLastPage=22  -f $< \
	  -dFirstPage=24  -dLastPage=24  -f $< \
	  -dFirstPage=26  -dLastPage=26  -f $< \
	  -dFirstPage=28  -dLastPage=28  -f $< \
	  -dFirstPage=30  -dLastPage=30  -f $< \
	  -dFirstPage=32  -dLastPage=32  -f $< \
	  -dFirstPage=34  -dLastPage=34  -f $< \
	  -dFirstPage=36  -dLastPage=36  -f $< \
	  -dFirstPage=38  -dLastPage=38  -f $< \
	  -dFirstPage=40  -dLastPage=40  -f $< \
	  -dFirstPage=42  -dLastPage=42  -f $< \
	  -dFirstPage=44  -dLastPage=44  -f $< \
	  -dFirstPage=46  -dLastPage=46  -f $< \
	  -dFirstPage=48  -dLastPage=48  -f $< \
	  -dFirstPage=50  -dLastPage=50  -f $< \
	  -dFirstPage=52  -dLastPage=52  -f $< \
	  -dFirstPage=54  -dLastPage=54  -f $< \
	  -dFirstPage=56  -dLastPage=56  -f $< \
	  -dFirstPage=58  -dLastPage=58  -f $< \
	  -dFirstPage=60  -dLastPage=60  -f $< \
	  -dFirstPage=62  -dLastPage=62  -f $< \
	  -dFirstPage=64  -dLastPage=64  -f $< \
	  -dFirstPage=66  -dLastPage=66  -f $< \
	  -dFirstPage=68  -dLastPage=68  -f $< \
	  -dFirstPage=70  -dLastPage=70  -f $< \
	  -dFirstPage=72  -dLastPage=72  -f $< \
	  -dFirstPage=74  -dLastPage=74  -f $< \
	  -dFirstPage=76  -dLastPage=76  -f $< \
	  -dFirstPage=78  -dLastPage=78  -f $< \
	  -dFirstPage=80  -dLastPage=80  -f $< \
	  -dFirstPage=82  -dLastPage=82  -f $< \
	  -dFirstPage=84  -dLastPage=84  -f $< \
	  -dFirstPage=86  -dLastPage=86  -f $< \
	  -dFirstPage=88  -dLastPage=88  -f $< \
	  -dFirstPage=90  -dLastPage=90  -f $< \
	  -dFirstPage=92  -dLastPage=92  -f $< \
	  -dFirstPage=94  -dLastPage=94  -f $< \
	  -dFirstPage=96  -dLastPage=96  -f $< \
	  -dFirstPage=98  -dLastPage=98  -f $< \
	  -dFirstPage=100 -dLastPage=100 -f $< \
	  -dFirstPage=102 -dLastPage=102 -f $< \
	  -dFirstPage=104 -dLastPage=104 -f $< \
	  -dFirstPage=106 -dLastPage=106 -f $< \


book2-a4-175x297-recto.pdf: book2-a4-175x297.pdf
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$@ \
	  -dFirstPage=1   -dLastPage=1   -f $< \
	  -dFirstPage=3   -dLastPage=3   -f $< \
	  -dFirstPage=5   -dLastPage=5   -f $< \
	  -dFirstPage=7   -dLastPage=7   -f $< \
	  -dFirstPage=9   -dLastPage=9   -f $< \
	  -dFirstPage=11  -dLastPage=11  -f $< \
	  -dFirstPage=13  -dLastPage=13  -f $< \
	  -dFirstPage=15  -dLastPage=15  -f $< \
	  -dFirstPage=17  -dLastPage=17  -f $< \
	  -dFirstPage=19  -dLastPage=19  -f $< \
	  -dFirstPage=21  -dLastPage=21  -f $< \
	  -dFirstPage=23  -dLastPage=23  -f $< \
	  -dFirstPage=25  -dLastPage=25  -f $< \
	  -dFirstPage=27  -dLastPage=27  -f $< \
	  -dFirstPage=29  -dLastPage=29  -f $< \
	  -dFirstPage=31  -dLastPage=31  -f $< \
	  -dFirstPage=33  -dLastPage=33  -f $< \
	  -dFirstPage=35  -dLastPage=35  -f $< \
	  -dFirstPage=37  -dLastPage=37  -f $< \
	  -dFirstPage=39  -dLastPage=39  -f $< \
	  -dFirstPage=41  -dLastPage=41  -f $< \
	  -dFirstPage=43  -dLastPage=43  -f $< \
	  -dFirstPage=45  -dLastPage=45  -f $< \
	  -dFirstPage=47  -dLastPage=47  -f $< \
	  -dFirstPage=49  -dLastPage=49  -f $< \
	  -dFirstPage=51  -dLastPage=51  -f $< \
	  -dFirstPage=53  -dLastPage=53  -f $< \
	  -dFirstPage=55  -dLastPage=55  -f $< \
	  -dFirstPage=57  -dLastPage=57  -f $< \
	  -dFirstPage=59  -dLastPage=59  -f $< \
	  -dFirstPage=61  -dLastPage=61  -f $< \
	  -dFirstPage=63  -dLastPage=63  -f $< \
	  -dFirstPage=65  -dLastPage=65  -f $< \
	  -dFirstPage=67  -dLastPage=67  -f $< \
	  -dFirstPage=69  -dLastPage=69  -f $< \
	  -dFirstPage=71  -dLastPage=71  -f $< \
	  -dFirstPage=73  -dLastPage=73  -f $< \
	  -dFirstPage=75  -dLastPage=75  -f $< \
	  -dFirstPage=77  -dLastPage=77  -f $< \
	  -dFirstPage=79  -dLastPage=79  -f $< \
	  -dFirstPage=81  -dLastPage=81  -f $< \
	  -dFirstPage=83  -dLastPage=83  -f $< \
	  -dFirstPage=85  -dLastPage=85  -f $< \
	  -dFirstPage=87  -dLastPage=87  -f $< \
	  -dFirstPage=89  -dLastPage=89  -f $< \
	  -dFirstPage=91  -dLastPage=91  -f $< \
	  -dFirstPage=93  -dLastPage=93  -f $< \


book2-a4-175x297-verso.pdf: book2-a4-175x297.pdf
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$@ \
	  -dFirstPage=2   -dLastPage=2   -f $< \
	  -dFirstPage=4   -dLastPage=4   -f $< \
	  -dFirstPage=6   -dLastPage=6   -f $< \
	  -dFirstPage=8   -dLastPage=8   -f $< \
	  -dFirstPage=10  -dLastPage=10  -f $< \
	  -dFirstPage=12  -dLastPage=12  -f $< \
	  -dFirstPage=14  -dLastPage=14  -f $< \
	  -dFirstPage=16  -dLastPage=16  -f $< \
	  -dFirstPage=18  -dLastPage=18  -f $< \
	  -dFirstPage=20  -dLastPage=20  -f $< \
	  -dFirstPage=22  -dLastPage=22  -f $< \
	  -dFirstPage=24  -dLastPage=24  -f $< \
	  -dFirstPage=26  -dLastPage=26  -f $< \
	  -dFirstPage=28  -dLastPage=28  -f $< \
	  -dFirstPage=30  -dLastPage=30  -f $< \
	  -dFirstPage=32  -dLastPage=32  -f $< \
	  -dFirstPage=34  -dLastPage=34  -f $< \
	  -dFirstPage=36  -dLastPage=36  -f $< \
	  -dFirstPage=38  -dLastPage=38  -f $< \
	  -dFirstPage=40  -dLastPage=40  -f $< \
	  -dFirstPage=42  -dLastPage=42  -f $< \
	  -dFirstPage=44  -dLastPage=44  -f $< \
	  -dFirstPage=46  -dLastPage=46  -f $< \
	  -dFirstPage=48  -dLastPage=48  -f $< \
	  -dFirstPage=50  -dLastPage=50  -f $< \
	  -dFirstPage=52  -dLastPage=52  -f $< \
	  -dFirstPage=54  -dLastPage=54  -f $< \
	  -dFirstPage=56  -dLastPage=56  -f $< \
	  -dFirstPage=58  -dLastPage=58  -f $< \
	  -dFirstPage=60  -dLastPage=60  -f $< \
	  -dFirstPage=62  -dLastPage=62  -f $< \
	  -dFirstPage=64  -dLastPage=64  -f $< \
	  -dFirstPage=66  -dLastPage=66  -f $< \
	  -dFirstPage=68  -dLastPage=68  -f $< \
	  -dFirstPage=70  -dLastPage=70  -f $< \
	  -dFirstPage=72  -dLastPage=72  -f $< \
	  -dFirstPage=74  -dLastPage=74  -f $< \
	  -dFirstPage=76  -dLastPage=76  -f $< \
	  -dFirstPage=78  -dLastPage=78  -f $< \
	  -dFirstPage=80  -dLastPage=80  -f $< \
	  -dFirstPage=82  -dLastPage=82  -f $< \
	  -dFirstPage=84  -dLastPage=84  -f $< \
	  -dFirstPage=86  -dLastPage=86  -f $< \
	  -dFirstPage=88  -dLastPage=88  -f $< \
	  -dFirstPage=90  -dLastPage=90  -f $< \
	  -dFirstPage=92  -dLastPage=92  -f $< \
	  -dFirstPage=94  -dLastPage=94  -f $< \

