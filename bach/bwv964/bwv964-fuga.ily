\version "2.18.2"

cstr = \change Staff = "right"
cstl = \change Staff = "left"

\header {
  %title = "Fuga"
  meter = "Allegro"
  tagline = ##f
}

global = {
  \key d \minor
  \time 2/4
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
}

right = \relative c'' {
  \global
  
  R2 * 5
  R2
  r8 d16 cis d8 d,
  a'[ c! b d]
  c4 r8 c
  c d16 c d8 a
  
  bes!4 r8 bes
  bes c16 bes c8 g
  a16 bes a g f e d c
  b8 g'16 f g8 b,
  cis16 d e f g8 bes,!
  
  a g'16 f g bes a g
  f g f g g8. f32 g 
  a8 r c!4 
  b bes
  
  a d
  cis c
  b e
  dis d
  cis8 c16 b c8 d
  
  e b16 a b8 cis
  d d16 cis d8 e
  f c!16 b c8 d
  e e16 d e8 fis
  g d16 cis d8 e
  
  
  f!2 ~ 
  f16 e f d c b! a g
  e'2 ~
  e16 d ees c bes a g f
  s2
  
  c'16bes c a g fis e fis
  \oneVoice bes c bes a g f! ees d
  ees g32 bes ees16 bes a g fis g
  cis8 d16 cis d f,! d' f,
  e d' e, d' e, cis' e, cis'
  
  fis, c'! d, c' g bes cis, bes'
  <<{ a4 } \\ { d, }>> \oneVoice r8
  << \new Voice { \voiceOne 
      a' 
      a g16 fis g bes g ees
      cis8[ bes' a g]
      f8. g16 e8.-\trill d16 }
    \new Voice { \voiceTwo
      d8
      d4 s
      r8 g[ f! e!]
      d4 cis }>>
  
  \repeat unfold 2 {
    d16 a'\p f d s d[ s d]
    e\rest d[ r d] e\rest d[ r d] ~ }
  \repeat unfold 2 { 
    r16 d\f cis d e d cis d }
  
  r16 a' f d s d[ s d]
  r b' f d cis d b' d,
  c! e' c a s a[ s a]
  r a[ r a] r a[ r a] ~
  
  \stemUp a e'\p c a s a[ s a]
  r a[ r a] r a[ r a]
  \repeat unfold 2 {
    r a gis a b a gis a }
  r e' c a s a[ s a]
  
  
  r a[ r a]
  <<\new Voice { \voiceOne
      r \override Stem.details.beamed-lengths = #'(4) d[ r d] ~ 
      \revert Stem.details.beamed-lengths
      d8 e16 d e8 e,
      a[ c b d]
      c4 r8 c }
    \new Voice { \voiceTwo
      r16 <f, gis>[ r <f a>]
      <e b'>8 r r4
      r8 a[ a gis]
      a }>>
  \voiceOne b4 bes
  
  a8 d16 cis d b c a
  gis4 r8 b ~
  b8 a16 gis a f g e
  f8 e d4 ~
  d8 b'16 a b8 b,
  
  e8[ g! fis a]
  gis16 b c d
  <<\new Voice { \voiceOne
      e8 d
      c8. d16 b8.-\trill a16
      a4 r R2 * 7
      r8 c16[ bes c8 c,] } 
    \new Voice { \voiceTwo
      r8 f!
      e4 d
      c8 e a4
      gis g ~ 
      g8 f16 e f8 g
      
      a e16 d e8 fis
      g d g4
      fis f ~ 
      f8 e16 d e8 f
      g d16 c d8 e
      f4 s }>>
  
  f16 e f a g f g bes
  a g a c bes a bes d
  c a f e f g a bes32 c 
  d2 ~ 
  d16 b g fis g a b c32 d
  
  e4 r16 e d c
  a c f8 ~
  f16 f8 e16
  f g f e f c a f
  
  << \new Voice { \voiceOne
      c'8[ e d f] ~
      f16 f e d e f g8 ~
      g f4 e8 ~
      e ees4 d8 ~ 
      d s s4 }
    \new Voice { \voiceTwo
      r16 g, c8 ~ c16 c8 b16
      c4 ~ \once \override NoteColumn.force-hshift = #1 c8. bes!16 a4 g f f
      e!16 f g a bes c d bes
    }
    \new Voice { \voiceThree
      s2 s4
      \shape #'((0 . -0.5) (0 . -0.5) (0 . -0.5) (0 . -0.5)) Tie
      c4 ~ c bes
      \once \override NoteColumn.force-hshift = #1 c4. bes8 ~ bes 
    }
  >>
  
  \oneVoice c16 d c bes a g f a
  \voiceOne d, e f g a bes c a
  bes c bes a g f e g
  
  c, d e f g a bes g
  a2 ~ a8 d16 c bes a g bes
  e,! g f e d c bes g' ~
  \oneVoice g16 f8. ~ f8 f16 e
  f8 a16 g a8 a,
  
  d16 e f d e f g e
  f g a f g a bes g
  <<\new Voice { \voiceOne a8 d16 cis } 
    \new Voice { \voiceTwo a4 }>> 
  \voiceOne d16 b c a
  b4 r8 b
  cis4 r8 cis
  
  d8 f16 e f8 d
  e4 r
  \oneVoice e,16 g a cis e f g e
  \voiceOne f4 ~ f16 f d f
  e2 ~
  e16 a, d cis d f a, bes
  
  c! a fis e fis d a c
  bes g' d c d bes g bes
  \oneVoice r4 r16 e g f!
  g bes! e d e bes a g
  f e d cis d f bes f
  
  e d c! b c e a ees
  d c bes! a bes d g d
  cis d e! f g a bes a
  bes a g fis g cis d e
  \voiceOne f,! a bes c! d a g e'
  cis4 r8 c
  
  
  f,4 fis
  g r8 bes
  e,4 g ~
  g8 f16 g f8 f'
  bes,4 a
  
  g4 f8 d'
  a g16 f g8 e
  \oneVoice f16 a b c d8 f,
  e16 e' d c d b a gis
  <<\new Voice { \voiceOne a8[ <d f> <c e> <b! d>] }
    \new Voice { \voiceTwo r8 b e, }>>
  
  \voiceOne c'8. d16 b8. a16
  a8 e'16 d e8 e,
  a[ c b d]
  c8 r r4
  r16 e, a8~ a16 a8 gis16
  
  a8 e16 f e8 e'
  a,[f g! e]
  f8 r r16 cis' d e
  a, f' e d ~ d e d cis
  d8 f,16 e f4 ~
  
  f8 g16 f g8 d
  e ees16 d ees4 ~
  ees8 f16 ees f8 c
  d bes'16 c bes8 a
  g c16 d c8 bes
  
  a16 g a bes c bes c8 ~ 
  c16 a bes c d c d8 ~
  d c16 d c8 bes
  a d16 ees d8 c
  bes4 b
  
  
  c4 cis
  r16 d8 e16 f4 ~
  f16 f8 f16 ~ f e8 d16 ~
  d cis8 d16 e4 ~
  e16 e8 e16 ~ e d8 c16 ~
  
  c16 b8 c16 d4 ~
  d8 c16 b c8 c,
  f[ a g bes!]
  a b\turn c4 ~
  c8 ~ c32 b a b b8. c16
  
  c8 e16 d e8 e,
  \oneVoice fis16 a b c d4 ~
  d8 d16 c d8 fis,
  gis16 a gis a b c d, e
  f! g! b, c d e gis, a
  
  b c d e fis gis a b
  \voiceOne c d c d e8 e,
  a2
  gis8 e16 f e8 e'
  a,[ f g! e]
  
  f4 e
  d8 e\turn f4 ~
  f16 f8 f16 e d c b!
  \oneVoice c gis a c f8. e16 ~
  e8. a,16 d8. c16 ~
  
  \override Beam.damping = #+inf.0
  \voiceOne c8. \cstl f,16 bes!8. a16
  gis b \cstr d f b e, d b'
  \revert Beam.damping
  \oneVoice c, b c e a d, cis g'
  f e f a bes! d, c! a'
  gis a b c d4 ~
  
  
  d8 f, e4 ~
  e16 f e gis a c b dis
  \voiceOne e8 a, c16 b a gis
  a8 r r c ~
  c4 fis,!
  
  g8 r \stemDown bes,16 d g bes ~ 
  \stemUp bes4 ees,
  f8 s s16 \oneVoice b, cis d
  e8 r s4 
  s2
  
  d16 e d a f' g f d
  ees8[ c'16 bes c8 c,]
  d16 f ees d ees g f ees
  f aes g f g bes a g
  \voiceOne a8 r r a
  
  bes r r bes
  c r r c
  d[ c ees d]
  <<\new Voice { \voiceOne c bes16 a }
    \new Voice { \voiceTwo f4 }
    \new Voice { \voiceThree a8 }
  >> bes16 d c bes
  \oneVoice a c bes a g f ees d
  
  ees d ees8 r g16 bes
  ees d ees bes g8. ees'16
  f, ees f8 r a16 c
  ees d ees c a8. ees'16
  f, ees f8 r bes16 c
  
  d c d bes f8. d'16
  f, ees f8 r aes16 b
  d c d aes f8. d'16
  ees, d ees8 r b'16 d
  c b c g ees c8 c'16
  
  
  d, cis d8 d16 fis a bes!
  c! bes c a
  fis d8 c'16
  bes a bes r d, g bes d,
  c bes c r c g' bes8
  
  r4 r16 g aes c
  \voiceOne fis,8 d'16 c d8 d,
  g[ bes a c]
  <<\new Voice { \voiceOne bes r r bes } 
    \new Voice { \voiceThree g s s g }>>
  a4 aes ~
  
  aes16 aes g fis \oneVoice g8 g'
  c,16 bes a! c bes a g bes
  aes g fis g ees'8 d
  aes16 fis g8 ees' d
  
  g,16 e! fis a! c8 ees,
  
  <<\new Voice { \voiceOne 
      d[ c' bes a] ~ a8 g4 fis8 g 
      \clef bass \oneVoice bes,16[ a] }
    \new Voice { \voiceTwo
      s4. ees'8 d4 c bes }>>
  bes8 c
  d a16 g a8 b
  
  c4 c
  b bes
  a8 a16 g a8 bes
  c g16 f g8 a
  
  bes4 bes
  a aes
  g8 \clef treble ees'16[ f] ees8 d
  c f16 g f8 ees
  d4 d
  
  
  ees e
  f8 f16 g f8 ees
  d g16 a g8 f
  ees4 e
  f fis
  
  g8 d16 ees d8 d'
  g,[ ees f! d]
  ees16 d c d ees8 c'
  f,[ d ees c]
  d16 ees f ees d8 f
  
  bes16 aes g bes aes g f aes
  g f ees f \voiceOne g8 g
  c16 bes a! c bes a g bes
  a g f g a bes c d
  ees8 d d c
  
  c bes bes a
  g16 a g a bes4 ~
  bes16 cis32 d e16 bes \oneVoice a g f e
  f d bes' a g f e d
  
  cis8 e'16 d e8 g,
  f16 e' d cis d8 f,
  e[ d' c! ees,]
  d16 c' bes a bes8 d,
  c[ bes' a c,]
  
  
  bes16 a' g f g8 bes,
  a[ g' f a,]
  bes ees16 d \voiceOne ees8 g
  g[ bes bes ees]
  cis b16 a d4
  
  d cis 
  d2 ~
  d16 d c bes r c bes a
  <g bes>8 a <fis a> g
  g bes16 a g8 f!
  
  ees16 f g a bes d, bes' d,
  cis8[ bes' a g]
  f8. g16 e8. d16
  \oneVoice d4 ~ d16 e32 f g a b cis
  \voiceOne d8 r cis r
  
  <<\new Voice { \voiceOne d8 }
    \new Voice { \voiceThree 
      \once \override NoteColumn.force-hshift = #1 
      a d,16 e }>>
  \oneVoice d8 d'
  a16 g f a g f e g
  f8 r <<\new Voice { \voiceOne a } \new Voice { \voiceTwo fis }>> r
  d'16 c bes d c bes a c
  
  bes32 c d c bes a g fis g a bes a g f e d
  e f g f e d cis b \override Beam.damping = #+inf.0 \voiceOne cis d e d cis b \cstl a g 
  \revert Beam.damping
  \cstr r8 d''[ d cis]
  d2-\fermata \bar "|."
}

middle = \relative c'' {
  \global
  
  r8 a16 gis a8 a,
  d[ f e g!]
  f4 r16 f e d 
  c! e a8 ~ a16 a8 gis16
  a8 e16 d e8 fis
  
  g! d16 cis d8 e
  f!4 \cstl \voiceOne r8 gis,
  e[ a gis b]
  a \cstr \voiceTwo a'16 gis a8 e
  fis4 r8 <d fis>
  
  <d g!> g16 fis g8 d
  e4 r8 <c e>
  <c f!> r \cstl \voiceOne r a
  g4 r8 g16 f
  g4 s8 e ~
  
  e e a4 ~
  a \cstr \voiceTwo d
  cis8 e16[ d] e8 fis
  g d16 c! d8 e
  
  f! f16 e f8 g
  a e16 d e8 fis
  g g16 fis g8 a
  b fis16 e fis8 gis
  a4 a
  
  gis g
  f! bes!
  a aes
  g c
  b bes
  
  
  a8[ d cis c]
  b r r4
  r8 c[ b bes]
  a r r4
  \oneVoice d16 c d bes a g fis \once \tieDown g ~ 
  
  \voiceTwo g4 s
  s2
  s4. \cstl \voiceOne bes,8
  a4 r
  s2
  
  s2
  c!8 c16 bes c8 a
  bes4 r8 bes
  a[ cis d bes]
  s2
  
  <f a>8 s
  \repeat unfold 2 {
    \cstr \voiceTwo cis'16[ s d] s
    \cstl \voiceOne a8[ bes a g]
    f s } s4
  
  g8 s4.
  a8 s \cstr \voiceTwo cis16[ s d] s
  s2
  s4 \repeat unfold 2 {
    \cstr \voiceTwo gis16[ s a] s
    \cstl \voiceOne e8[ f e d]
    c s } s4
  d8 s4.
  e8 s \cstr \voiceTwo gis16[ s a] s
  
  
  \cstl \voiceOne f8[ e d c]
  b r e16\rest d c b
  c8 f f e
  e \cstr \voiceTwo a16 gis a8 \cstl \voiceOne a,
  \cstr \voiceTwo d[ f e g!]
  
  f4 r8 d ~
  d e16 d e c d b
  c4 r8 a ~
  a16 b c a b a gis a
  gis4 r8 gis
  
  a r r16 a b c
  b4 \cstl \voiceOne r8 a ~
  a a4 gis8
  a8 c16 b c8 d 
  e b16 a b8 cis
  d8 a d4
  
  cis c ~
  c8 b16 a b8 c
  d a16 g a8 b
  c g c4
  b bes ~
  bes8 a16 g a4 ~
  
  a8 r c r
  c r \cstr \voiceTwo e r
  f s s4
  r8 bes16[ a bes8 f]
  g s s4
  
  r8 c16[ b c8 c,]
  f[ a g bes!]
  a4 r
  

  s2*9
  r8 c,16 bes c f ees f
  bes,4 r8 bes
  bes4 r8 bes
  \cstl \voiceOne a8 g16 f g bes8.
  a4 r
  
  <g b>8 r <g cis> r
  <a d> r <g cis> r
  d' \cstr \voiceTwo f16 e f8 e
  g4 r8 g
  bes! a16 g a f g e
  
  f8 r r <f a> 
  g16 a bes a g f e d 
  s2
  r16 d' bes a bes8 f
  g16 bes g f g4 ~
  g8 f16 e f4
  
  s2 s2 \cstl \voiceOne
  r16 g, cis b cis4 ~
  cis8 cis16 b cis4
  d8 r r4
  
  s2*4
  s4 s8 \cstr \voiceTwo g8
  a a,16 bes a8 a'
  
  
  d,[ bes c a]
  bes g16 a g8 g'
  c,[ a bes g]
  a8 r r a' ~
  a g4 f8 ~

  f f16 e f8\noBeam f 
  f4 s
  s2 s2
  \cstl \voiceOne r8 gis,[ a \cstr \voiceTwo f']
  
  <e a>4 gis
  s4 r16 d c b
  c e a8 ~ a16 a8 gis16
  a f e d e d c b
  c8. c16 b8 d
  
  e16 d c b c b a gis
  a8. a16 bes!8. bes16
  a8 a'16[ gis a8 a,]
  d[ f e g]
  f d16 cis d8 d
  
  d4 r8 b
  c c16 b c8 c
  c r r a
  bes r d4
  ees e
  
  f8 f16 g f8 ees
  d g16 a g8 f
  ees4 e
  f fis
  r8 g16 a g8 f!
  
  
  e! a16 bes! a8 g
  f g a4 ~
  a8[ a g f]
  e f g4 ~
  g8[ g f e]
  
  d e f4 ~
  f8 e16 f e8 r
  \cstl \voiceOne c8. c16 bes a g8
  f16 c' \cstr \voiceTwo d f ees d ees8
  d e! f4
  
  e8 r r4
  s2*5
  r4 r8 e8 ~
  e f!16 e d4
  e8 r r gis!
  s2
  
  d8[ b c! a]
  b4. a8
  gis a b r
  s2*9
  
  r8 a'[ f e]
  e c16[ d] c8 c'
  fis,[ d ees c]
  
  bes!16 a g a s4
  e'!8[ c d bes]
  a s s4
  \cstl \voiceOne a16 bes! a f g a g e
  f g f d a' bes a f
  
  s2
  s4. f8 ~
  f bes4 bes8 ~
  bes bes4 c8
  \cstr \voiceTwo <c f> r r f
  
  f r r f
  f ees16 d ees c f8 ~
  f[ f <ees bes'> <f bes>]
  s2*17
  
  
  d8 r r a
  d r d r
  d r r d
  r16 ees d c r f! ees d
  
  <bes ees>8 r s4
  s2*4
  s4. \cstl \voiceOne c8
  bes4 a
  g g
  fis f
  
  e!8 e16 d e8 fis
  g d16 c d8 e
  f4 f
  e ees
  
  d8 d16 c d8 ees
  f! c16 bes c8 d
  ees4 r
  R2
  r8 bes'16 c bes8 aes
  
  
  g8 c16 d c8 bes!
  a!4 a
  bes b
  c8 c16 d c8 bes!
  a d16 ees d8 c
  
  bes8 r r4
  r8. c16 d8[ r16 aes]
  g8 r r4
  r8. bes16 c8[ r16 ges]
  f8 r r4
  
  s2
  s4 \cstr \voiceTwo r8 e' ~
  e f4 e8
  f r r4
  <fis a c>8 r <d fis! a> r
  
  <d g> r d r
  d cis g'4 ~
  g8[ \cstl \voiceOne g, e cis!]
  d4 ~ d8 g
  
  a4 r8 cis 
  d4 r8 d
  d r r c
  c r r bes
  bes r r a
  
  
  a r r g
  g r s4
  s4 \cstr \voiceTwo r8 bes
  bes[ ees ees g]
  g4 f8 e!16 d
  
  e4. g8
  f16 bes! a g r a g fis
  g4 fis
  d8 c c bes
  bes d16 c bes8 a
  
  s2
  r8 <cis! g'>[ <d f> e]
  d4 cis
  s2
  <f a>8 r <e a> r
  
  d s4.
  s2
  \cstl \voiceOne d16 c! bes! d c bes a c
  bes8[ <g bes> <g a> <fis a>]
 
  g8 s4.
  s2
  \cstr \voiceTwo r8 <f' a>[ <e a> <e g a>]
  <d fis a>2
}
 
left = \relative c' {
  \global
  
  R2*2
  r8 d16 cis d8 d,
  a'[ c! b d]
  cis4 c
  
  b bes
  a16 g f e \voiceTwo f d c! b
  c4 e \oneVoice
  a8 a, r16 a' bes! c
  d8 d, r16 c bes! a
  
  g8 g' r16 g a bes
  c8 c, r16 bes a g
  f8 f'16 e \voiceTwo f4 ~ 
  f8 e16 d e b e d 
  e4
  \oneVoice r16 \voiceTwo f e d
  
  cis4. cis8
  d c! bes4
  \oneVoice a8 r r e'16 dis
  e8 fis g d!16 cis
  
  d8 f! bes16 a bes8
  a a, a'16 gis a8
  e g! c16 b c8
  b b, b'16 a b8
  a g! f!4
  
  e8 e, e'16 d e8
  d4 r8 d'16 cis
  d8 e f c!16 b
  c8 e \clef treble a16 g a8
  g g, g'16 f! g8
  
  
  f \clef bass d16[ cis] d8 d,
  g[ g, a b]
  c c'16[ b] c8 c,
  f[ f, g a] 
  bes![ bes' ees, d']
  
  a,[ a' d, c']
  g, g'16[ fis] g8 g,
  g'4 r8 \voiceTwo g ~
  g f!16 e! f8 d
  \once \stemUp a a'16[ gis] a8 a,
  
  d[ fis e g]
  fis[ a d, fis]
  g g, r g' ~
  g f!16 e f8 g
  a[ g a a,]
  
  d8 \oneVoice r r4
  \repeat unfold 2 {
    r8 g[ f e]
    d8 r r4 }
  
  e8 r r4
  f8 r r4
  gis8 r r gis
  \repeat unfold 2 {
    a8 r r4
    r8 d8[ c b] }
  a8 r r4
  b8 r r4
  c8 r r4
  

  \voiceTwo d8[ c b a]
  gis4 r
  \oneVoice r16 \voiceTwo g! f e d8 e
  a16 e c e a,8 a'
  \oneVoice r16 a g f g8 c,
  
  f, f'16 e f8 f,
  e b' e gis
  a a,16 b c8 cis
  d4 r8 f
  e4 r16 f e d
  
  c a b c \once \stemUp d4 ~ 
  d8 c16 b \voiceTwo c8 d
  e2
  a,4 r 
  R2
  r8 d16 c! bes! a bes8
  
  a8 a' a,16 g a8
  g g'16 f! e d e8
  d d, d'16 c d8
  c c, r16 b' c d 
  e f g a g f g c,
  f4 r16 g f e
  
  d8 r e r
  f r g \oneVoice r
  a a,16 g a8 f
  bes bes, r bes''
  b b,16 a b8 g
  
  c c, r4
  r8 d''16 c bes!8 c
  f, a16 g a8 f
  e a16 g f8 g
  c, c'16 b c8 c, 
  f16 g a f g a bes! g
  
  
  a bes c a bes c d bes
  c8 c, r g'
  a[ e f a]
  bes bes, r d
  g[ a bes g]
  
  e[ g e c]
  f ees16 d ees8 c
  d bes16 c d8 bes
  c2 ~
  \voiceTwo c4 c
  f8 f,16 e f a c f ~
  
  f8 r e r
  d r e r
  <<\new Voice { \voiceThree f4 } 
    \new Voice { \voiceFour 
      \once \override NoteColumn.force-hshift = #1 
      f4 }>>
  \oneVoice r8 
  
  <<\new Voice { \voiceTwo
      f8 ~ 
      f g16 f g e f d
      <e g>4 r8 a
      d,4 r8 d
      d g16 a bes8 g
      cis,4 r8 a } 
    \new Voice { \voiceOne
      s8 d'4 r8 d
      g a,16 b cis d e8
      r d16 c! d bes! c a
      bes4 r8 bes
      a4 r8 <cis,! e a>
  }>>
  
  <<{ a'8 d16 cis } \\ 
    {\once \override NoteColumn.force-hshift = #1 d,4 } \\ 
    { d4 } >> \oneVoice d'4 ~
  d ~ d16 cis a cis
  d4. c!16 bes
  
  a8[ c d, fis]
  g8 bes16 a g f! e d
  \voiceTwo e2 ~
  e8[ a g a]
  d,[ e f g]
  
  \oneVoice c,![ d e f]
  bes,![ d g bes,]
  a cis e g16 f
  \voiceOne g8[ e a, cis]
  <<\new Voice { \voiceOne d[ c! bes bes'] e,4 } 
    \new Voice { \voiceFour s4 bes a }>> 
  \oneVoice r4
  
  
  r8 d16[ c d8 d,]
  g bes16 a bes d bes g
  a bes c d e c d e
  f g a bes a g f e
  d c d e f e d c
  
  bes a bes c
  
  <<\new Voice { \voiceOne
      r8 <g' d'>
      c bes16 a bes8 g
      a8 r r4
    } \new Voice { \voiceTwo
      d,8 bes
      c4 c,
      f8 f'16 e f d b d
    } \new Voice { \voiceThree
      s4 a'8
  }>>
  
  \oneVoice gis,8[ b e, d']
  \voiceTwo c[ b c d]
  
  \oneVoice e[ d e e,]
  a4 r
  r8 f'16 e d8 e
  a a,16 b a8 a'
  e[ c d b]
  
  c4 r8 c
  cis16 a d8 ~ d16 d cis8
  d4 r8
  << \new Voice { \voiceOne
      a'!8 ~
      a[ d bes a]
      a r r c!
      b4 r8 g
      g r r bes!
      a r r f
      f r r4
    }\new Voice { \voiceTwo
      g8
      f[ bes g a]
      d, r r16 c! b a
      g8 r r16 f e d
      c8 r r16 bes'! a g
      f8 r r16 ees d c
      bes8 r r4
  }>> 
  \oneVoice R2
  
  r4 a''
  bes b
  c16 g a bes! c bes a g
  f a bes c d c bes a
  g d e! f! g f e d
  
  
  c e f g a g f e
  d8 d, r16 d' e f
  g8 g, r gis'
  a a, r16 a' b cis
  d8 d, r fis
  
  g g, r16 g' a b
  c b c d c bes a g
  \voiceTwo a g f8 ~ f8. e16
  f4 \oneVoice r8. fis16
  
  <<\new Voice { \voiceOne
      g4 ~ g ~
      g16 g a b c a b c
    } \new Voice { \voiceTwo
      g4. g,8
      c r r4 }>>
  
  d'16 e d c b a gis fis
  gis c b a gis fis e dis
  e8[ e, gis b]
  d[ f! b, d]
  gis, b e,16 e' fis gis
  
  <<\new Voice { \voiceOne
      r4 c ~
      c8 b a16 c b a
      b4 r8 <e, b'>
      r16 e a bes! r e, g a
      r a gis a ~ a c,! d e
    } \new Voice { \voiceTwo
      a16 gis a b c b a g
      f!2
      e4 r8 d
      c4 cis
      d a }>>
  
  f'16 g f e d c b a
  b c b a gis8._\prall fis32 gis
  a4 r16 a' g!8
  f16 e f8 ~ f16 f e8
  
  \voiceTwo d16 cis d8 ~ d16 d c8
  b[ a gis e]
  \oneVoice a[ g! f e]
  d8 d'16 cis d8 e
  f16 e d c! b c' b a
  
  
  gis a b c d e, gis! b
  c4 ~ c16 a gis b
  <<\new Voice { \voiceOne r8 c[ d b] c } 
    \new Voice { \voiceTwo c,[ f d e]
      \stemUp a,4 ~ a16 g! fis e }
  >>
  d d' fis g a g a d,
  
  g8 g, ~ g16 f! e! d
  c c' e f g f g c,
  f e f g a s s8
  \voiceTwo cis,8[ a b cis]
  d[ a f d]
  
  \oneVoice f a d16 cis d8
  a4 r8 \voiceTwo a
  bes4 c d
  <<\new Voice { \voiceOne
      s4 f8 r r c'
      d r r d
      c r r c
    } \new Voice { \voiceTwo
      ees,4 ~
      ees8 ees16 d ees8 ees,
      d d'16 c d8 d,
      a'8 r r a' }>>
  
  \oneVoice bes16 a a g g f f ees
  ees d d c d f e g
  f8 f, r f'
  
  g8. g16 bes ees8.
  r4 r16 ees bes g
  a8. a16 c f8.
  r4 r16 f c a
  bes8. bes16 d f8.
  
  r4 r16 d bes a
  b8. b16 d f8.
  r4 r16 d c b
  c8. c16 ees g8.
  r4 r8 aes,16 g
  
  
  fis e! fis a! r4
  r r8 a16 fis 
  g fis g bes r8. f!16
  ees d ees g r8. d16
  
  c g' c d ees r r8
  <<\new Voice { \voiceOne a,! r r fis }
    \new Voice { \voiceTwo c r r c }>>
  bes16 bes' a g r a fis d
  r a' g fis \stemDown g8 g, \stemNeutral
  c[ ees d f!]
  
  ees r r16 bes' c d
  ees,8[ c' d, bes']
  c, a'! r16 fis g a
  bes,8 bes' r16 g a! bes
  
  a,8 a' r16 bes a g
  fis d e! fis \voiceTwo g8 c,
  d4 d,
  g r
  R2
  
  r8 a ~ a16 g a d,
  g fis g8 ~ g16 f! g c,
  f e f8 r16 f e d
  a' bes c8 r16 ees, d c
  
  g' a bes8 r16 g fis g
  d ees f!8 r16 f e! f
  c g' c8 g4
  aes a
  bes16 c d8 r16 g, c b
  
  
  c d ees8 r16 a,! d cis
  d d, d'8 ~ d16 ees c! d
  bes d ees8 ~ ees16 f d ees
  c8 c, r16 a' bes! c
  d ees d c bes c bes a
  
  g g' fis g g, bes a c
  b g c8 ~ c16 a b8
  c16 d ees d c bes! a! g
  a f bes8 ~ bes16 g a8
  bes16 c d c bes c aes bes
  
  \oneVoice g8[ ees' f, d']
  ees, g'16 f ees d c bes
  a!8[ d g, c]
  f,16 g a g f8 ees
  d r r16 d' e! fis
  
  g a g e f! g f d
  e4 ~ e16 f e d
  \voiceTwo cis4. a8
  d c! bes4
  
  a r8 a'
  a4 r16 b, a gis
  a e' f g a bes! a g
  fis d e fis g a g f
  e c d e f g f e
  
  d bes c d e f e d
  cis a b cis d e f d
  g8 g,16 fis g8 r
  \oneVoice r g16[ fis g8] r
  r4 a32 g a16 r8
  
  \stemUp r a16[ bes! a8 a']
  \stemNeutral d,[( bes) c( a])
  bes[ g a d,]
  g16 g' fis g g, g' fis g
  g,4 r16 d' e f!
  
  g8 bes,16 a g8 f
  <<\new Voice { \voiceOne
      s8 g'[ a bes] a4 a <f a>4 }
    \new Voice { \voiceTwo 
      e,8[ e' f g] a[ g a a,] d d,16 e }
  >> d8 d'
  a16 g f a g f e g
  
  f4 ~ f16 g32 a b cis d e
  f8[ d' e, cis']
  \voiceTwo d,8 r r4
  r8 d[ d d]
  
  g, \oneVoice r8 r4
  s2
  f'8[ d a' a,]
  <d, d'>2_\fermata
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        \breaks
        \new Voice { \voiceOne \right }
        \new Voice { \voiceTwo \middle }
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
