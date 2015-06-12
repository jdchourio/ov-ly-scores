\version "2.18.2"

\header {
  title = "Duetto II"
}

global = {
  \key f \major
  \time 2/4
}

right = \relative c' {
  \global

  f4 a
  c4. bes16 a
  bes8[ c d e]
  f[ c f a] \bar "||" 
  \mark \markup { \small \musicglyph #"scripts.segno" }
  g16 f e d c bes a g
  a c f, a d4 ~
  
  d8 c16-\prall b c e d f
  e d c b a c g c
  f, e' d c b d g, b
  c4 ~ c16 e a, c
  f,4 ~
  f16 a d, f
  
  bes4 ~ bes16 d g, bes
  e,4 ~ e16 g c, e
  a c f, a d, f bes, d
  g bes e, g c, e a, c
  f a d, f bes d g, bes
  
  c,4 e
  f4. f16 e
  f8[ g a bes]
  c[ f, bes d]
  c16 bes a g f ees d c
  
  d bes f' d bes'4 ~
  bes16 d g, bes e,4 ~
  e16 c g' e c'4 ~
  c16 e a, c f,4 ~
  f16 d a' f d' a f' d
  
  bes g d' bes g' d bes' g
  e c g' e bes' g e c'
  a c f, a c, f ees d
  ees g c, ees a, ees' d c
  d bes e bes f' bes, g' bes,
  
  a g' f e d f c f
  bes, a' g f e g c, e
  f c a' f c a f' c
  a f c' a f c a' f
  c4 g''-\downmordent
  f-\fermata r8 a,(
  
  bes cis) d4 ~
  d16 cis d e f4 ~
  f8 ees16 d ees8 fis,
  g4 r8 f(
  gis a) ~
  a g16 fis
  g8 e'16 g, f e d f
  
  e8 a d16-\prall cis d8 ~
  d cis16 b a g f e
  d4 f
  a4. g16 f
  g8[ a b cis]
  d4. cis16 b
  
  cis8[ d e f] 
  \appoggiatura a8 g f16 e f8 d
  e4-\mordent cis-\downmordent
  d8[ b( c dis])
  e4 ~ e16 dis e fis
  f4. f16 e
 
  f8 gis, a4
  r8 g[( ais b]) ~
  b a16 gis a8 fis'16 a,
  g fis e g fis8 dis'
  e16-\prall dis e8 r4
  r e,
 
  gis b ~
  b8 a16 gis a8 b
  c d e4
  e8 d16 c d8 e
  fis gis a4 ~
  a8 gis16 fis e d c b
 
  a4 ~ a16 e c' a
  f' c a' f c'8 f,
  e[ ees d des] ~
  des[ c b bes]
  a16 g f g a bes c d
 
  e d c d e f g8
  c,4 aes
  f4. g16 aes
  g8[ f ees des]
  c[ f c aes]
 
  bes16 c des ees f g aes bes
  g f e f g aes bes c
  aes g f g aes bes c des
  e, des' c bes aes g f e
  f8[ g( aes b])
 
  c4 ~ c16 b c d
  ees4. des16 c
  des8 e, f4
  r8 ees[( fis g]) ~
  g f16 e f8 d'16 f,
 
  ees d c ees d8 b'
  c16-\prall b c8 r4
  r c,
  e g ~
  g8 f16 e f8 g
  aes bes c4 ~
 
  c8 bes16 aes bes8 c
  d e f4 ~
  f8 e16 d c bes aes g
  aes8( b c4) ~
  c16 b c d ees4 ~
  ees8 des16 c des8 e,
  
  f4 r8 ees(
  fis g) ~ g f16 e
  f8 d'16 f, ees d c ees
  d8 g c16-\prall b c8 ~
  c b16 a g f ees d
  c4 ees
  
  g4. f16 ees
  f8[ g a b]
  c4. b16 a
  b8[ c d ees]
  \appoggiatura g f ees16 d ees8 c
  d4-\mordent b-\turn
  
  c r
  f, a
  c4. bes16 a
  bes8[ c d e]
  f[ c f a] 
  \bar "||"
  %\mark \markup { \small \musicglyph #"scripts.segno" }
}

left = \relative c {
  \global
  
  R2*4
  c4 e
  
  f4. f16 e
  f8[ g a b]
  c[ g c e]
  d16 c b a g f e d
  e g c, e a4 ~
  a16 c f, a d,4 ~
  
  d16 f bes, d g4 ~
  g16 bes e, g c,4 ~
  c16 e a, c f a d, f
  bes, d g, bes e g c, e
  a, c f, a d f bes, d
  
  e g c, e g bes e, g
  a c f, a d4 ~
  d8 c16 bes c ees d f
  ees d ees c d f bes, d
  ees, d' c bes a c f, a
  
  bes,4 ~ bes16 g d' bes
  g'4 ~ g16 bes e, g
  c,4 ~ c16 a e' c
  a'4 ~ a16 c f, a
  d,4 ~ d16 f d f
  
  g bes d, g bes, d g, bes
  c e g, c e, g c, e
  f4 a
  c4. bes16 a
  bes8[ c d e]
  
  f[ c f a]
  g16 f e d c bes a g
  a c f, a c f a, c
  f a c, f a c f, a
  c4 c,
  f16-\fermata c a c f,8 r
  
  r e'( f gis)
  a4 ~ a16 gis a b
  c4. bes16 a
  bes8 cis, d4
  r8 c( dis e) ~
  e d16 cis d8 b'16 d,
  
  c b a c b8 e
  a16-\prall gis a8 r4
  r a,
  cis e ~ 
  e8 d16 cis d8 e
  f g a4 ~
  
  a8 g16 f g8 a
  b[ cis d bes]
  \appoggiatura a8 g f16 g a8 e(
  f gis) a4 ~
  a16 gis a b c4 ~
  c8 bes16 a bes8 cis,
  
  d4 r8 c(
  dis8 e4) d16 cis
  d8 b'16 d, c b a c
  b8 e a16-\prall gis a8 ~ 
  a gis16 fis e d c b
  a4 c
  
  e4. d16 c
  d8[ e fis gis]
  a4. gis16 fis
  gis8[ a b c]
  \appoggiatura e8 d c16 b c8 f
  d[ b e e,]
  
  a16 c e, a c, e a, c
  f,4 a
  c4. bes16 a
  bes8[ c d e]
  f[ c f a]
  
  g16 f e d c bes a g
  aes c f, aes c,8 c'
  des[ d ees e] ~
  e[ f ges g]
  aes16 bes c bes aes g f ees
  
  des ees f ees des c bes8
  e16 f g f e d c8
  f16 g aes g f ees des8
  c c, r c'(
  des e) f4 ~
  
  f16 e f g aes4 ~
  aes8 ges16 f ges8 a,
  bes4. aes8( 
  b c4) bes16 a
  bes8 g'16 bes, aes g f aes
  
  g8 c f16-\prall e f8 ~
  f e16 d c bes aes g
  f4 aes
  c4. bes16 aes
  bes8[ c d e]
  f4. e16 d
  
  e8[ f g aes]
  \grace { \parenthesize c8 } bes aes16 g aes8 des
  bes8[ g c c,]
  f[ d( ees fis])
  g4 ~ g16 fis g a
  bes4. aes16 g
  
  aes8 b, c4
  r8 bes[( cis d]) ~
  d c16 b c8 a'16 c,
  bes a g bes a8 d
  g16-\prall fis g8 r4
  r g,
  
  b d ~
  d8 c16 b c8 d
  ees f g4 ~
  g8 f16 e f8 g
  a[ b c aes]
  \appoggiatura g f ees16 f g8 g,
  
  c16 a'' g f e d c bes
  a f' e d c bes a g
  f bes a g f ees d c
  d f e d c bes a g
  a8 f r4_\markup { \italic "Da Capo" }  \bar "||"
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark \markup { \small \musicglyph #"scripts.segno" } 
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        %\breaks
        \new Voice = "right" { \right }
      >>
    }
    \new Staff = "left" { 
      <<
        %\breaks 
        \new Voice { \clef bass \left }
      >>
    }
  >>
  \layout { indent = 0 }
}
