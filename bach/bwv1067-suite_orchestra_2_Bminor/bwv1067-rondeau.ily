\version "2.18.2"

\paper {
  print-all-headers = ##t
}

global = {
  \key b \minor
  \time 2/2
}

traverso = \relative c'' {
  \global
  
  \partial 2
  \repeat volta 2 {
    d4( cis-.)
    fis,2 e'4( d-.) 
    fis,2 fis'8 e fis g fis e d fis e d e fis
    e d cis e d4( cis4-.)
    fis,2 e'4( d-.)
    fis,2 fis'8 e fis g
    fis4-. b,-. cis-. ais-.
    b2
  }
  
  fis'8( g fis e)
  fis4-. g-. a-. g-.
  fis-. b-. fis8( g fis e)
  fis4-. g-. a-. g-.
  fis2 b4( a-.)
  c,2 a'4( g-.)
  
  b,2 g'8 fis g a
  g fis e g fis e dis fis
  e2 g ~
  g fis ~
  fis e ~
  e8 d e fis e d cis b
  
  cis4 fis, d'( cis-.)
  fis,2 e'4( d-.)
  fis,2 fis'8 e fis g
  fis e d fis e d e fis
  e d cis e d4( cis-.)
  fis,2 e'4( d-.) 
  fis,2 fis'8 e fis g
  
  
  fis4-. b,-. cis-. ais-.
  b2 d8( cis) d( e)
  d e d cis b cis d b
  cis b a b cis d e fis
  g a g fis g fis e g
  fis g a fis b a gis fis
  
  e d cis b a' gis fis e
  d cis b a gis' fis eis fis
  gis4 cis, cis' b8 a 
  \appoggiatura a8 gis2 cis,4( b-.)
  a'2 d,4( cis-.)
  b'2 a8 gis a b

  a gis fis a gis fis eis g
  fis2 cis8( d cis b)
  cis4-. d-. e-. d-.
  cis-. fis-. cis8( d cis b)
  cis4-. d-. e-. d-.
  \appoggiatura d8 cis2 d4( cis-.)
  fis,2 e'4( d-.)
  
  fis,2 fis'8 e fis g
  fis e d fis e d e fis 
  e d cis e d4( cis-.)
  fis,2 e'4( d-.)
  fis,2 fis'8 e fis g
  fis4-. b,-. cis-. ais-.
  b2-\fermata \bar "|."
}

\addQuote "qtraverso" { \traverso }

violinI = \relative c'' {
  \global

  \quoteDuring #"qtraverso" { s2 s1*31 }
  fis4 a, d2 ~
  d cis ~
  cis b ~ 
  b8 a b cis b a gis fis
  eis4 cis cis'4( b-.)
  \quoteDuring #"qtraverso" { s1*15 s2 }
}

violinII = \relative c'' {
  \global
  
  \partial 2
  \repeat volta 2 {
    b4 ais8 b
    cis2 ais4 b8 cis
    d2 d8 cis d e
    d cis b d cis b cis d
    cis b ais cis b4 ais8 b
    cis2 ais4 b8 cis
    d2 b4-. cis-.
    d-. d,-. g-. fis-.
    fis2
  }
  
  dis'8( e dis cis)
  dis4-. e-. fis-. e-.
  dis-. e-. dis8( e dis cis)
  dis4-. e-. fis-. e-.
  dis2 g4 fis8 g
  a2 c,4 b8 a
  
  g2 b8 a b c
  b a g b a g fis a
  g2 b4( a-.)
  cis,2 a'4( g-.)
  b,2 e8 fis g e
  ais4 cis fis, gis
  
  ais8 b cis ais b4 ais8 b
  cis2 ais4 b8 cis
  d2 d8 cis d e
  d cis b d cis b cis d
  cis b ais cis b4 ais8 b
  cis2 ais4 b8 cis
  d2 b4 cis
  
  
  d-. d,-. g-. fis-.
  fis2 fis4 b
  b a a gis
  a e a8 b cis d
  e fis e d e d cis e
  d2 fis4( e-.)
  
  gis,2 e'4( d-.)
  fis,2 d'4( cis-.)
  eis,2 fis4 b,
  cis8 dis eis cis fis4 eis'
  fis2 eis4 fis
  cis2 cis8 b cis d
  
  cis b a cis b a gis b
  ais2 ais8 b ais gis
  ais4-. b-. cis-. b-.
  ais-. b-. ais8 b ais gis
  ais4-. b-. cis-. b-.
  \appoggiatura b8 ais2 b4 ais8 b
  cis2 ais4 b8 cis
  
  d2 d8 cis d e
  d cis b d cis b cis d
  cis b ais cis b4 ais8 b 
  cis2 ais4 b8 cis
  d2 b4-. cis-. 
  d-. d,-. g-. fis-.
  fis2-\fermata \bar "|."
}

