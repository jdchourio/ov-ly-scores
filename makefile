
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
pdf_scarlatti_A4_175x2 = k1 k35 k59 k62 k63 k67 k87 k100 k102 k185 k333
pdf_scarlatti_A4_175x3 = k77 k308 k373
pdf_scarlatti_A4_175x4 = k27 k30 k35 k37 k41 k48 k53 k54 k55 k56 k58 k61 k82 k93 k99 k293 k314 k417 k417-longo k491

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
scarlatti_dirs = k1 k27 k30 k35 k37 k41 k48 k53 k54 k55 k56 k58 k59 k61 k62 k63 k64 k67 k77 k82 k87 k93 k95 k99 k100 k102 k185 k293 k308 k314 k333 k373 k417 k491
bach_dirs = bwv964 bwv971-concerto_italien bwv802-duetto1 bwv803-duetto2 bwv804-duetto3 bwv805-duetto4
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
$(PDF)/*/k333*.pdf : k333.ily
$(PDF)/*/k373*.pdf : k373.ily
$(PDF)/*/k417*.pdf : k417.ily
$(PDF)/*/k491*.pdf : k491.ily

#
# Assemblages
#

books: books-a4-175x297

books-a4-175x297: book-a4-175x297 book-a4-175x297-recto1 book-a4-175x297-verso1 book-a4-175x297-recto2 book-a4-175x297-verso2

book-a4-175x297:
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$@.pdf   	\
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
	  -f pdf/2.19.20/$(A4_175x2)/k87-$(A4_175x2).pdf			\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x4)/k99-$(A4_175x4).pdf			\
	  -f pdf/2.19.20/$(A4_175x2)/k100-$(A4_175x2).pdf			\
	  -c showpage								\
	  -c showpage								\
	  -f pdf/2.19.20/$(A4_175x2)/k102-$(A4_175x2).pdf			\
	  -f pdf/2.19.20/$(A4_175x2)/k185-$(A4_175x2).pdf			\
	  -f pdf/2.19.20/$(A4_175x4)/k293-$(A4_175x4).pdf			\
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


book-a4-175x297-recto1: book-a4-175x297
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$@.pdf   \
	  -c showpage								\
	  -dFirstPage=2   -dLastPage=2   -f $<.pdf 				\
	  -dFirstPage=6   -dLastPage=6   -f $<.pdf 				\
	  -dFirstPage=10  -dLastPage=10  -f $<.pdf 				\
	  -dFirstPage=14  -dLastPage=14  -f $<.pdf 				\
	  -dFirstPage=18  -dLastPage=18  -f $<.pdf 				\
	  -dFirstPage=22  -dLastPage=22  -f $<.pdf 				\
	  -dFirstPage=26  -dLastPage=26  -f $<.pdf 				\
	  -dFirstPage=30  -dLastPage=30  -f $<.pdf 				\
	  -dFirstPage=34  -dLastPage=34  -f $<.pdf 				\
	  -dFirstPage=38  -dLastPage=38  -f $<.pdf 				\
	  -dFirstPage=42  -dLastPage=42  -f $<.pdf 				\
	  -dFirstPage=46  -dLastPage=46  -f $<.pdf 				\
	  -dFirstPage=50  -dLastPage=50  -f $<.pdf 				\
	  -dFirstPage=54  -dLastPage=54  -f $<.pdf 				\
	  -dFirstPage=58  -dLastPage=58  -f $<.pdf 				\
	  -dFirstPage=62  -dLastPage=62  -f $<.pdf 				\
	  -dFirstPage=66  -dLastPage=66  -f $<.pdf 				\
	  -dFirstPage=70  -dLastPage=70  -f $<.pdf 				\
	  -dFirstPage=74  -dLastPage=74  -f $<.pdf 				\
	  -dFirstPage=78  -dLastPage=78  -f $<.pdf 				\
	  -dFirstPage=82  -dLastPage=82  -f $<.pdf 				\
	  -dFirstPage=86  -dLastPage=86  -f $<.pdf 				\
	  -dFirstPage=90  -dLastPage=90  -f $<.pdf 				\
	  -dFirstPage=94  -dLastPage=94  -f $<.pdf 				\
	  -dFirstPage=98  -dLastPage=98  -f $<.pdf 				\
	  -dFirstPage=102 -dLastPage=102 -f $<.pdf 				\
	  -dFirstPage=106 -dLastPage=106 -f $<.pdf 				\
	  -dFirstPage=110 -dLastPage=110 -f $<.pdf 				\
	  -dFirstPage=114 -dLastPage=114 -f $<.pdf 				\
	  -dFirstPage=118 -dLastPage=118 -f $<.pdf 				\
	  -dFirstPage=122 -dLastPage=122 -f $<.pdf 				\
	  -dFirstPage=126 -dLastPage=126 -f $<.pdf 				\
	  -dFirstPage=130 -dLastPage=130 -f $<.pdf 				\
	  -dFirstPage=134 -dLastPage=134 -f $<.pdf 				\
	  -dFirstPage=138 -dLastPage=138 -f $<.pdf 				\
	  -dFirstPage=142 -dLastPage=142 -f $<.pdf 				\
	  -dFirstPage=146 -dLastPage=146 -f $<.pdf 				\
	  -dFirstPage=150 -dLastPage=150 -f $<.pdf 				\
	  -dFirstPage=154 -dLastPage=154 -f $<.pdf 				\
	  -dFirstPage=158 -dLastPage=158 -f $<.pdf 				\
	  -dFirstPage=162 -dLastPage=162 -f $<.pdf 				\


