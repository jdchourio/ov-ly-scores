\version "2.18.2"

\header {
  title = "K351"
  %meter = "Andante"
  tagline = ##f
}

global = {
  \key bes \major
  \time 2/2
}

right = \relative c'' {
  \global

  r4^"Andante" f f d
  f \appoggiatura a16 \tuplet 3/2 { g8 f ees } d4 c
  d d d bes
  d \appoggiatura f16 ees8*2/3 d c bes4 a
  
  bes d8*2/3 bes f' f,4 ees-\prall
  d d'8*2/3 bes f' f,4 ees-\parenthesize-\prall
  d bes'8*2/3 a d c4 bes-\prall
  a bes8*2/3 a d c4 bes-\parenthesize-\prall

  \repeat unfold 2 {
    bes bes' c, ~ c8*2/3 d ees
    d[ ees f] ees[ d c] bes4 a-\prall }
  \bar "||" \time 3/8
  
  bes8^"Allegrissimo" f bes
  bes a c
  
  c bes d
  d c ees
  d f bes,
  bes a c
  d bes d
  d c ees
  d4 f8
  f c ees
  
  d4 f8
  f c ees
  d4 bes'8
  bes c, a'
  a bes, g'
  g f ees
  d4 f8
  f e g
  
  g f a
  a g bes
  a4 c8
  c g bes
  a4 c8
  c g bes
  a16 g f e d c
  
  d c bes a g f
  e8 d' bes ~
  bes g' g,
  a d bes ~
  bes g' g,
  a4 f'8
  f-\prall e f
  
  c' bes a
  g16 bes a g f e
  f4 f8
  f-\prall e f
  c' bes a
  g16 bes a g f e
  
  f4^"[Andante]" f f d
  f \appoggiatura a16 \tuplet 3/2 { g8 f ees } d4 c
  d d d bes
  d \appoggiatura f16 ees8*2/3 d c bes4 a
  
  bes d8*2/3 bes f' f,4 ees-\parenthesize\prall
  d d'8*2/3 bes f' f,4 ees-\parenthesize-\prall
  d bes'8*2/3 a d c4 bes-\parenthesize\prall
  a bes8*2/3 a d c4 bes-\parenthesize-\prall

  \repeat unfold 2 {
    bes bes' c, ~ c8*2/3 d ees
    d[ ees f] ees[ d c] bes4 a-\parenthesize\prall }
  \bar "||" \time 3/8
  
  bes8^"[Allegrissimo]" f bes
  \appoggiatura c16 bes8 a c
  \appoggiatura d16 c8 bes d
  \appoggiatura ees16 d8 c ees
  
  d4 ees8
  \appoggiatura f16 ees8 d f
  \appoggiatura g16 f8 ees g
  \appoggiatura \parenthesize aes16 g8 f aes
  aes g c,
  \appoggiatura d16 c8 b d
  \appoggiatura \parenthesize ees16 d8 c ees
  
  \appoggiatura f16 ees8 d f
  \repeat unfold 2 { ees4 g8 g d f }
  ees4 g8
  \appoggiatura a16 g8 fis a
  \appoggiatura \parenthesize bes16 a8 g bes
  
  \appoggiatura \parenthesize c16 bes8 a c
  \repeat unfold 2 { bes4 d8 d a c }
  bes d bes ~
  bes16 a g f ees d
  c8 c' a ~
  
  a16 g fis e d c
  bes4 g'8
  g c, g'
  g bes, g'
  g a, g'
  g g, g' ~
  g16 f e d cis g'
  
  f8 a f ~
  f16 ees d c b f'
  ees8 g ees ~
  ees16 d c bes a ees'
  d4 f8
  f c ees
  d4 f8
  
  f c ees
  \repeat unfold 2 { d g ees ~ ees c' c, }
  d d'16 c bes a
  g f ees d c bes
  
  a8 bes c 
  d ees d
  c bes c
  d ees d
  \repeat unfold 2 { c f a, bes-\prall a bes }
  \bar "||" \time 2/2
  
  c4^"[Andante]" f f d
  f \appoggiatura a16 \tuplet 3/2 { g8 f ees } d4 c
  d d d bes
  d \appoggiatura f16 ees8*2/3 d c bes4 a
  
  bes d8*2/3 bes f' f,4 ees-\prall
  d d'8*2/3 bes f' f,4 ees-\parenthesize-\prall
  d bes'8*2/3 a d c4 bes-\prall
  a bes8*2/3 a d c4 bes-\parenthesize-\prall

  \repeat unfold 2 {
    bes bes' c, ~ c8*2/3 d ees
    d[ ees f] ees[ d c] bes4 a-\prall }
  \bar "||"
  
  bes4^"Allegrissimo" bes' bes d
  \appoggiatura c16 bes4 a8 g f ees d c
  d4 f f bes
  \appoggiatura a8 g4 f8 ees d c bes a
  
  bes c d ees f d c bes
  c d ees f g ees d c
  d c d ees f d c bes
  c d ees f g ees d c
  
  d c d ees f g aes c,
  b aes' g f ees d c b
  c d ees f g a bes d,
  cis bes' a g f e d cis
  
  d4 a'2 g4
  fis a2 g4
  fis8 g a bes c a g fis
  g a bes c d bes a g
  
  a g a bes c a g fis
  g a bes c d bes a g
  a g fis e d c bes a
  bes a bes a bes a bes b
  
  c b c b c b c d
  ees d ees d ees d ees e
  f e f e f e f g
  a g f e d c bes a
  
  bes' a g f g f e d
  cis d e f g e d cis
  d e f g a f e d
  e d cis b? a g f e
  
  f e f e f e f fis
  g fis g fis g fis g a
  bes a bes a bes a bes b
  c b c b c b c d
  
  ees d ees d ees d ees e
  f e f e f e f g
  a g a bes c a g f
  g a bes c d bes a g
  
  a g a bes c a g f
  ees f g a bes g f ees
  d c d ees f d c bes
  c d ees f g ees d c
  
  d c d ees f d c b
  c d ees f g ees d c
  bes' a g f ees d c bes
  c bes a g f ees d c
  
  bes a bes b c b c d
  ees d ees e f e f g
  a bes c d ees c bes a
  f' d g ees d c bes a
  
  bes a bes b c b c d
  ees d ees e f e f g
  a f g a bes a g f
  ees g f ees d c bes a
  
  bes4 <bes d>2 <a c>4
  r <bes d>2 <a c>4
  r <bes d>2 <a c>4
  d8 f ees c d bes c a
  
  bes4 <d f>2 <c ees>4
  r <d f>2 <c ees>4
  d8 f ees c d bes c a
  bes f g ees' <f, bes d>4 <f a c>
  bes1 \bar "|."
}
 
left = \relative c {
  \global
  
  bes2 r4 bes'
  bes ees, f a
  bes2 r4 g
  g ees f f,
    
  bes bes' a f
  bes bes a f
  bes d, ees g
  f d ees g
  f d ees f
    
  bes ees, f f
  g g a f
  bes ees, f f,
  \bar "||" \time 3/8
  
  bes4 d8
  c4 ees8
  
  d4 bes'8
  a f a
  bes4 d8
  c4 ees8
  d4 bes8
  a f a
  bes d bes
  a4 f8
  
  bes d bes
  a4 f8
  bes, c d
  ees4 f8
  g4 g8
  a4 f8
  bes d bes
  g4 bes8
  
  a4 f8
  e4 c8
  f a f
  e4 c8
  f a f
  e4 c8
  f g a
  
  bes4 bes,8
  c r r
  e r r
  f r r
  e r r
  f g a
  bes4 g8
  
  a g f
  bes c c,
  f g a
  bes4 bes8
  a g f
  bes c c, \bar "||" \time 2/2
  
  bes2 r4 bes'
  bes ees, f a
  bes2 r4 g
  g ees f f,
    
  bes bes' a f
  bes bes a f
  bes d, ees g
  f d ees g
  f d ees f
    
  bes ees, f f
  g g a f
  bes ees, f f,
  \bar "||" \time 3/8
  
  bes'4 bes8
  c4 ees8
  d4 bes8
  a f a
  
  bes aes g
  f4 aes8
  g4 ees'8
  d bes d
  ees4 ees8
  d4 f8
  ees4 c8
  
  b g b
  c ees c
  b4 g8
  c ees c
  b4 g8
  c ees c
  a4 c8
  bes4 \clef treble g'8
  
  fis d fis
  g bes g
  fis4 d8
  g bes g
  fis4 d8
  g4. \clef bass
  g,
  a
  
  d,
  g8 bes g
  ees4.
  d 
  c
  bes 
  a
  
  d
  g,
  c
  f,
  bes'8 d bes
  a4 f8
  bes d bes
  
  a4 f8
  bes r r
  a r r
  bes r r
  a r r
  bes4.
  ees,4 ees'8 ~
  
  ees d c
  bes a bes
  f d' c
  bes a bes
  f f' ees
  d c bes
  f, f' ees
  d c bes \bar "||" \time 2/2
  
  f'2 r4 bes
  bes ees, f a
  bes2 r4 g
  g ees f f,
    
  bes bes' a f
  bes bes a f
  bes d, ees g
  f d ees g
  f d ees f
    
  bes ees, f f
  g g a f
  bes ees, f f,
  \bar "||"
  
  bes2 r
  r4 \clef treble bes''4 a f
  bes2 r
  r4 \clef bass ees,4 f f,
  
  bes,2 r4 bes'
  a f f a
  bes2 r4 bes
  a f f a
  
  bes2 r4 aes
  g g g f
  ees c r bes'
  a a a g
  
  fis8 d e fis g a bes c
  d d, e fis g a bes c
  d4 d, d' c
  bes g r g
  
  fis d d c'
  bes g r g
  fis d d fis
  g g g f
  
  ees ees ees d
  c c' c bes
  a a a g
  f f f f
  
  g a bes g
  a a a g
  f d d d'
  cis a a cis
  
  d d d c
  bes bes bes a
  g g g f
  ees ees ees d
  
  c c' c bes
  a a a g
  f f f f
  e c c e
  
  f f f f
  g g g a
  bes bes bes bes
  a f f a
  
  bes bes bes bes
  a f f a
  bes d, ees g
  f f f f
  
  g f ees d
  c bes a g
  f f' f ees
  d ees f f
  
  g f ees d
  c bes a g
  f' ees d bes
  ees ees f f,
  
  bes'8 c d ees f f, g a
  bes c d ees f f, g a
  bes c d ees f f, g a
  bes4 ees, f f,
  
  bes8 c d ees f f, g a
  bes c d ees f f, g a
  bes4 ees f ees
  d ees f f,
  bes1 \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        \breaks
        \right
      >>
    }
    \new Staff = "left" { 
      <<
        \breaks
        \clef bass \left 
      >>
    }
  >>
  \layout { indent = 0 }
}