viola = \relative c' {
  \global

  \partial 2
  \repeat volta 2 {
    fis4 e8 d
    cis2 cis4 d8 e
    fis2 b4-. fis-.
    b,2 ais'4-. fis-.
    ais,2 fis'4 e8 d 
    cis2 cis4 d8 e
    fis2 fis4 e
    d8 cis d b e4 cis
    d2
  }
  
  b'4 b
  b b b b
  b8 a g a b4 b
  b b b b
  b8 a g fis e4 dis8 e
  fis2 dis4 e8 fis
  
  g2 e4 dis
  e g c b
  b8 a g fis e d e fis
  e d cis e d cis d e 
  d cis b ais b4 e
  g fis b d,
  
  cis fis fis e8 d
  cis2 cis4 d8 e
  fis2 b4-. fis-.
  b,2 ais'4-. fis-.
  ais,2 fis'4 e8 d
  cis2 cis4 d8 e
  fis2 fis4 e
  
  d8 cis d b e4 cis
  d2 b4 fis'
  e e fis e
  e8 d cis d e4 a
  cis, a cis a'
  a2 r
  
  r1 r1 r1
  r2 fis4( gis-.)
  cis,2 b'4( a-.)
  gis2 fis4 eis
  
  fis a d cis
  cis8 b ais gis fis4 fis
  fis fis fis fis
  fis8 e d e fis4 fis
  fis fis fis fis
  fis2 fis4 e8 d 
  cis2 cis4 d8 e
  
  fis2 b4-. fis-.
  b,2 ais'4-. fis-.
  ais,2 fis'4 e8 d
  cis2 cis4 d8 e
  fis2 fis4 e
  d8 cis d b e4 cis
  d2-\fermata \bar "|."
}

continuo = \relative c' {
  \global

  \partial 2
  \repeat volta 2 {
    b2 ~ 
    b4 ais8 b cis2 ~
    cis4 b8 cis d4 b
    fis2 cis'4 ais
    fis2 b ~
    b4 ais8 b cis2 ~
    cis4 b8 cis d4 ais
    b4 g e fis
    b,2
  }
  
  r2 r1 r1 r1
  r2 e2 ~
  e4 dis8 e fis2 ~
  
  fis4 e8 dis e4 b
  c c' a b
  e, e, e' cis
  a2 d4 b
  g2 g'4 e
  cis ais' b b,
  
  fis'8 gis ais fis b2 ~
  b4 ais8 b cis2 ~
  cis4 b8 cis d4 b
  fis2 cis'4 ais
  fis2 b ~
  b4 ais8 b cis2 ~ 
  cis4 b8 cis d4 ais
  
  
  b g e fis
  b, d8 fis b4 a
  gis a d, e
  a, a' g fis
  e cis a a'
  d,2 r
  
  r1 r1 r1
  r2 a'8 b a gis
  fis gis a fis gis a gis fis 
  eis fis gis eis fis4 cis
  
  d d' b cis
  fis,2 r
  r1 r1 r1
  r8 e' d cis b2 ~
  b4 ais8 b cis2 ~
  
  cis4 b8 cis d4 b
  fis2 cis'4 ais
  fis2 b ~
  b4 ais8 b cis2 ~
  cis4 b8 cis d4 ais
  b g e fis
  b,2-\fermata \bar "|."
}

