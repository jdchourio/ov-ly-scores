\version "2.18.2"

\header {
  meter = "Fuga"
}

global = {
  \key d \minor
  \time 3/4
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
}

right = \relative c'' {
  \global
  
  a4 bes b
  c c8 b c4
  e, f fis
  g g8 fis g a
  bes4 a g
  f g8 f e d
  e4 a, cis
  
  d8 d16 e f8 f16 g a8 a16 b
  \voiceOne c2. ~
  c8 a16 bes c8 c16 d e8 e16 fis
  g2. ~
  g8 a16 g f8 f16 e f8 c16 b
  gis'2.-\trill
  
  a2. ~ a8 b16 a gis8 gis16 fis e8 e16 d
  c8 e, a a16 b c4 ~
  c16 bes a bes c d ees d c bes c a
  
  bes8 d, g g16 a bes8 c16 bes
  a8 bes16 c d ees d c d b c d
  g,4 r r
  
  r16 g a bes a bes a g a fis g a
  d,4 d'2
  e2.
  f16 a g f e f e f f8.-\prall e32 f
  
  g4 e2 ~
  e8 f16 e d8 d16 c bes8 bes16 a
  g2 r8 g
  c2 r8 c
  
  f2 r8 f bes2. ~
  bes8 c16 bes a8 a16 g f8 f16 ees
  \oneVoice d8 f16 ees d8 d16 c bes8 bes16 a
  
  g8 d'16 c bes8 bes16 a g8 g16 f
  e c d e f g a bes c bes d c
  c bes c d g,4.-\trill f16 g
  f2. ~
  
  f16 f e d \voiceOne e4 r8 r16 fis
  g4 ~ g16 a g f e a g a
  f a b cis d2 ~
  
  d16 d c b c4 d ~
  d2 r8 d
  c e16 d c8 c16 b a8 a32 bes c16
  b8 a16 b c8 c16 d e8 e16 fis
  
  g2. ~
  g8 a16 g f8 f16 e d8 d16 c
  b2. ~
  b8 a'16 g f8 f16 e d8 d16 c
  \oneVoice d8 d16 f e8 e16 d c8 c16 b \voiceOne
  
  c2 r16 d, a' c
  b2 r16 c, g' bes
  a f a c f8 r r16 g, d' f
  e g, c e g8 r r16 a, e' g
  
  f2. ~ f2. ~ \oneVoice f4 ~
  f16 e d c b d a d
  
  gis, b c e d c b a g b f b
  e, gis a c fis, a b d g, b c e
  a, b c e b c d f e d c b
  
  c e a gis a d, e f gis, b e d
  \voiceOne c e gis a r d, f a r d, f gis
  a4 a8 gis a4
  
  r16 d, e b' r c, e a r a, c dis
  e4 e8 dis e4
  e2. ~
  e8 cis16 d e8 e16 f g8 g16 a
  
  bes4 bes8( a) a( g)
  g f g f e d
  e4 r8 e a16 g a8
  d,4 r16 d e f g e f g
  
  cis,2.
  d
  c8. d16 e4 fis
  
  g g8 g16 fis g4 ~
  g8 e16 f g8 g16 f e8 a16 g
  f8 a16 g f8 f16 e f g a f
  
  d2 r16 gis, b d
  c a' g f e d c b a gis fis e
  a2 r16 dis, fis a
  
  g e' d c b a g fis e d cis b
  ais'2.-\prall
  b
  
  r8 e16 g fis8 fis16 e d8 d16 cis
  d8 b16 cis d8 d16 e fis8 fis16 gis
  a4 r8 a16 gis a8 b16 a
  
  g4 r8 g16 fis g8 a16 g
  fis4 r8 fis16 e f8 g16 f
  e2 e4
  
  dis d2
  cis4 c2
  b4 c cis
  
  d d8 cis d4
  fis, g gis
  a a8 gis a4
  
  c b a
  g a8( g) fis( e)
  fis16 g a b c a b c r c b a
  g2 r16 a, e' g
  
  fis2 r16 g, d' f
  e c e g c8 r r16 d, a' c
  b d, g b d8 r r16 e, b' d
  
  c2. ~ \oneVoice
  c ~
  c16 a bes d c bes a g fis a ees a
  
  d, fis g bes e, g a c fis, a bes d
  g, bes c d a c d ees d c bes a
  bes d g fis g c, d ees fis, ees' d c
  
  \voiceOne bes d g8 r16 c, d ees f aes g f
  ees8 g16 f ees8 ees16 d ees4
  ees,16 g bes8 r16 g a bes c ees d c

  bes8 d16 c bes8 bes16 a bes d g8
  cis,2.
  d
  
  bes4 a g
  f g8 f e d
  e e16 f g a bes g r bes a g
  
  \oneVoice fis d fis g a fis a bes c a b c
  gis8 b16 c d8 d16 e f8 e16 d 
  \voiceOne c4 r16 g a bes c ees d c
  
  bes4 r16 f g a bes d c bes
  a4 r16 a b cis d f e d
  \oneVoice cis d e f g f e f g bes a g
  
  \voiceOne f4 r16 c d e f a g f
  e4 r16 bes c d ees g f ees
  d4 r16 a bes c d f ees d
  
  c4 r16 g a bes c a d a
  bes8 d g g16 fis g4 ~
  g8 c, f f16 e f4 ~
  
  f8 bes, c d ees4 ~
  ees8 a, b c d4 ~
  d8 g, a bes c4 ~
  
  c16 ees d c bes a g a bes d c bes
  a d c bes a d g, cis a d a g
  f g f e d f e d g a g f
  
  e g f e a bes a g fis g fis e
  ees'4 d c
  bes c8 bes a g
  cis4 d e ~
  
  e d2
  <d f>4 <c e> <b d>
  <a cis>16 r r8 r4 r16 b d f
  e c' b a g f e d c b a g
  
  c2 r16 fis, a c
  bes4 r r
  s2.
  r8 a16 c bes8 bes16 a g8 g16 f
  
  g8 g16 bes a8 a16 g f8 f16 e
  f4 r16 c d e f a g f
  e4 r16 bes c d ees g f ees
  d4 r16 d e fis g bes a g
  
  \oneVoice fis16 g a bes c bes a bes c ees d c
  \voiceOne bes4 r16 f g a bes d c bes
  a4 r16 a b cis d f e d
  
  s2.
  a'4 bes b
  c c8 b c4
  e, f fis
  g g8 fis g a
  
  bes4 a g
  f g8 f e d
  e16 r r8 
  a,32 b cis d e f g e cis8. d16
  d2. \bar "|."
}

