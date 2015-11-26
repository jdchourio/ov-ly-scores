\version "2.10.25"

\header {
  title = "Sonate 16 in C major"
  subtitle = "Sonata facile"
  composer = "W. A. Mozart"
  opus = "K 545"
  piece = "Andante"
  mutopiatitle = "Sonata Facile - Second movement"
  mutopiacomposer = "MozartWA"
  mutopiainstrument = "Piano"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "IMSLP"
  maintainer = "Alejandro Sierra"
  maintainerEmail = "algsierra@gmail.com"
 footer = "Mutopia-2007/07/22-1007"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}
  
%{ Abreviations
  Suffixes rh = right hand
           lh = left hand
  Prefixes pt = principal theme
           st = secondary theme
           cl = close
           dv = development
           cd = coda
           mt = middle theme
%}

#(define afterGraceFraction (cons 15 16))

%%% Right Hand

ptrh = \relative c'' { 
  b2( d16 c b c)
  d8.( b16) g4 r4
  g'4.(  a16 g fis e d cis)

  d8.( b16) g4 r4
  c8.( a16)  fis8-. a-. b-. c-.
  d8.( b16) g'4 r4

  a16( g fis g   fis e dis e  d c b c)
  b8.( c32 b)  a8( d cis c)
  b4 ~  b16( g b d  c a c e)
}

ptendrh = \relative c'' { 
  d8.( b16) g-. g-. a-. b-.  c-. d-. e-. fis-.
  g( fis g fis a g fis g fis e d cis)
  d( b d b) g4 r4

  c16( a c a) fis-! a( gis a  ais b c cis)
  d( b d b) g'4 r16 b( fis g)
  dis( e c a)  g8. g16 b( a g a)
}

ptlastrh = \relative c'' { 
  <a fis>4( g) r
}