bc = \figuremode {
  s2 \bassFigureExtendersOn
  <5 2>4 <5 2><6\\>2 
  <6\\\! 4 2>4 <6\\ 4 2>4 <6>2
  <6\! 4> <6\\ 4\! 3>4 <6\\ 4 3>4
  <7 _+>1
  <5 2>2 <6\\>
  <6\\\! 4 2>  <6>4 <6\!>
  s2 <6>4 <_+> \bassFigureExtendersOff
  
  s1*5
  <6! 4 2>2 <6\\ 5!>
  <6\\ 4 2>2. <6 _+>4
  <5>4 s <6 _!> <_+>
  s2. <6 5>4
  <7>2. <6 5>4
  <7>2 <6>
  <6\\>4 <6 5> s2
  
  <_+>4 <6> s2
  <5 2>2 <6\\>
  <6\\ 4 2> <6>
  <6 4> \bassFigureExtendersOn <6\\ 4\! 3>4 <6\\ 4 3> \bassFigureExtendersOff
  <7 _+>1
  <5 2>2 <6\\> 
  <4 2> <6>4 <6 5>
  
  
  s2 <6>4 <_+>
  s2. <4 2>4
  <6 5>2 <6 5>4 <_+>
  s2 <4 2>4 <6>
  <6> <6 5> <7>2
  s1*4
  
  s2 <6>4. <6\\>8
  s2 <6\\>4 <7 4 2>
  <6 5>2. <6 _+>4
  
  <5>2 <6\\>4 <_+>
  <_+>2 s2
  s1*3 \set figuredBassPlusDirection = #RIGHT
  \bassFigureExtendersOn
  <4\+>1
  <5 2>4 <5 2>4 <6\\>2
  
  <6\\\! 4 2>4 <6\\ 4 2>4 <6>2
  <6\! 4>2 <6\\ 4\! 3>4 <6\\ 4 3>
  <7 _+>1 \bassFigureExtendersOff
  <5 2>2 <6\\>
  <6\\ 4 2>2 <6>4 <6>4
  s2 <6>4 <_+>
}

\score {
  \header { title = "Rondeau" }
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Traverso" } { \clef treble \traverso }
    \new Staff \with { instrumentName = "Violin I" } { \clef treble \violinI }
    \new Staff \with { instrumentName = "Violin II"} { \clef treble \violinII }
    \new Staff \with { instrumentName = "Viola"    } { \clef alto \viola }
    \new Staff \with { instrumentName = "Continuo" } 
    <<
      { \clef bass \continuo } 
      \new FiguredBass \bc
      %{ s2 s1*6 \break s1*7 \break s1*6 \break s1*7 \break \pageBreak
        s1*6 \break s1*6 \break s1*7 \break s1*6 s2 \break  
      %}
    >>
  >>
}

\pageBreak 

\score {
  \header { title = "Rondeau" }
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Traverso" } { \clef treble \transpose b d' { \traverso } }
    \new Staff \with { instrumentName = "Violin I" } { \clef treble \transpose b d' { \violinI } }
    \new Staff \with { instrumentName = "Violin II"} { \clef treble \transpose b d' { \violinII } }
    \new Staff \with { instrumentName = "Viola"    } { \clef treble \transpose b d' { \viola } }
    \new Staff \with { instrumentName = "Continuo" } 
    <<
      { \clef bass \transpose b d { \continuo } }
      \new FiguredBass \bc
      %{ s2 s1*6 \break s1*7 \break s1*6 \break s1*7 \break \pageBreak
        s1*6 \break s1*6 \break s1*7 \break s1*6 s2 \break  
      %}
    >>
  >>
}
