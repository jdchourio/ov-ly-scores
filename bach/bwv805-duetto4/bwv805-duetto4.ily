\version "2.18.2"

\header {
  title = "Duetto IV"
}

global = {
  \key a \minor
  \time 2/2
}

right = \relative c'' {
  \global

  R1*8
  
  r2 e
  f a,
  c8 b a2 b8 cis
  d e f2 e8 dis
  e b e fis e b e g
  
  fis b, fis' g fis b, fis' a
  g b, g' a g b, g' b
  fis b, fis' g fis b, fis' a
  g fis e2 d4-.
  cis-. bes'( a)-\prall g-.
  bes,-. g'( f)-\prall e-.
  
  g,-. e'( d)-\prall cis-.
  d8 g, f e d4 c'-.
  b-. aes'( g)-\prall f-.
  aes,-. f'( e)-\prall d-.
  f,-. d'( c)-\prall b-.
  c8 f, e d c4 bes'
  
  a8 g' f e f d a4 ~
  a8 g a b g c e4
  f,8 e' d c d b f4 ~
  f8 e f g e g c4
  d,8 c' b a b gis d4 ~
  d8 c d e c f e d
  
  e4 a,2 gis4
  a2 a'
  c e,
  f8 e d2 e8 fis
  g a bes2 a8 gis
  a e a b a e a c
  b e, b' c b e, b' d
  
  c e, c' d c e, c' e
  b e, b' c b e, b' d
  c b a2 gis4
  a8 c b d c b c a
  e4 fis g fis8 e
  fis4 gis a2 ~
  
  a4 g8 fis g4 e ~
  e dis8 cis dis2-\prall
  e4 b' e2 ~
  e dis-\prall 
  e4. d16 e f8 e d c
  b c d4. c8 b a
  
  gis a b4. a8 g fis 
  gis e gis a b c d b
  c b a b c d ees c
  a b c4. b8 a g
  fis g a4. g8 fis e
  fis d fis g a b c a
  
  b a g a b c d b
  c4 e a, c
  fis, g8 a b4 g
  a c fis, a
  d, e8 fis g4 e
  fis a dis, fis
  
  b, cis8 dis e2 ~
  e4 d8 cis d2 ~
  d4 e8 fis g2 ~
  g4 f8 e f2 ~
  f4 g8 a bes2 ~
  
  bes4 a8 gis a2 ~
  a gis-\prall
  a e'
  f a,
  c8 b a2 b8 cis
  d e f2 e8 dis
  
  e b e fis e b e g
  fis b, fis' g fis b, fis' a
  g b, g' a g b, g' b
  fis b, fis' g fis b, fis' a
  g b, e fis g a bes g
  
  e f g4. f8 e d
  cis d e4. d8 cis b
  cis a cis d e f g e
  f e d cis d4 c-.
  b-. aes'( g)-\prall f-.
  aes,-. f'( e)-\prall d-.
  
  f,-. d'( c)-\prall b-.
  c8 g c d c fis, a c
  b dis, b' c b e, b' d
  cis a cis dis e g, c e
  d fis, d' ees d g, d' f
  
  e c e fis g bes, ees g
  f a, f' g f bes, d f
  e gis, e' f e a, e' g
  f g f e d c b a
  gis e fis gis a gis a b
  c2 e,
  
  f8 e d cis d e fis gis
  a e a2 gis4
  a b c b8 a
  b4 cis d2 ~
  d4 c8 b c4 a ~
  a gis8 fis g2-\prall
  
  a4 e' a2 ~
  a gis-\prall 
  a8 g f4 ~ f8 e d cis
  d c bes4 ~ bes8 a gis fis
  gis4 e e' f
  \appoggiatura d8 c2 b-\downmordent
  a1-\fermata \bar "|."
}

left = \relative c' {
  \global
  
  r2 a
  c e,
  f8 e d2 e8 fis
  g a bes2 a8 gis
  a e a b a e a c
  b e, b' c b e, b' d
  c e, c' d c e, c' e
  
  b e, b' c b e, b' d
  c b a2 gis4
  a8 c b d c b c a
  e4 fis g fis8 e
  fis4 gis a2 ~
  a4 g8 fis g4 e ~
  
  e dis8 cis dis2-\prall
  e4 b' e2 ~
  e dis-\prall
  e4 e,8 fis g a bes g
  e f g4. f8 e d
  cis d e4. d8 c b
  
  cis a cis d e f g e
  f e d e f b aes f
  d e f4. e8 d c
  b c d4. c8 b a
  b g b c d e f d
  e d c d e f g e
  
  f4 a d, f
  b, c8 d e4 c
  d f b, d
  g, a8 b c4 a
  b d gis, b
  e, fis8 gis a4 b
  
  c2 e,
  f8 e d4 ~ d8 e fis gis
  a e a2 gis4
  a b c b8 a
  b4 cis d2 ~ 
  d4 c8 b c4 a ~
  a gis8 fis gis2-\prall
  
  a4 e' a2 ~
  a gis-\prall
  a e
  f a,
  c8 b a2 b8 cis
  d e f2 e8 dis
  
  e b e fis e b e g
  fis b, fis' g fis b, fis' a
  g b, g' a g b, g' b
  fis b, fis' g fis b, fis' a
  g fis e2 fis4-.
  gis-. f'( e)-\prall d-.
  
  f,-. d'( c)-\prall b-.
  d,-. b'( a)-\prall gis-.
  a8 d, c b a4 g'-.
  fis-. ees'( d)-\prall c-.
  ees,-. c'( b)-\prall a-. 
  c,-. a'( g)-\prall fis-.
  
  g8 c, b a g4 f'
  e8 d' c b c a e4 ~
  e8 d e fis d g b4
  c,8 b' a g a fis c4 ~
  c8 b c d b d g4
  a,8 g' fis e fis dis a4 ~
  
  a8 g a b g b e g
  fis ais, fis' g fis b, fis' a
  gis e gis ais b d, g b
  a cis, a' bes a d, a' c
  b g b cis d f, bes d
  
  c e, c' d c f, a c
  b d, b' c b e, b' d
  c a c e c a b gis
  a c b d c b c a
  e4 fis g fis8 e
  fis4 gis a2 ~
  
  a4 g8 fis g4 e ~
  e dis8 cis d2-\prall 
  e4 b' \clef treble e2 ~
  e dis-\prall
  e r4 d-.
  
  cis-. bes'( a)-\prall g-. 
  bes,-. g'( f)-\prall e-.
  g,-. e'(  d)-\prall cis-.
  d8 a d e f g aes f
  d e f4. e8 d c
  b c d4. c8 b a
  
  b g b c d e f d
  e4 \clef bass e, a2 ~
  a4 g8 fis g2 ~
  g4 a8 b c2 ~
  c4 bes8 a bes2 ~
  
  bes4 c8 d ees2 ~
  ees4 d8 cis d2 ~
  d cis-\prall
  d4 e f d 
  e d c b
  a8 e a2 gis4-\prall
  
  a2 b
  c e,
  f8 e d2 e8 fis
  g a bes2 a8 gis
  a e a b a e a c
  b e, b' c b e, b' d
  
  c e, c' d c e, c' e
  b e, b' c b e, b' d
  c a b cis d e f g
  f e d cis d4 d, ~
  d c8 b c4 d
  e d e e,
  a1-\fermata \bar "|."
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
