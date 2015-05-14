\version "2.18.2"

\header {
  piece = "Presto"
}

global = {
  \key f \major
  \time 2/2
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
}

right = \relative c'' {
  \global
  
  f4 f,2 g8 a
  bes^\markup { \musicglyph #"scripts.segno" }  c d e f g a bes
  <<{ c4 <a c> <g c> <g bes>
      <f a>2 <e g> } \\
    { r4 f e c
      c2 c }>>
  
  <<{ a'2 r8 g e c
      f2 r8 ees c a
      d2 r8 c a f
      bes2 r8 bes g e } \\
    { r8 f' e d c2
      r8 d c bes a2
      r8 bes a g f2 ~ 
      f8 f e d e2 }>>
  
  c8( d e) bes'-. a( bes c) f-.
  e( f g) bes-. a( bes c) ees,-.
  d(e f) c'-. bes a g f
  e f g e c2
  
  f4 f,2 g8 a
  bes c d e f g a bes
  <<{ c4 <a c> <g c> <g bes>
      <f a>2 <e g> } \\
    { r4 f e c
      c2 c }>>

  <<{ bes'2 bes4 a
      g2 g4 a
      bes2 bes4 a
      g2 g4 a
      bes a g2 } \\
    { \repeat unfold 4 {
        r8 f e f r f4 f8 }
      r8 f4 f8 r f e d }>>
  
  <<{ c4 bes a2
      r4^\markup { \musicglyph #"scripts.coda" } c a g8 f
      f2 } \\
    { r8 g4 g8 r g f e
      f4 <c f> q <bes e>
      <a c>2 }>> r2
  
  r8 a'(-\markup { \italic "piano" } bes c bes a g f)
  ees' c d4 ~ d8 bes a bes
  e bes f' bes,g' bes, a g
  a c bes a bes a g a
  
  f4 a-\markup { "forte" } c a
  f bes8 c d4 f,
  g bes e c
  f8 e f4 ~ f8 c[-\markup { \italic "piano" } bes c]
  
  a' bes a g f e d c
  b g' b, a g d' e f
  g a g f e d c b
  a f' a, g f c' d e
  
  f g f e d c b a
  g f' g, f g f' a, f'
  b, f' b, a b f' c f
  d f d c d f c f
  
  b, f' b, a b f' a, f'
  g, f' g, f g f' a, f'
  b, f' b, a b f' c f
  d f d c b a g f
  
  e g f e f e d c
  bes' g a4 ~ 
  a8 f e f
  b f c' f, d' f, e d
  e g f e f e d e
  
  c4 e-\markup { \italic "forte" } g e
  c f8 g a4 c,
  d f b g
  c g g' f
  
  <<{ e1 ~ e8 g f e g f e f
      d1 ~ d8 f e d f e d e
      c1 ~ c8 e d c e d c d } \\
    { r8 c bes a bes a g a f4 r r2
      r8 a g f a g f g e4 r r2
      r8 g f e g f e f d4 r r2 }>>
  
  <<{ b'2. b4 c2 r4 e f2. d4 e2. fis4 g1 } \\
    { r4 d, g2 r4 g c2 ~ c4 b8 a b2 ~ b4 a8 g a4 c ~
      c8 e d c d c b a }>>
  g a b c d e f d
  e4 c,2 d8 e
  f g a b c d e f
  
  <<{ g4 <e g> <d g> <d f> <c e>2 <b d> } \\ 
    { r4 c b g g2 g }>>
  
  \repeat unfold 2 {
    <<{ f'2 f4 e d2 d4 e } \\
      { \repeat unfold 2 
        { r8 c b c r c4 c8 } }>> }
  
  <<{ f4 e d2 r8 d4 d8 r d c b 
      c4 <c g'> <c e> <b d>8 c <g c>2 } \\
    { r8 c4 c8 r c b a 
      g4 f e2 ~ e4 g g f e2 }>> r2
  
  g8-\markup { \italic "piano" } e c e g e bes' e,
  a f c f a f c' f,
  g e c e g e bes' e,
  a f c f a f bes f
  
  \repeat unfold 2 {
    c' a f a c a ees' a, 
    d bes f bes d bes f' bes, }
  
  \repeat unfold 2 {
    g' cis, bes cis g' cis, g' d
    g e a, e' g e g d }
  
  g cis, bes cis g' cis, g' d
  g f g e f e d e
  f g a4 a, cis
  d8 d[-\markup { \italic "forte" } c bes] a g f e

  d e f g a b cis d
  e f g e f e d e
  f d cis b cis d e cis
  d a g f g a bes a
  
  \repeat unfold 2 { 
    <<{ r4 f' e f r f g f } \\
      { s d cis d s d cis d } \\
      { bes1 a }>> }
  
  <<{ <cis e>4 d cis8 d e f
      g2 ~ g8 g f e
      f4 <d a'> <d f> << { e8 d } \new Voice { \voiceThree cis4 }>> 
      d2 r } \\
    { bes4 a g r
      r e' a,2 ~
      a4 a4 ~ a g ~
      g8 a g f g f e f }>>
  
  <<{ r8 d' c bes c bes a c
      bes2  b-\prallprall } \\
    { d,4 g2 fis4
      r8 g f e f e d f }>>
  
  <<{ r8 g' f e f e d f
      e4 f g2 ~
      g8 c bes a bes a g bes } \\
    { c,2. b4
      c d e2 ~
      e4 f2 e4 }>>

  <<{ a4 <g bes> <a c>2 ~ 
      q8 f ees d ees d c ees 
      d2 c bes4 } \\ 
    { f'2 ~ f ~ 
      f8 s bes,2 a4 ~
      a8 bes a g a g fis a g4 }>>
  
  bes,2 c8 d
  ees f g a bes c d ees
  f4 <<{ <d f> <c f> <c ees>
      <bes d>2 c2
      r8 d c bes c bes a c } \\
    { bes4 a f f2 <f a> ~ 
      a4 g2 fis4 }>>
  
  <<{ bes4 <e g> ~ <cis g'> <d f> ~
      f8 f e d e d cis e
      a,1 ~ a8 a g f g f e g
      cis,2 } \\ 
    { g'2 a g1 ~ g8 g f e f e d f
      \change Staff = "left" \voiceOne bes,1 ~ bes8 bes a g a g f e }>>
  
  \change Staff = "left" \voiceOne 
  f g a b cis \change Staff = "right" \oneVoice d e f
  g a b cis d e f g
  
  <<{ a4 <f a> <e a> <e g> <d f>2 e } \\
    { r4 d cis a a2 cis }>>
  
  f8-\markup { \italic "piano" } g f e d c b a
  g f' g, f g b c d
  e f e d c b a g
  f e' f, e f a b c
  d e d c b a gis fis
  
  <<{ r4 gis8 fis gis4 a
      b1 ~ b4 d8 c d4 f ~
      f e8 d e4 a ~
      a gis8 fis gis4 a
      b b8 a b4 c } \\ 
    { e,,1 ~ e4 e8 d e4 fis
      gis2. a4 b2 r4 a
      b e2 d8 c b4 r r2 }>>
  
  <<{ d1 ~ d2. } \\ { r4 gis,8 fis gis4 b e,2. }>> r4
  r8 e-\markup { \italic "forte" } fis gis a b c d
  <<{ e4 <c e> <b e> <b d> <a c>2 <gis b> } \\ 
    { r4 a gis e e2 e }>>
  
  <<{ d'2 d4 c b2 b4 c } \\
    { \repeat unfold 2 {
        r8 a gis a r a4 a8 } }>>
  
  <<{ r4 a' gis a
      e2. e4
      d c b2 } \\
    { d4 c b a
      gis2. a4
      r8 a4 a8 r a gis fis }>>
  
  <<{ r8 b4 b8 ~ b b a gis
      a4 <a c e> <a c> b8 a <e a>4 } \\
    { e d c2 ~ c4 e e <d gis> c }>>
  r4 r2
  r <<{ r8 f g a r c d e \oneVoice f g a bes } \\
    { \once \stemUp e,,2 ~ e1 } \\ { s2 bes'2 }>>
  
  <<{ c'4 <a c> <g c> <g bes>
      <f a>2 <e g> } \\
    { s4 f e c c2 c ~ c8 }>>
  
  a-\markup { \italic "piano" } f a c a ees' a,
  d bes f bes d bes f' bes,
  c a f a c a ees' a,
  d bes f bes d2 ~ 
  
  d8 b g b d b f' b,
  e c g c e c g' c,
  d b g b d b f' b,
  e c g c e c f c 
  
  g' e c e g e bes' e,
  a f c f a f c' f,
  g e c e g e bes' e,
  a f c a f2 ~
  
  f8 a( bes c bes a g f)
  ees' c d4 ~ d8 bes a bes
  e bes f' bes, g' bes, a g
  a c bes a bes a g a
  
  f4 a-\markup { \italic "forte" } c a 
  f bes8 c d4 f,
  g bes e c
  f8 a, g f d' c bes c
  
  <<{ a1 ~ a8 c bes a c bes a bes } \\
    { r8 f ees d ees d c d bes4 r r2 }>>
  <<{ g'1 ~ g8 bes a g bes a g a } \\
    { r8 d,c bes d c bes c a4 r r2 }>>
  <<{ f'1 ~ f8 a g f a g f g } \\
    { r8 c, bes a c bes a bes g4 r r2 }>>
  
  <<{ e'2. e4 f2 r4 a
      bes2. g4 a2. b4 c1 } \\
    { r4 g, c bes a c f2 ~ 
      f4 e8 d e2 ~ e4 d8 c d4 f ~ 
      f8 a g f g f e d }>>
  
  c d e f g a bes g
  a c f,4 ~ f8 f g a
  bes^\markup { \bold "D.C" } c d e f g a bes
  \bar "||" 
  
  <<{ c,4\rest^\markup { \musicglyph #"scripts.coda" } <f, a c> <f a> g8 f f1-\fermata } \\
    { f4 c c bes <a c>1 }>>
  \bar "|."
}

left = \relative c' {
  \global
  
  <<{ a2-\markup { \italic "forte" } c } \\ { f, e }>>
  <<{ f4 bes a g f8 r r4 r2 } \\
    { d2 c4 bes 
      a8 f g a bes c d e }>>
  
  f g a bes c d e c
  f4 f, e a
  d d, c f
  bes bes, a d
  
  <<{ g, g'8 a g4 f
      e g f a
      g c, f a, }
    \new Staff \with { \remove "Time_signature_engraver" }
    { \clef bass \key f \major
      g'4^\markup { \italic "2e fois (fin)" } g,8 a g4 f
      e g f a
      g e' f a,
    }>>
  
  bes d g, bes
  c8 d e f g a bes g
  <<{ a2 c } \\ { f, e }>>
  <<{ f4 bes a g f8 r r4 r2 } \\
    { d2 c4 bes 
      a8 f g a bes c d e }>>
  f g a bes c d e c
  
  d4 d, d' c 
  bes bes, bes' c
  d d, d' c
  bes bes, bes' c 
  
  d c bes g
  e c f c
  a8 g a bes c4 c,
  f4 g8 a bes c d e
  
  f4-\markup { \italic "forte" } a c a
  f bes8 c d4 f,
  g bes e c
  f c a c
  
  f,8 a[(-\markup { \italic "piano"} bes c] bes a g f)
  ees' c d4 ~ d8 bes a bes
  e bes f' bes, g' bes, a g
  a c bes a bes a g a
  
  f4 a-\markup { \italic "forte" } c f ~
  f8 e d c b a g f
  e4 g c e ~ 
  e8 d c b a g f e
  
  d4 f a c ~ 
  c b8 a b4 c
  d g,8 f g4 a
  \repeat unfold 2 { 
    b b8 a b4 c
    d g,8 f g4 a }
  
  b8 d b a g f e d
  c4 e g e
  c f8 g a4 c,
  d f b g
  c g e g
  
  c,8 e[(-\markup { \italic "piano" } f g] f e d c)
  bes' g a4 ~ a8 f e f
  b f c' f, d' f, e d
  e g f e f e d e
  
  c4 e-\markup { \italic "forte" } g bes
  a c a f
  b, d f a
  g b g e
  a, c e g
  f a f d
  
  g,8-. g'( f e f e d e)
  g,-. f'( e d e d c d)
  g,-. e'( d c d c b c)
  g-. d'( c b c b a b)
  g-. c( b a b a g a)
  
  b c d e f g a b
  c4 r b r
  <<{ r f' e d c8 r r4 r2 } \\
    { a2 g4 f
      e8 c, d e f g a b }>>
  c d e f g a b g
  
  \repeat unfold 2 {
    a4 a, a' g
    f f, f' g }
  a g f d
  b g c8 d e f
  g f e f g4 g,
  
  c,8 c'[-\markup { \italic "piano" } d e] f g a b
  c4 g e c
  c' a f c
  c' g e c
  f8 c a c f,4 r
  
  f'4 c a f
  f' d bes f
  f' c a f
  bes8 f d f bes,4 r
  
  \repeat unfold 2 {
    e'4 g8 f e4 d
    cis8 d cis b a b cis d }
  
  e f g a bes4 d,
  cis8 a b cis d e f g
  a g f g a4 a,
  d,8 d'[-\markup { \italic "forte" } e f] g a b cis
  
  d4 d,,2 e8 f
  g a b cis d e f g 
  a4-. a-. a-. g-.
  f2-\upprall e
  
  \repeat unfold 2 {
    g8 d cis d f d f d
    e d cis d e d f d }
  g d f d e d cis b
  
  a e' g, e' f, e' d cis
  d a f d a'4 a,
  d d''2 c4
  
  bes2 a
  <<{ s1 e'2 d c8 r r4 } \\
    { g1 ~ g r8 c, bes a }>> bes a g bes
  
  a4 d g, c
  f,8 \change Staff = "right" \voiceTwo f'' ees d ees d c ees 
  \change Staff = "left" \oneVoice d2 c 
  bes4 ees a, <<{ \once \stemDown d ~ d8 } \\ 
    {s4  g,8 bes aes g aes g f aes }>>
  
  <<{ r4 ees' d c 
      bes8 r r4 r2 } \\
    { g2 f4 ees 
      d8 bes c d ees f g a}>>
  
  bes c d ees f ees d f
  bes,2 a
  r8 g f e f e d f
  bes,4 d g e
  
  cis a d f,
  g bes e, g
  \voiceTwo a e cis a
  d r r2 \oneVoice
  
  r8 f g a b cis d e
  f d e f g a b cis
  \clef treble d e f g a f g a
  d,4 a' f d
  
  b d b g
  c g' e c
  \clef bass a c a f
  b f' d b
  
  gis8 d' e, d e d' fis, d'
  gis, d' gis, fis gis d' a d
  b d b a b d a d
  gis, d' gis, fis gis d' f, d'
  
  e, d' e, d e d' fis, d'
  gis, d' gis, fis gis d' a d
  b d b a b d a d
  gis, d' e, fis gis a b c
  
  d c b a gis fis e d 
  c a b c d e fis gis
  a b c d e b gis e
  f f' e f f, f' e, e'
  d, f e f d d' e, e'
  
  <<{ r8 a, gis a d a c a
      b a gis a b a c a
      d4 r r2 } \\ 
    { f,2. e4 d2. c4 
      f e d b }>>
  
  gis e a8 b c d
  e d c d e4 e,
  a,8 a' b c d e f g
  
  <<{ r8 b c d } \\
    { s4 c ~ \once \tieUp c2 ~ \once \stemUp c bes } \\
    { a1 g }>>
  
  <f a f'>8 f, g a bes c d e
  f g a bes c d e c
  f4 c a f
  f' d bes f
  
  f ' c a f 
  bes2 ~ bes8 c bes a
  g4 d b g
  g' e c g
  g' d b g
  
  c8 c' b a g f e d
  c4 g e c
  c' a f c
  c' g e c
  
  f2 ~ f8 f g a
  bes c d e f g a bes
  c a f a bes d c d
  g,4 bes e c
  f c a c
  
  f,8 a,[-\markup { \italic "piano" } bes c] bes a g f
  ees' c d4 ~ d8 bes a bes
  e bes f' bes, g' bes, a g
  a c bes a bes a g a
  
  f4 a-\markup { \italic "forte " } c ees
  d f d bes
  e, g bes d
  c e c a
  d, f a c
  bes d bes g

  c,8-. c'( bes a bes a g a)
  c,-. bes'( a g a g f g)
  c,-. a'( g f g f e f)
  c-. g'( f e f e d e)
  c-. f( e d e d c d)
  
  e f g a bes c d e
  <<{ r8 g a bes c2 } \\
    { f,2. e4 } \new Voice
    { \voiceTwo s4 a ~ \once \stemUp a2 }>>
  <<{ f4 bes a g } \\ { d2 c4 bes }>>
  
  \bar "||"
  <<{ bes8 a g f c'2 } \\ { s2 r4 \once \stemUp c, }>> 
  <f c'>1_\fermata 
  \bar "|."
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