middle = \relative c' {
  \global
  
  R2.*8 \change Staff="right" \voiceTwo
  d8. e16 f4 fis
  g g8 fis g4
  b, c cis
  d d8 cis d e
  f4 e d
  
  \change Staff="left" \voiceOne 
  c d8 c b a
  b4 e, gis
  a8 a16 b \change Staff="right" \voiceTwo c8 c16 d e8 e16 fis
  g2. ~
  
  g8 g,16 a bes8 bes16 c d8 d16 e
  f2. ~
  f8 d16 e f8 f16 g a8 a16 b
  
  c2. ~ c8 d16 c bes8 bes16 a g8 f16 e
  cis'2._\trill
  d2. ~
  
  d8 e16 d cis8 cis16 b a8 a16 g
  f2. ~
  f8 b, c d e4 ~
  e8 e f g a4 ~
  
  a8 a bes c d4 ~
  d8 d e f g f
  e4 \change Staff="left" \voiceOne 
  r8 a,, bes c 
  d c d ees f ees
  
  d2.
  c8 r c bes a g
  a f ~ f e16 d e8 bes' ~
  bes16 bes a g a4. b8
  
  c4 \change Staff="right" \voiceTwo
  r16 d c bes a bes c8 ~
  c16 c b a b4 r8 cis
  d4 r16 e d c b e d e
  
  a,8 e' a2 ~
  a8 b16 a gis8 g16 fis e4 ~
  e f fis
  g g8 fis g4
  
  b, c cis
  d d8 cis d e
  f4 f8( e) e( d)
  d c d c \change Staff="left" \voiceOne b a
  b4 e, gis \change Staff="right" \voiceTwo
  
  r16 a' e c a r r8 r4
  r16 g' d b g r r8 r4
  r r16 a' f d \change Staff="left" \voiceOne b8 g
  c r \change Staff="right" \voiceTwo r16 bes' g e 
  \change Staff="left" \voiceOne cis8 a
  
  \change Staff="right" \voiceTwo
  r16 d' c bes a g f e d f c f
  b, d e g f e d c s4
  s2.*5
  
  a'4 bes b
  c c8 b c4
  e, f fis
  g g8 fis g4
  g8( a16 bes) bes8( a) a( g)
  g f g f e d
  
  e4 e'2 ~
  e4 d2 ~
  d4 c2 ~
  c4 bes2 ~
  
  bes8 bes16 a g8 g16 f e8 e16 g
  f a d, e f g f g g8.-\trill f32 g
  a8 a16 bes c8 c16 bes a8 d16 c
  
  bes8 d16 c bes8 bes16 a bes c d bes
  g8. a16 b4 cis
  d d8 d16 cis d4
  
  r16 a b c b a g f e4 ~
  e2 r4
  r16 e fis g fis e d c b4 ~
  
  b2 r4
  R2.
  r8 fis'16 a g8 g16 fis e8 e16 d
  
  e8 r r4 fis ~
  fis r r
  r8 fis16 gis a8 a16 b cis8 cis16 dis
  
  e8 b e e16 dis e4 ~
  e8 a, d d16 cis d4 ~
  d g, c ~
  
  c fis, b ~
  b e, a ~
  a16 g fis a g a b a g fis e g
  
  fis b a g fis b e, ais fis b fis e
  d e d cis b d cis b e fis e d
  cis e d cis fis g fis e dis e dis cis
  
  <dis fis a>4 <e g> <b fis'>
  e2. ~ 
  e2 dis4
  
  \change Staff="left" \voiceOne
  r16 e b g e r r8 r4
  r16 d' a fis f r r8 r4
  s2.*2
  
  \change Staff="right" \voiceTwo r16 a' g f e d 
  \change Staff="left" \oneVoice c b a c g c
  s2.*5
  
  \change Staff="right" \voiceTwo
  g'8. a16 bes4 b
  c c8 b c16 aes g f
  ees8. e16 f4 fis
  
  g g8 fis g8. a16
  bes4 a g
  f g8 f e d
  
  e g16 f e f g e cis d e cis
  a8 d16 cis d8 d16 cis d8 d16 cis
  d4 r \change Staff="left" \voiceOne c~ 
  
  c8[ bes] a[ g] fis[ f]
  e gis16 a b8 b16 c d8 c16 b
  a \change Staff="right" \voiceTwo bes' a g fis2
  
  r16 a g f e2
  r16 g f e d8 r r4
  s2.
  
  r16 e' d c b2
  r16 d c bes a2
  r16 c bes a g2
  
  r16 bes a g fis2
  g4 r8 bes16 a bes8 c16 bes
  a4 r8 a16 g aes8 bes16 aes
  
  g8 r r4 r8 g
  fis4 r r8 f
  e4 r r8 ees
  
  d4 ees e
  f f8 e f4
  \change Staff="left" \voiceOne
  a, bes b
  
  c c8 b c4
  \change Staff="right" \voiceTwo
  <fis a c> <g bes> <d a'> ~
  q g2
  bes4 a g
  
  f g8 f e d
  <gis b>4 <e a> f
  e16 a b cis d c bes a g4 ~
  g16 r16 r8 r4 r
  
  r16 g a bes a g f ees d4
  r16 g f ees d \change Staff="left" \voiceOne c bes a g f e d
  \change Staff="right" \voiceTwo cis'2.-\prall
  d2. ~
  
  d4 cis2
  r16 e d c b2
  r16 d c bes a2
  r16 c bes a g8 r r4
  
  s2.
  r16 a' g f e2
  r16 g f e d8 r r4
  
  cis'16 d e f g f e f g bes a g ~
  g f e g f g a g f e d f
  e a g f e a d, gis e a e d
  
  c d c bes a c bes a d ees d c
  b d c b e f e d cis d cis b
  <cis e g>4 <a d f> <a e'>
  
  <a d> <g d'>8 <a d> <bes cis> <a d>
  <bes d>16 s8. s4 r8 <g a>
  <fis a>2. \bar "|."
}

