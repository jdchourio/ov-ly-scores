%\version "2.18.2"

\header {
  title = "Sarabande"
  tagline = ##f
}

global = {
  \key d \minor
  \time 3/2
}

right = \relative c' {
  \global

  \repeat volta 2 {
    <f d a>2 q r4 <e g>
    <e cis a>2 q r
    <c! f a> q r4 <g' bes>
    <c, e g>2 q r4 <fis a>
    <d g bes>2 q r4 <a' c>
    <d, f a>2 q r4 a'
    <a d>2 <g d'> r4 e'
    <e, a cis>2 q r
    <f d a>2 q r4 <e g>

    <e cis a>2 q r
    <c! f a> q r4 <g' bes>
    <c, e g>2 q r4 <fis a>
    <d g bes>2 q r4 c'
    <c, f a>2. a'4 d cis
    d e f2 e4 d
    <d a f>2 q r
  }

  \repeat volta 2 {
    f,2.^\markup { \italic "Variatio 1" } a4 g f
    e2 cis r

    <<{ a'2. c4 bes a } \\ { r4 c, f2 }>>
    <<{ g2 } \\ { r4 d }>> e2 r4 a
    <<{ bes2. d4 c bes } \\ { r4 d, g2 }>>
    <<{ a2 s r4 \once \tieDown a ~ \voiceTwo a a g2 } \\ 
      { r4 g f e d s \voiceOne d'2. f4 e d }>>
    cis4 e a, cis e, g
    f2. a4 g f
    e2 cis s
    <<{ a'2. c4 bes a } \\ { r4 c, f2 }>>
    
    <<{ g2 } \\ { r4 d }>> e2 r4 a
    <<{ bes2. d4 c bes } \\ { r4 d, g2 }>>
    <<{ a2 s4 a d2 ~ d4 <e bes>4 } \\ { r4 g, f e r f g2 }>>
    <<{ f'2 e d1 } \\ { a4 d cis g r bes a g f e }>>
  }

  \repeat volta 2 {
    <f d a>2^\markup { \italic "Variatio 2" } q1
    <cis e>2 q1
    <c! a'>2 q1
    <e g>2 q1

    <d bes'>2 <g bes>1
    <f a>2 q1
    <a d>2 <<{ e'2. d4 } \\ { g,1 }>>
    <e a cis>1.
    <f d a>2 q1
    <cis e>2 q1
    <f a>2 q1
    <e g>2 q1
    <d bes'>2 <g bes>1

    <<{ a2. a4 d cis } \\ { f,1 g2 }>>
    <<{ s2 f' e } \\ { d4 e a, d cis a }>>
    <f a d>1 r2
  }
}
 
left = \relative c {
  \global

  \repeat volta 2 {
    d2 d, r
    a'2. bes4 a g
    <f f'>2 q r
    c'2. c4 bes a
    g2 g' g,
    d' d r4 c
    bes2 bes' r
    a <<{ r4 g f e } \\ { a,2 }>>
    d d, r

    a'2. bes4 a g
    <f f'>2 q r
    c'2. c4 bes a
    g g' e g c, e
    f2. d4 bes'2
    g a a,
    d d, r
  }

  \repeat volta 2 {
    <<{ r4 a''4 d2 } \\ { d, f d }>>
    <<{ r4 b' r g a e } \\ { a2 a, }>>

    f'2 a f
    c <<{ r4 b' c2 } \\ { r2 r4 fis, }>>
    g2 bes g
    d' d, s4 c'
    bes2 bes, bes'
    a2. g4 f e
    <<{ r4 a4 d2 } \\ { d, f d }>>
    <<{ r4 b' r g a e } \\ { a2 a, }>>
    f'2 a f

    c'2 <<{ r4 b c2 } \\ { c,2 r4 fis }>>
    g2 bes g
    d' r4 c bes a
    bes g a2 a,
    d1 d,2
  }

  \repeat volta 2 {
    d'4 cis d e f g
    a g a e cis a
    f' e f g a bes
    c g e g c, e

    g f g a bes c
    d a f a d, f
    bes, f' bes a g bes
    a bes a g f e
    d a f a d, f
    a e' a g f e
    f c a c f, a
    c bes c d e f
    g d bes d g, bes
    d e d c bes a

    bes g a' g a a,
    d' a f a d,2
  }
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
