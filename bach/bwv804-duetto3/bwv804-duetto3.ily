\version "2.18.2"

\header {
  title = "Duetto III"
}

global = {
  \key g \major
  \time 12/8
}

right = \relative c'' {
  \global

  r4. g16 fis e d b'8-. a-. r r g16 fis e d c'8-.
  b-. r r d16 b a g e' c d b a g c a c b a g a fis
  
  g d e fis g a b d c b c a b g a b c d e g fis e d cis
  a' d, e fis g a b a g fis g e fis a g fis e d cis d e fis g8 ~
  
  g16 e fis d cis d g,8 f'4 ~ f16 d e c b c fis,8 e'4 ~
  e16 c d b a b e, b' c a g a d, a' b g fis g c, g' a fis e fis
  
  b, d e fis g a b d c b a g fis g a b c d e a g fis e d
  g d e fis g a b g fis g c, a' b, g' fis g a, c fis, g a b c8 ~
  
  c b r d16 b a g e'8-. d-. r r c16 b a g g'8-.
  fis-. r r g16 fis e d b' g a fis e d g e g fis e d e cis
  
  d4. ~ d16 fis, g e d e c'4. ~ c16 e, fis d cis d
  b'4. ~ b16 e, dis e fis g a8 b c ~ c16 b a g fis e
  
  dis e fis g a8 ~ a16 fis g e d e b e g e dis e b e g e d e
  cis d e fis g8 ~ g16 e fis d cis d a d fis d cis d a d fis d c d
  
  b c d e f8 ~ f16 e dis e a e c' a gis a dis a fis'8 b, a
  g16 b cis dis e fis g b a g fis e dis cis dis e fis g a fis e dis cis b
  
  e g fis e a fis g b a g a fis g b a g fis e dis e fis b, a'8 ~ 
  a g r b,16 g fis e c'8-. b-. r r a16 g fis e e'8-.
  
  dis-. r r e16 d cis b g' e fis d cis b e cis e d cis b cis ais
  b4. ~ b16 ais b d cis e d8 b cis-\prall d gis b
  
  d,4. ~ d16 gis, a c b d c8 a b-\prall c fis a
  c,4. ~ c16 a b g fis g e b' c a g a fis c' d b a b
  
  g d' e c b c a e' f d c d b8 g'4 ~ g16 c, f e d c
  b c b a g f e g f e d c b c d e f g a d c b a g
  
  c g a b c d e g f e f d e c' b c a f g c, b c f8 ~
  f16 d e c b c fis8 a c ~ c16 c, d b a b e,8 d'4 ~
  
  d16 b c a gis a e' b c a gis a fis' c d b a b g' d e c b c
  a' g fis e d c b d c b a g fis e' d c b a g fis e d b'8-.
  
  a-. r r r16 a, b c d e fis g a b c d g, fis e d c'8-.
  b-. r r r4. r d16 b a g e' c
  
  d b a g c a b d c b c a b g fis e a fis g b a g a fis
  g e d c f d e g f e f d e f g a d, f e a b c e, g
  
  fis g a b e, g fis b c d fis, a g a b c fis, a g c d e g, b
  a g a b c d c b a g f'8-. e-. r r d16 cis b a g'8-.
  
  fis-. r r a16 fis e d c'8-. b16 g a b e, g c, fis g a d, fis
  b, d e f b, d g, b c d g, b d, g a b d, g b, d e f b, d
  
  g,8 r r e'16 d c b f'8-. e-. r r g16 fis e d c'8-. 
  c-\mordent r r c16 b a g e' c d b a g c a c b a g a fis
  g1.-\fermata \bar "|."
}

left = \relative c {
  \global
  
  g8 b d g b g d fis a d fis, d
  g d b g b c b e fis g d' d,
  
  g8 r r d16 b a g e'8-. d-. r r d16 b a g g'8-.
  fis-. r r g16 fis e d b' g a fis e d g e g fis e d e cis
  
  d8 d' a b16 c d b g b
  c,8 c' g a16 b c a fis a
  b,8 b' fis g a e fis g d e fis d
  
  g r r g,16 fis e d b'8-. a-. r r g16 fis e d c'8-.
  b-. r r d16 b a g e' c d b a g c a c b a g a fis
  
  g d e fis g a b d c b c a b g a b c d e g fis e d cis
  a' d, e fis g a b a g fis g e fis a g fis e d cis d e fis g8 ~
  
  g16 e fis d cis d b'4. ~ b16 d, e c b c a'4. ~ 
  a16 fis g e dis e c'4. ~ c16 b a g fis e dis8 e c
  
  b b'16 a g fis e8 e, fis g b a g e e'
  a,16 b cis d e cis d8 d, e fis a g fis d d'
  
  g,16 a b c d b c8 c' fis, a dis, fis b,16 cis dis e fis d
  e8 e, r e'16 dis cis b g'8-. fis-. r r e16 dis cis b a'8-.
  
  g-. r r b16 g fis e c' a b g fis e a fis a g fis e fis dis
  e b cis dis e fis g b a g a fis g e fis g a b cis e dis cis b ais
  
  fis' b, cis dis e fis g fis e d e cis d8 d, g e fis fis,
  b16 fis' gis ais b cis d cis d b ais b fis b d b ais b f b d b a b
  
  e, b' e d c b a b c a gis a e a c a gis a ees a c a g a
  d, a' d c b a g8 g, b c a c d b d
  
  e c e f a, f' ~ f16 e f b, a b e8 a f
  g g, r c16 b a g e'8-. d-. r r c16 b a g f'8-.
  
  e-. r r g16 e d c a' f g e d c f d f e d c d b
  c8 c' g a16 b c a g fis b8 b, fis' gis16 a b gis fis e
  
  a,8 a' b c a c d b d e c a
  fis d r g16 fis e d b'8-. a-. r r b16 d c b a g
  
  fis e' d c b a g fis e d c'8-. b-. r r r16 b, c d e fis
  g a b c d e d b a g e' c d b a g c a b d c b c a
  
  b g fis e a fis g b a g a fis g b a g c a b g fis e fis dis
  e g f e a fis g e d c d b c8 c' b c a c
  
  d, d' cis d b d e, e' dis e c e
  fis, e d g c,16 b a g c g' a b c d e8 d,16 cis b a
  
  d a' b cis d e fis8 g,16 fis e d g8 e c a d d,
  g8 r r r16 d'' e f b, d g, b c d g, b d, f g a d, f
  
  b, d e f b, d g,8 a b c16 d e fis g a b d c b a g
  fis a g fis e d g8 e c g' b, e c d d,
  g1.-\fermata \bar "|."
}

  

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        \breaks
        \new Voice = "right" { \right }
      >>
    }
    \new Staff = "left" { 
      <<
        \breaks 
        \new Voice { \clef bass \left }
      >>
    }
  >>
  \layout { indent = 0 }
}