left = \relative c' {
  \global
  
  s2.*8 R2.*5 \voiceTwo R2.*3 \oneVoice R2.*2
  a4 bes b
  c c8 b c4
  
  e, f fis
  g g8 fis g a
  bes4 a g
  f g8 f e d
  
  e4 a, cis
  d d, d'
  e8 g16 f e8 e16 d c8 c16 bes
  a8 c'16 bes a8 a16 g f8 f16 e
  
  d8 f16 e d8 d16 c bes8 bes16 a
  g8 bes'16 a g8 g16 f e8 e16 d
  c4 \voiceTwo r8 f g a
  bes a bes c d c
  
  bes a g a bes4 ~
  bes8 bes a g f e
  f bes, c2
  f4 ~ f16 g f e d g f g
  c,4 \oneVoice r8 a d d,
  g d' g e a a,
  d4 fis gis
  
  a ~ a16 b a g fis b a b
  e,4 r8 r gis e
  a4 r a,
  e' r r
  
  r16 e f g a8 a16 g f8 f16 e
  d4 r r
  gis2.-\trill
  a2. ~
  a4 gis e
  
  a r16 e' c a fis8 r
  g4 r16 d' b g e8 r
  f r r4 s
  s2.
  
  d'2 s4
  s2 b16 d a d
  gis, b c e d c b a g b fis b
  
  e, gis a c b a gis fis e gis d gis
  c, e fis a d, fis gis b e, gis a c
  fis, gis a c gis a b d c b a gis
  
  a8[ e] f[ d] e[ e,]
  a2. ~
  a8 a16 b c8 c16 d e8 e16 fis
  
  gis4 a2
  e8 e,16 fis g8 g16 a b8 b32 cis d16
  cis4 cis'2
  d2. ~
  
  d8 e,16 f g8 g16 a b8 b16 cis
  d8 d16 c bes8 bes16 a g8 g16 f
  g8 g16 bes a8 a16 g f8 f16 e
  fis8 fis16 a g8 g16f e8 e16 d
  
  e4 r8 e a a,
  d a' d c bes4-\trill 
  a r8 a d d,
  g g, bes d g f
  e4 r8 e a a,
  d d, f a d e
  
  f fis g4 gis
  a a8 gis a4
  c,8 cis d4 dis
  
  e e8 dis e fis
  g( fis) fis( e) e( d)
  d( cis) e( d) c(b)
  
  cis b ais cis fis, ais
  b4 r8 b16 cis d8 d16 e
  fis4 r r
  
  r8 e16 fis g e g a b e, b' cis
  d8 d,16 e fis d fis g a d, a' b
  c d e d c e c b a c a g
  
  fis e' dis cis b d b a gis b gis fis
  e d' cis b a c a g fis a fis e
  dis4-\trill e8 d e ais,
  
  <<{ s2.*3 b'8 b16 a g8 g16 fis e8 e16 dis } \\
    { \stemUp b2. ~ b ~ b  ~ \stemDown b8 } \\ 
    { s2.*3 <dis fis>8 }>>
  
  e8 e16 d c8 c16 b a8 a16 g
  a4 ~ a16 fis g a b8 b,
  \voiceTwo e4 r16 b'' g e cis8 r
  
  d4 r16 a' fis d b8 r
  c4 \change Staff="right" r16 e' \change Staff="left" \oneVoice c a fis8 d
  g r \change Staff="right" r16 f' d \change Staff="left" b gis8 e
  
  a r s2
  fis16 a bes d c bes a g fis a e a
  d, fis g bes a g fis e d fis c fis
  
  bes, d e g c, e fis a d, fis g bes
  e, g a bes fis a bes c bes a g fis
  g8 d ees c d d,
  
  g2. ~ g ~ g ~ g ~
  g8 bes'16 a g8 g16 f e a g a
  d, a' d c bes c d bes g a bes g
  
  cis,4 r8 e a, cis
  d16 e f d bes8 a g f
  g g'16 f \voiceTwo e8 g a a,
  
  d2. ~
  d4 r gis
  a8 bes16 c d8 c bes a
  
  \oneVoice g a16 bes c8 bes a g
  f16 e d c b cis d e f a g f
  e d cis b a b cis d e g f e
  
  d8 e16 f g8 f e d
  c d16 e f8 ees d c
  bes16 a g f e fis g a bes d c bes
  
  a8 bes16 c d e fis g a fis e d
  g d g a bes g bes c d g, d' e
  f8 f,16 g a f a bes c a, c' d
  
  ees f g f ees g ees d c ees c bes
  a c bes c d f d c b d b a
  g b a b c ees c bes a c a g
  
  fis8 d g fis g g,
  <<{ s2.*3 d''8 d16 c bes8 bes16 a g8 g16 fis } \\
    { d2. ~ d ~ d ~d8 } \\
    { s2.*3 <fis a>8 }>>
  
  g8 g16 f ees8 ees16 d c8 c16 bes
  a8 a'16 g f8 f16 e d8 d16 cis
  d8 d16 c bes8 bes16 a g8 g16 f
  
  e8 e'16 d c8 c16 b a8 a16 gis
  a4 bes b
  c c8 b c4
  
  e, f fis
  \voiceTwo g g8 fis g a \oneVoice
  bes8( a) a( g) g( f)
  f[( e]) g( f) e( d)
  
  e4 r16 e f g a g a8
  d,16 d' e f  g8 f e d
  c d16 e f8 ees d c
  bes16 a g f e fis g a bes d c bes
  
  a g fis e d e fis g a c bes a
  g8 a16 bes c8 bes a g
  f16 e' d cis b cis d e f a g f
  
  e d cis b a b cis d e g f e
  d4 ~ d16( e f e d e f gis)
  a,2. ~ a ~ a
  
  <<{ a'8 a16 g f8 f16 e d8 d16 cis
      d8 d16 c bes8 bes16 a g8 g16 f }
    { a''8 a16 g f8 f16 e d8 d16 cis
      d8 d16 c bes8 bes16 a g8 g16 f }>>
  
  <<{ g32 a \change Staff="right" \voiceTwo b cis d e f g } \\
    { g,,16 r r8 }>>
  r4 r8 <<{ <e' a> } \\ { a, }>>
  <<{ <d a'>4 ~ d2 } \\ { d4 d,2 }>> \bar "|."
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
        \new Voice { \clef bass \middle }
        \new Voice { \clef bass \left }
      >>
    }
  >>
  \layout { indent = 0 }
}
