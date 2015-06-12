\version "2.18.2"

\header {
  title = "Duetto I"
}

global = {
  \key e \minor
  \time 3/8
}

right = \relative c' {
  \global

  e32 fis g a b cis dis e dis cis b a
  g fis e16 r c' b ais
  ais32 b b,16 r bes' a gis
  gis32 a a,16 r32 a' c e a g fis e
  
  dis[ fis g16] ~ g32[ e ais,16] ~ ais32[ a fis' a,]
  a[ fis g c] c[ ais b fis'] e[ d e ais,]
  d cis b16 r8 r
  
  r b b'
  ais a, a'
  gis g, g'
  fis gis ais
  
  b r b, ~
  b32[ gis a d] d[ b c b'] a[ g a dis,]
  g8 r g, ~
  
  g32[ e fis b] b[ g a g'] fis[ e fis b,]
  e8 r e, ~
  e32[ cis dis g] g[ e fis e'] dis[ cis dis a]
  
  g fis e16 r8 r
  e32 fis g a b cis dis e dis cis b a
  g fis e fis g a b c b a g fis
  
  e fis g a b cis dis e dis cis b a
  g fis e16 r c'' b ais
  ais32 b b,16 r bes' a gis
  gis32 a a,16 r32 a c e a g fis e
  
  dis[ fis g16] ~ g32[ e ais,16] ~ ais32[ a fis' a,]
  gis[ b c16] ~ c32[ a dis,16] ~ dis32[ e b' d]
  cis[ e f16] ~ f32[ d gis,16] ~ gis32[ g e' g,]
  fis[ a bes16] ~ bes32[ g cis,16] ~ cis32[ d a' c]
  
  b a g a b c d e fis g fis e
  d[ c b a] g8[ g']
  fis f, f'
  e ees, ees'
  
  d e fis
  g, fis e
  d32 e fis g a b cis d cis b a g
  fis e d16 r bes' a gis
  
  gis32 a a,16 r aes' g fis
  fis32 g g,16 r32 g' bes d g f e d
  cis32[ e f16] ~ f32[ d gis,16] ~ gis32[ g e' g,]
  g[ e f bes] bes[ gis a g'] f[ e f b,]
  
  e8 r e, ~ 
  e32[ cis d a'] a[ fis gis e'] d[ c d gis,]
  c8 r c, ~
  
  c32[ ais b fis'] fis[ dis e c'] b[ ais b e,]
  ais8 r r
  b32 cis d e fis gis ais b ais gis fis e
  
  d cis b cis d e fis g fis e d cis
  b cis d e fis gis ais b a gis fis e
  d cis b cis d e fis g fis e d cis
  
  b8 b' b,
  ais a' a,
  gis g' g,
  fis gis ais
  
  b cis dis
  e, fis gis
  a b cis
  d32 c b a gis fis e dis e fis gis a
  
  b c d16 r8 r32 d c b
  a b c d e fis g a g fis e dis
  c' a b16 r8 r32 a, g fis
  
  e fis g a b cis dis e dis cis b a
  g fis e16 r c' b ais
  ais32 b b,16 r bes' a gis
  gis32 a a,16 r32 a'[ c e] a[ g fis e]
  
  dis[ fis g16] ~ g32[ e ais,16] ~ ais32[ a fis' a,]
  g fis e fis g a b cis dis e dis cis
  b[ a g fis] e8[ e']
  dis d, d'
  
  cis c, c'
  b cis dis ~
  dis32[ ais b16] ~ b32[ dis e16] ~ e32[ dis a'16] ~
  a32[ g fis e] fis8-. dis-.-\turn        
  e4.-\fermata \bar "|."
}

left = \relative c, {
  \global
  
  R4. 
  r8 e e'
  dis d, d'
  cis c, c'
  
  b cis dis
  e d cis
  b32 cis d e fis gis ais b ais gis fis e
  
  d cis b16 r g' fis eis
  eis32 fis fis,16 r f' e dis
  dis32 e e,16 r32 e' g b e d cis b
  ais[ cis d16] ~ d32[ b eis,16] ~ eis32[ e cis' e,]
  
  e[ cis d g] g[ e fis e'] d[ cis d gis,]
  c8 r c, ~ 
  c32[ a b f'] f[ dis e c'] b[ a b e,]
  
  a8 r a, ~
  a32[ fis g c] c[ a b a'] g[ fis g cis,]
  fis8 r b,
  
  e32 fis g a b cis dis e dis cis b a
  g fis e fis g a b c b a g fis
  e fis g a b cis dis e dis cis b a
  
  g fis e fis g a b c b a g fis
  e8 e' e,
  dis d' d,
  cis c' c,
  
  b cis dis
  e fis gis
  a, b cis
  d e fis
  
  g,32 a b c d e fis g gis e d c
  b a g16 r ees' d cis
  cis32 d d,16 r des' c b
  b32 c c,16 r32 c' ees g c bes a g
  
  fis[ a bes16] ~ bes32[ g cis,16] ~ cis32[ c a' c,]
  c[ a b e] e[ cis d a'] g[ fis g cis,]
  fis e d e fis g a b cis d cis b
  a[ g fis e] d8[ d']
  
  cis c, c'
  b bes, bes'
  a b cis
  d r d, ~
  
  d32[ b c f] f[ dis e d'] c[ b c fis,]
  b8 r b, ~
  b32[ gis a d] d[ b c b'] a[ g a dis,]
  
  g8 r g, ~
  g32[ eis fis b] b[ gis ais fis'] e[ d e a,]
  d cis b16 r8 r
  
  b32 cis d e fis gis ais b ais gis fis e
  d cis b cis d e fis g fis e d cis
  b cis d e fis gis ais b ais gis fis e
  
  d cis b16 r g' f eis
  eis32 fis fis,16 r f' e dis
  dis32 e e,16 r32 e' g b e d cis b
  ais[ cis d16] ~ d32[ b eis,16] ~ eis32[ e cis' e,]
  
  dis[ fis g16] ~ g32[ e ais,16] ~ ais32[ b fis' a]
  gis[ b c16] ~ c32[ a dis,16] ~ dis32[ d b' d,]
  cis[ e f16] ~ f32[ d gis,16] ~ gis32[ a e' g]
  f e d16 r8 r32 d e f
  
  e d c b a gis fis e fis gis ais b
  c d e16 r8 r32 a b c
  dis, fis g a b cis dis e dis cis b a
  
  g fis e fis g a b cis dis e dis cis
  b[ a g fis] e8[ e']
  dis d, d'
  cis c, c'
  
  b cis dis
  e,32 fis g a b cis dis e dis cis b a
  g fis e16 r c' b ais
  ais32 b b,16 r bes' a gis
  
  gis32 a a,16 r32 a[ c e] a[ g fis e]
  dis[ fis g16] ~ g32[ e ais,16] ~ ais32[ a fis' a,]
  gis8 g fis
  e16 c' a8 b 
  e,4.-\fermata \bar "|."
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
