\version "2.10.25"

\header {
  title = "Sonate 16 in C major"
  subtitle = "Sonata facile"
  composer = "W. A. Mozart"
  opus = "K 545"
  piece = "Rondo - Allegretto"
  mutopiatitle = "Sonata Facile - Third movement"
  mutopiacomposer = "MozartWA"
  mutopiainstrument = "Piano"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "IMSLP"
  maintainer = "Alejandro Sierra"
  maintainerEmail = "algsierra@gmail.com"
 footer = "Mutopia-2007/08/22-1027"
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
  <e g>8-! <e g>-! 
  <c e> r <d f> <d f>
  <b d> r  c16( d e c
  a b c cis  d e f d)
  c( b a g) <e' g>8 <e g>
  <c e> r <a' f> <a f>
  <d, b> r  a'16( g f e)
  cis( d e f)  a,( c b d)
  c8 r
}

strh = \relative c'' {
  e16( fis g) g-! 
  a16( g fis e)  d-. d-. d-. d-.
  e( d c b)  e'( d c b)

  % 11
  gis( a b c)  e,( fis g a)
  g( fis e d) <b' d>8 <b d>
  <g b> r8 <a c> <a c>
  <fis a> r8 g16( a b g)
  dis( e g e  d b c a)

  g8 r g16( a b c
  d8) r b16( c d e
  f8) r d16( e f g
  a8[) aes-! g-! fis]-!
  f8 r <e g>-! <e g>-!
  <c e> r <d f> <d f>
  <b d> r c16( d e c)

  a( b c cis d e f d)
  c( b a g) <e' g>8 <e g>
  <c e> r <f a> <f a>
  <b, d> r a'16( g f e)
  cis( d e f) a,( c b d)  
}

mtrh = \relative c'' {
  c8 r r4
  e16( dis f e) r4
  e16( dis f e)  <e c'>8 <e c'>
  <c a'> r <d b'> <d b'>
  <b gis'> r a'16( e c a)
  c( bes) bes bes d( cis) cis cis

  %#34
  e( d) f( e)  g( f) f( e)
  e( dis) c'4( dis,8)
  e r b'16( gis e d)
  c( e a gis a e c a)
  gis( b e gis) b( gis e d)

  c e a gis a e c a
  e8 r <c' e> <c e>
  <a c> r <b d> <b d>
  <gis b> r r4
  e16 dis f e r4

  e''16( dis f e  d cis e d)
  d( c) c( b)  b( a) a( g)
  g( f) f( e)  e( d) d( c)
  bes( f' d b)  a8 gis
  a r gis16( d' b gis)

  a8 r gis16( d' b gis)
  a8 r gis16( d' b gis)
  a( e' c a)  b( f' d b)
}

clrha = \relative c'' {
  b16( f' d b)
  a'( g f e)  d( f d b)
  a'( g f e)  d'( c b a)
  a( g) f-. e-.  e( d) c-. b-.
}

clrhb = \relative c'' {
  c e g, c  e, g c, e
  g c <c e> <e g>  <e g>( <f d>) <c e>-. <d b>-.
  c e g, c  e, g c, e
  g c <c e> <e g>  <e g> <f d> <c e> <d b>
  c8 <e g c> <c e,>  <c e,>
  <c e,>4 r
}

clrh = \relative c'' {
  \clrha
  d8( c)  \clrha
  \clrhb  \bar "|."
}

%%% Left Hand

ptlh = \relative c' {
  \clef bass
  r4
  <a c>8  <a c>8 <f a> r
  <g b>  <g b> <g e> r
  f4. d8
  g r r4
  <a c>8 <a c> <d, f> r

  <g b>  <g b> <e c> r
  <f a>4.( <g f'>8)
  <c e> c, 
}

stlh = \relative c' {
  \clef treble
  c16 g' e g
  b, g' d g  \clef bass fis, d' a d
  g, d' b d  b, g' d g

  c, a' e a  cis, a' e a
  d,8 r8 r4
  \clef treble
  <e' g>8 <e g> <c e> r
  <d fis> <d fis> <b d> r
  \clef bass
  << { g4. fis8 } \\ { c4 d } >>

  g8 g, r4
  <g' b>8 g, r4
  <g' b>8 g, r4
  r2
  r2
  <a' c>8 <a c> <f a> r
  <g b> <g b> <e g> r

  f4. d8
  g8 r r4
  <a c>8 <a c> <d, f> r
  <g b> <g b> <c, e> r
  <f a>4.( <g f'>8)
}

mtlh = \relative c' {
  <c e> c, <c' e> <c e>
  <a c> r <b d> <b d>
  <gis b> r r4  
  e'16( dis f e) r4
  e16( dis f e)  \clef treble <c e>4
  <d f> <e g>

  %#34
  << { a2 } \\ { f8[ cis d e] } >>
  <f a>8 r <f a> r
  \clef bass
  e,16 e' gis, e'  b e gis, e'
  e, e' a, e'  c e a, e'
  e, e' gis, e'  b e gis, e'

  e, e' a, e'  c e a, e'
  c,8 r r4
  e'16( dis f e) r4
  e16( dis f e) <e, c'>8 <e c'>
  <c a'> r <d b'> <d b'>

  <b gis'> r <gis' b>4
  <a c>8 <b d> <<{ e4 } \\ { c8 cis }>>
  \clef treble
  << { a'2 } \\ { d,8[ e f e] } >>
  <d f>4 \clef bass << { \stemDown e,4 } \\ { \stemUp c'8 b } >>
  a16( c e c  e, b' d b)

  a( c e c  e, b' d b)
  a( c e c  e, b' d b)
  a( c d c  g d' f d)
}

cllha = \relative c {
  f16 b g b
  e, c' g c   f, b g b
  e, c' g c   f, d' g, d'
  g, e' c e   g, f' d f  
}

cllhb = \relative c' {
  c16 e g, c  e, g  c, e
  g8 r g r
  c16 e g, c  e, g  c, e
  g8 r g, r
  <c c,> <e e,> <g g,> <e e,>
  <c c,>4 r
}

cllh =  {
  \cllha
  g16 g e g  \cllha
  \cllhb
}

\score {
  \new PianoStaff <<
    \time 2/4
    \new Staff { 
      \override Fingering #'avoid-slur = #'inside
      \keepWithTag #'first
      \repeat volta 2 { \partial 4 \ptrh } \break
      \strh
      \mtrh
      r4\fermata \ptrh
      \clrh
    }
    \new Staff { 
      \override Fingering #'avoid-slur = #'inside
      \repeat volta 2 { \partial 4 \ptlh }       
      \stlh
      \mtlh
      r4\fermata \ptlh
      \cllh
    }
  >>
  \layout { indent=0 }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 104 4)
    }
  }
}