book-a4-175x297-verso1: book-a4-175x297
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$@.pdf   \
	  -dFirstPage=1   -dLastPage=1   -f $<.pdf 				\
	  -dFirstPage=5   -dLastPage=5   -f $<.pdf 				\
	  -dFirstPage=9   -dLastPage=9   -f $<.pdf 				\
	  -dFirstPage=13  -dLastPage=13  -f $<.pdf 				\
	  -dFirstPage=17  -dLastPage=17  -f $<.pdf 				\
	  -dFirstPage=21  -dLastPage=21  -f $<.pdf 				\
	  -dFirstPage=25  -dLastPage=25  -f $<.pdf 				\
	  -dFirstPage=29  -dLastPage=29  -f $<.pdf 				\
	  -dFirstPage=33  -dLastPage=33  -f $<.pdf 				\
	  -dFirstPage=37  -dLastPage=37  -f $<.pdf 				\
	  -dFirstPage=41  -dLastPage=41  -f $<.pdf 				\
	  -dFirstPage=45  -dLastPage=45  -f $<.pdf 				\
	  -dFirstPage=49  -dLastPage=49  -f $<.pdf 				\
	  -dFirstPage=53  -dLastPage=53  -f $<.pdf 				\
	  -dFirstPage=57  -dLastPage=57  -f $<.pdf 				\
	  -dFirstPage=61  -dLastPage=61  -f $<.pdf 				\
	  -dFirstPage=65  -dLastPage=65  -f $<.pdf 				\
	  -dFirstPage=69  -dLastPage=69  -f $<.pdf 				\
	  -dFirstPage=73  -dLastPage=73  -f $<.pdf 				\
	  -dFirstPage=77  -dLastPage=77  -f $<.pdf 				\
	  -dFirstPage=81  -dLastPage=81  -f $<.pdf 				\
	  -dFirstPage=85  -dLastPage=85  -f $<.pdf 				\
	  -dFirstPage=89  -dLastPage=89  -f $<.pdf 				\
	  -dFirstPage=93  -dLastPage=93  -f $<.pdf 				\
	  -dFirstPage=97  -dLastPage=97  -f $<.pdf 				\
	  -dFirstPage=101 -dLastPage=101 -f $<.pdf 				\
	  -dFirstPage=105 -dLastPage=105 -f $<.pdf 				\
	  -dFirstPage=109 -dLastPage=109 -f $<.pdf 				\
	  -dFirstPage=113 -dLastPage=113 -f $<.pdf 				\
	  -dFirstPage=117 -dLastPage=117 -f $<.pdf 				\
	  -dFirstPage=121 -dLastPage=121 -f $<.pdf 				\
	  -dFirstPage=125 -dLastPage=125 -f $<.pdf 				\
	  -dFirstPage=129 -dLastPage=129 -f $<.pdf 				\
	  -dFirstPage=133 -dLastPage=133 -f $<.pdf 				\
	  -dFirstPage=137 -dLastPage=137 -f $<.pdf 				\
	  -dFirstPage=141 -dLastPage=141 -f $<.pdf 				\
	  -dFirstPage=145 -dLastPage=145 -f $<.pdf 				\
	  -dFirstPage=149 -dLastPage=149 -f $<.pdf 				\
	  -dFirstPage=153 -dLastPage=153 -f $<.pdf 				\
	  -dFirstPage=157 -dLastPage=157 -f $<.pdf 				\
	  -dFirstPage=161 -dLastPage=161 -f $<.pdf 				\


