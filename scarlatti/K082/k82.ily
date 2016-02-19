\version "2.18.2"

\header {
  title = "K82"
  tagline = ##f
}

global = {
  \key f \major
  \time 3/8
}

right = \relative c' {
  \global
  
  f8 f f
  a a a
  c c c
  f,16 f' e f c f
  d f c f bes, f'
  c f bes, f' a, f'
  
  bes, f' a, f' g, f'
  a, f' g, f' f, f'
  bes,8 g c
  f,16 g a8 b
  c4.
  r8 c e
  d g d
  
  e4 g8
  c b a
  b a g
  a g f
  g f e
  d c b
  c bes4-\trill
  
  a8 f16 g a bes
  c8 f, f'
  e c <e g> 
  <f a>4 f8
  f4.-\trill ~
  f4. ~ f4. ~ f4.
  
  <bes, g'>8 <a f'> <g e'>
  <<{ f' c f } \\ { a,4 a8 }>>
  <g e'> <c e> <e g>
  r <g, g'> <c e>
  <b d> <g g'> <b d>
  <c e>4 g'8
  
  \repeat unfold 3 { c,4.-\trill }
  c8 <b d> <c e>
  <f, d'> <e c'> <d b'>
  <<{ c'4 bes8 } \\ { e, f g }>>
  
  a16 f' e f c f
  d f c f bes, f'
  c4 c8
  f4.-\trill ~
  f4.-\trill
  <g bes>8 <f a> <e g>
  
  <f a> <e g> <d f>
  <e g> <d f> <cis e>
  <d f>4.
  r8 <a a'> <d f>
  <cis e> <a a'> <cis e>
  <d f>4 a'8
  d,4 bes'8
  
  cis,4 a'8
  bes a g
  a g f
  <e g> <d f> <cis e>
  <d f>4.
  q
  
  <c e>
  q-\trill
  <b d>
  q
  <a c>
  r8 <e e'> <a c>
  <gis b> <e e'> <gis b>
  
  <a c>4 e'8
  a,4 f'8
  gis,4 e'8
  f e d
  e d c
  <b d> <a c> <gis b>
  
  <<{ c8 d e } \\ { a,16 e b' e, c' e, }>>
  <d' f>4.
  <<{ b8 c d } \\ { g,16 d a' d, b' d, }>>
  <c' e>8 <d f> <e g>
  <<{ a8 g f 
      g f e
      f e d } \\ 
    { f16 a, e' a, d' a,
      e' g, d' g, c g
      d' g, c g b g }>>
  
  <c e>4.
  r8 <g g'> <c e>
  <b d> <g g'> <b d>
  <c e>4 g'8
  c,4.-\trill ~
  c ~ c
  
  c8 <b d> <c e>
  <<{ f e d
      e d c
      d c b } \\
    { d16 a c a b g
      c g b g a f
      b f a f gis e }>>
  <a c>4.
  
  <<{ c'8 bes a } \\ { a16 d, g d fis d }>>
  <g bes>4.
  <<{ bes8 a g } \\ { g16 c, f c e c }>>
  <f a>4.
  <<{ a8 g f } \\ { f16 bes, e bes d bes }>>
  <e g>4.
  
  <<{ g8 f r } \\ { e16 a, d a cis a }>>
  <d f>4.
  r8 <a a'> <d f>
  <cis e> <a a'> <cis e>
  <d fis> d a'
  g, g g
  bes bes bes
  
  d d d
  g,16 g' fis g d g
  ees g d g c, g'
  bes, a g a bes c
  d8 g, g'
  fis16 e d c bes a
  bes4 d8
  
  g f ees
  d fis g
  ees d c
  d c bes
  a16 g a bes c a
  
  <<{ bes8 bes bes a a a
      bes bes bes a a a 
      b c d } \\
    { g,16 d g d g d
      fis d fis d fis d
      g d g d g d
      fis d fis d fis d 
      g d a' d, b' d, }>>
  
  <<{ ees'8 ees ees d d d
      ees ees ees d d d
      e f g } \\ 
    { c,16 g c g c g
      b g b g b g
      c g c g c g
      b g b g b g
      c g d' g, e' g, }>>
  
  <<{ a'8 a a g g g
      a a a g g g } \\
    { f16 c f c f c
      e c e c e c
      f c f c f c
      e c e c e c }>>
  
  <<{ a'4. } \\ { f8 c f }>>
  d f bes
  a c, f
  d fis g
  c, g'a
  
  bes, <a cis> <g d'>
  <<{ cis d e f f f e e e f f f e e e } \\
    { a,16 e b' g c g
      d' a d a d a
      cis a cis a cis a
      d a d a d a
      cis a cis a cis a }>>
  
  <<{ fis'8 g a bes bes bes a a a 
      bes bes bes a a a } \\
    { d,16 a e' a, fis' a, 
      g' d g d g d
      fis d fis d fis d
      g d g d g d
      fis d fis d fis d }>>
  
  \repeat unfold 3 { bes' d, }
  \repeat unfold 3 { bes' c, }
  \repeat unfold 3 { a' c, }
  \repeat unfold 3 { a' bes, }
  \repeat unfold 3 { g' bes, }
  \repeat unfold 3 { g' a, }
  \repeat unfold 3 { f' a, }
  
  \repeat unfold 3 { f' g, }
  \repeat unfold 3 { ees' g, }
  \repeat unfold 3 { ees' f, }
  \repeat unfold 3 { d' f, }
  \repeat unfold 3 { e' g, }
  \repeat unfold 3 { f' bes, }
  \repeat unfold 3 { g' c, }
  
  a'8 c, f
  r <c c'> <f a>
  <e g> <c c'> <e g>
  <f a>4 f8
  f4.-\trill ~ f ~ f
  f,-\trill ~ f-\trill ~ f-\trill ~ f
  f8 g a
  
  bes16 c, a' c, g' c,
  a' f bes f c' f,
  d' f, e' f, f' f,
  e' c f c g' c,
  \repeat unfold 2 {
    <<{ a'8 a a g g g } \\ 
      { f16 c f c f c e c e c e c }>>
  }
  
  a'8 bes c
  d, e f
  <<{ e f g a bes a g f g a bes a } \\
    { c,16 g d' g, e' g,
      f' c g' c, f c
      e c d bes e c
      f c g' c, f c }>>
  
  \repeat unfold 2 { <<{ g'8 c a } \\ { e16 c e c f c }>> }
  <<{ g'8 s g } \\ { e16 c f c e c }>>
  \repeat unfold 3 { <<{ a'8 bes g } \\ { f16 c g' c, e c }>> }

  <<{ a'8 } \\ { f16 c f c a c }>>
  f,8 r r
  f a c
  f4. \bar "|."
}
 
left = \relative c' {
  \global
  
  R4.*10 \clef treble
  c8 c c
  e e e
  g g g
  
  c,16 c' b c g c
  a c g c f, c'
  g c f, c' e, c'
  f, c' e, c' d, c'
  e, c' d, c' c, c'
  f,8 d g
  c, d e
  
  \clef bass
  <f,, f'> q q
  a' a a
  c c c
  f,16 f' e f c f
  d f c f bes, f'
  c f bes, f' a, f'
  bes, f' a, f' g, f'
  
  a, f' g, f' f, f'
  bes,8 g c
  f,16 g a8 b
  c, c c
  e e e
  g g g
  c,16 c' b c g c
  
  a c g c f, c'
  g c f, c' e, c'
  f, c' e, c' d, c'
  e, c' d, c' c, c'
  f,8 d g
  c,16 c' d, c' e, c'
  
  <f,, f'>8 <g g'> <a a'>
  bes'8 a g
  a16 f' e f c f
  d f c f bes, f'
  c f bes, f' a, f'
  g, f' bes, f' c f
  
  f, f' a, f' bes, f'
  e, e' g, e' a, e'
  d,8 d d
  f f f
  a a a
  d,16 d' cis d a d
  bes d a d g, d'
  
  a d g, d' f, d'
  g, d' f, d' e, d'
  f, d' e, d' d, d'
  g,8 e a
  d,16 d' a d d, d'
  g, d' b d g, d'
  
  c, c' e, c' c, c'
  f, c' a c f, c'
  b, b' d, b' b, b'
  e, b' gis b e, b'
  a,8 a a
  c c c
  e e e
  
  a,16 a' gis a e a
  f a e a d, a'
  e a d, a' c, a'
  d, a' c, a' b, a'
  c, a' b, a' a, a'
  d,8 b e
  
  <a, a'> <b b'> <c c'>
  d16 d' e, d' f, d'
  <g,, g'>8 <a a'> <b b'>
  c16 c' d, c' e, c'
  <f,, f'>4.
  <e e'>4 <a a'>8
  
  <d, d'>4 <g g'>8
  c c c
  e e e
  g g g
  c,16 c' b c g c
  a c g c f, c'
  g c f, c' e, c'
  
  f, c' e, c' d, c'
  e, c' d, c' c, c'
  f,8 d g
  e c f
  d b e
  a,16 a' b, a' c, a'
  
  d,8 d d
  g,16 g' a, g' bes, g'
  c,8 c c
  f,16 f' g, f' a, f'
  bes,8 bes bes
  e,16 e' f, e' g, e'
  
  a,8 a a
  d, d d
  f f f
  a a a
  d16 cis d e fis d
  ees g d g c, g'
  bes, g' a, g' g, g'
  
  d8 fis d
  <g, g'> <a a'> <bes bes'>
  <c c'> <bes bes'> <a a'>
  <g g'> q q
  <bes bes'> q q
  <d d'> q q
  g16 g' fis g d g
  
  ees g d g c, g'
  d g c, g' bes, g'
  c, g' bes, g' a, g'
  bes, g' a, g' g, g'
  c,8 a d
  g,, bes g
  
  d' fis d
  g bes g
  d fis d
  g, a b
  c ees c
  g' b g
  
  c, ees c
  g' b g
  c, d e
  f a f
  c e c
  f a f
  
  c e c
  f,16 f' a, f' f, f'
  bes, bes' d, bes' bes, bes'
  f, f' a, f' f, f'
  bes, bes' a, a' g, g'
  a, a' g, g' fis, fis'
  
  g, g' a, a' bes, bes'
  a8 b cis
  d, f d
  a' cis a
  d, f d
  a' cis a
  
  d, e fis
  g bes g
  d fis d
  g bes g
  d fis d
  g bes g
  
  c, ees c
  f a f
  bes, d bes
  e g e
  a, cis a
  d f d
  
  g, b g
  c ees c
  f, a f
  bes d bes
  c e c 
  d f d
  
  e c e
  f f f
  a a a
  c c c
  f,16 f' e f c f
  d f c f bes, f'
  c f bes, f' a, f'
  
  bes, f' a, f' g, f'
  r f, e f c f
  d f c f bes, f'
  c f bes, f' a, f'
  bes, f' a, f' g, f'
  a, f' g, f' f, f'
  
  g,8 bes c
  f, g a
  bes c d
  c d e
  f a f
  c e c
  
  f a f
  c e c
  f,16 f' g, f' a, f'
  bes, f' c f d f
  \repeat unfold 6 { c4. }
  e 
  \repeat unfold 3 { f8 bes, c }
  
  f,4.
  r16 f' a c f c
  f, a c, f a, c
  f,4. \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        %\breaks
        \right
      >>
    }
    \new Staff = "left" { 
      <<
        %\breaks
        \clef bass \left 
      >>
    }
  >>
  \layout { indent = 0 }
}