ptbrh = \relative c'' { 
  d4 ~ d16( cis e d  g fis e d)
  cis8.( d16) e4 r
  e ~ e16( dis fis e  a g fis e)

  d8.( e16) fis4 r
  fis ~ fis16( e g e  b' a g fis)
  e4 ~ e16( dis fis e a g fis e)

  e( d) d8 ~ d16 a d fis <<{ fis e d e } \\ { cis4 }>>
  <e cis>4 d16 dis e dis fis e d c
  b4 ~ b16( g b d c a c e)
}

strh = \relative c'' { 
  bes4 ~ bes16( a c bes) bes( a g fis)
  g8.( bes16) d4 r
  d ~ d16( cis ees d) d( c bes a)
  
  bes8.( d16) g4 r
  f ~ f16( a c bes a g f ees)
  d4 ~ d16( g bes a g f ees d)

  b( c ees g) bes,8.  bes16 <<{ d( c bes c) } \\ { a4 }>>
  <c a>4 bes16( a c bes d c ees d)
  f4 ~ f16 aes g f ees d c b

  c8.( ees16) g4 r
  g ~ g16( fis a g) bes( cis, bes' cis,)
  cis4 d r

  ees ~ ees16( c a' fis c' a ees' fis,)
  d'4 ~ d16( a bes fis g cis, d bes)
  bes( a c ees)  g,8. g16 bes( a g a)

  <fis a>4  g16( fis g gis  a gis a ais)
}

cdrh = \relative c'' {
  g16 fis a g  b a c b  d c e d
  f4.  g16 a g f e d
  dis4( e) r16  g( fis e)
  
  d( b a e')  g,8. g16 <<{ b a g a } \\ { fis4 }>>
  g16 fis a g  b a c b  d c e d
  f4.  g16 a g f e d
  e4 fis g

  g,4.  a32( g fis g) <<{ b8 a } \\ { fis4 }>>
  g16( d b') b-!  b( g d') d-!  d( b a b)
  g( d b') b-!  b( g d') d-!  d( b a b)
  g8 r8 <g b,> r8 r4
  
}



%%% Left Hand

ptlh = \relative c' {
  \clef bass
  g16 d' b d  g, d' b d  a d c d
  \repeat unfold 3 { g, d' b d }
  g, e' c e    g, e' c e    g, cis ais cis

  \repeat unfold 3 { g d' b d }
  \repeat unfold 3 { a d c d }
  g, d' b d e, b' g b  b, g' d g

  <<{ e4 g2 } \\ { c,2 e4 }>>
  <<{ g4 fis } \\ { d2 }>> r4
  g16 d' b d g, d' b d  g, d' b d
}

ptendlh = \relative c' {
  \repeat unfold 3 { g d' b d }
  g, e' c e  g, e' c e   g, cis ais cis
  g d' b d \repeat unfold 2 { g, d' b d }

  \repeat unfold 3 { a d c d }
  g, d' b d   e, b' g b  b, g' d g
  c, a' e a  d, b' g b  d, c' a c  
}

ptlastlh = \relative c' {
  <<{ c4( b) } \\ { g2 }>> r4
}

ptblh = \relative c' {
  \clef treble 
  d16 a' fis a  d,16 a' fis a  d,16 a' fis a 
  e a g a  \repeat unfold 2 { e a g a }
  cis, a' g a  \repeat unfold 2 { cis, a' g a }

  d, a' fis a  cis, a' d, a'  b, g' d g
  a, fis' d fis  g, e' cis e  fis, d' a d
  b g' e g a, fis' dis fis g, e' b e 
  
  a, fis' d fis  a, fis' d fis  a, g' d g
  <<{ g4 fis } \\ { d2 }>> r4
  \clef bass
  g,16 d' b d  g, d' b d  a d c d
}

stlh = \relative c' {
  \clef bass
  g16 d' bes d   g, d' bes d   a d c d
  \repeat unfold 3 { g, d' bes d }
  \repeat unfold 2 { fis, d' a d } d, d' fis, d'

  g, d' bes d   g, d' bes d   g, ees' bes ees 
  \repeat unfold 3 { a, f' c f }
  bes, f' d f  g, d' bes d  d, bes' f bes

  ees, c' g c  f, d' bes d  f, ees' a, ees'
  <<{ ees4 d } \\ { bes2 }>> r4
  aes16 f' c f  g, d' b d  f, d' g, d'

  ees, c' g c  d, b' f b  c, c' ees, c'
  cis, bes' e, bes'  d, bes' g bes  ees, bes' g bes
  d, bes' g bes d, a' fis a  d, a' fis a

  c, a' fis a   c, a' fis a  c, a' fis a 
  bes,  g' d g  bes, g' d g   bes, g' d g  
  c, a' ees a  d, bes' g bes  d, c' a c

  <<{ c4 bes } \\ { g2 }>> r4
}

cdlh = \relative c' {
  \clef bass
  <b g>4 r4 r4
  \clef treble
  a16 f' c f  a, f' c f  b, g' d g
  \repeat unfold 3 { c, g' e g }
  
  b, d c e  \clef bass  d, b' g b  d, c' a c
  <g b>4 r r
  a,16 f' c f  b, g' d g  g, g' b, g'
  c, g' e g  c, g' ees g  cis, bes' e, bes'
  
  d, b' g b  d, b' g b  d, c' a c
  <g b>4 r r8 \set doubleSlurs = ##t <c d,>(
  <g b>4) r r8 <c d,>(
  <g b>8) r8 g, r r4
}



\score {
  \new PianoStaff <<
    %\key g \major
    \time 3/4
    \new Staff { 
      \key g \major
      %\override Fingering #'avoid-slur = #'inside
      \keepWithTag #'first
      \repeat volta 2 { \ptrh \ptendrh \ptlastrh } \break
      \repeat volta 2 { \ptbrh \ptendrh \ptlastrh } \break
      \strh \ptrh \ptendrh
      \cdrh
      \bar "|."
    }
    \new Staff { 
      \key g \major
      %\override Fingering #'avoid-slur = #'inside
      \repeat volta 2 { \ptlh \ptendlh \ptlastlh }
      \repeat volta 2 { \ptblh \ptendlh \ptlastlh }
      \stlh \ptlh \ptendlh
      \cdlh
    }
  >>
  \layout { indent=0 }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 4)
    }
  }
}