book-a4-175x297-recto2: book-a4-175x297
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$@.pdf   \
	  -dFirstPage=4   -dLastPage=4   -f $<.pdf 				\
	  -dFirstPage=8   -dLastPage=8   -f $<.pdf 				\
	  -dFirstPage=12  -dLastPage=12  -f $<.pdf 				\
	  -dFirstPage=16  -dLastPage=16  -f $<.pdf 				\
	  -dFirstPage=20  -dLastPage=20  -f $<.pdf 				\
	  -dFirstPage=24  -dLastPage=24  -f $<.pdf 				\
	  -dFirstPage=28  -dLastPage=28  -f $<.pdf 				\
	  -dFirstPage=32  -dLastPage=32  -f $<.pdf 				\
	  -dFirstPage=36  -dLastPage=36  -f $<.pdf 				\
	  -dFirstPage=40  -dLastPage=40  -f $<.pdf 				\
	  -dFirstPage=44  -dLastPage=44  -f $<.pdf 				\
	  -dFirstPage=48  -dLastPage=48  -f $<.pdf 				\
	  -dFirstPage=56  -dLastPage=56  -f $<.pdf 				\
	  -dFirstPage=64  -dLastPage=64  -f $<.pdf 				\
	  -dFirstPage=68  -dLastPage=68  -f $<.pdf 				\
	  -dFirstPage=72  -dLastPage=72  -f $<.pdf 				\
	  -dFirstPage=76  -dLastPage=76  -f $<.pdf 				\
	  -dFirstPage=80  -dLastPage=80  -f $<.pdf 				\
	  -dFirstPage=84  -dLastPage=84  -f $<.pdf 				\
	  -dFirstPage=88  -dLastPage=88  -f $<.pdf 				\
	  -dFirstPage=92  -dLastPage=92  -f $<.pdf 				\
	  -dFirstPage=96  -dLastPage=96  -f $<.pdf 				\
	  -dFirstPage=100 -dLastPage=100 -f $<.pdf 				\
	  -dFirstPage=104 -dLastPage=104 -f $<.pdf 				\
	  -dFirstPage=108 -dLastPage=108 -f $<.pdf 				\
	  -dFirstPage=112 -dLastPage=112 -f $<.pdf 				\
	  -dFirstPage=116 -dLastPage=116 -f $<.pdf 				\
	  -dFirstPage=120 -dLastPage=120 -f $<.pdf 				\
	  -dFirstPage=128 -dLastPage=128 -f $<.pdf 				\
	  -dFirstPage=132 -dLastPage=132 -f $<.pdf 				\
	  -dFirstPage=136 -dLastPage=136 -f $<.pdf 				\
	  -dFirstPage=140 -dLastPage=140 -f $<.pdf 				\
	  -dFirstPage=148 -dLastPage=148 -f $<.pdf 				\
	  -dFirstPage=152 -dLastPage=152 -f $<.pdf 				\
	  -dFirstPage=160 -dLastPage=160 -f $<.pdf 				\


book-a4-175x297-verso2: book-a4-175x297
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$@.pdf   \
	  -dFirstPage=7   -dLastPage=7   -f $<.pdf 				\
	  -dFirstPage=11  -dLastPage=11  -f $<.pdf 				\
	  -dFirstPage=15  -dLastPage=15  -f $<.pdf 				\
	  -dFirstPage=19  -dLastPage=19  -f $<.pdf 				\
	  -dFirstPage=23  -dLastPage=23  -f $<.pdf 				\
	  -dFirstPage=27  -dLastPage=27  -f $<.pdf 				\
	  -dFirstPage=31  -dLastPage=31  -f $<.pdf 				\
	  -dFirstPage=35  -dLastPage=35  -f $<.pdf 				\
	  -dFirstPage=39  -dLastPage=39  -f $<.pdf 				\
	  -dFirstPage=43  -dLastPage=43  -f $<.pdf 				\
	  -dFirstPage=47  -dLastPage=47  -f $<.pdf 				\
	  -dFirstPage=51  -dLastPage=51  -f $<.pdf 				\
	  -dFirstPage=59  -dLastPage=59  -f $<.pdf 				\
	  -dFirstPage=67  -dLastPage=67  -f $<.pdf 				\
	  -dFirstPage=71  -dLastPage=71  -f $<.pdf 				\
	  -dFirstPage=75  -dLastPage=75  -f $<.pdf 				\
	  -dFirstPage=79  -dLastPage=79  -f $<.pdf 				\
	  -dFirstPage=83  -dLastPage=83  -f $<.pdf 				\
	  -dFirstPage=87  -dLastPage=87  -f $<.pdf 				\
	  -dFirstPage=91  -dLastPage=91  -f $<.pdf 				\
	  -dFirstPage=95  -dLastPage=95  -f $<.pdf 				\
	  -dFirstPage=99  -dLastPage=99  -f $<.pdf 				\
	  -dFirstPage=103 -dLastPage=103 -f $<.pdf 				\
	  -dFirstPage=107 -dLastPage=107 -f $<.pdf 				\
	  -dFirstPage=111 -dLastPage=111 -f $<.pdf 				\
	  -dFirstPage=115 -dLastPage=115 -f $<.pdf 				\
	  -dFirstPage=119 -dLastPage=119 -f $<.pdf 				\
	  -dFirstPage=123 -dLastPage=123 -f $<.pdf 				\
	  -dFirstPage=131 -dLastPage=131 -f $<.pdf 				\
	  -dFirstPage=135 -dLastPage=135 -f $<.pdf 				\
	  -dFirstPage=139 -dLastPage=139 -f $<.pdf 				\
	  -dFirstPage=143 -dLastPage=143 -f $<.pdf 				\
	  -dFirstPage=151 -dLastPage=151 -f $<.pdf 				\
	  -dFirstPage=155 -dLastPage=155 -f $<.pdf 				\
	  -dFirstPage=163 -dLastPage=163 -f $<.pdf 				\


