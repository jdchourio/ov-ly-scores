%\version "2.18.2"

\header {
  title = "Courante"
  tagline = ##f
}

global = {
  \key d \minor
  \time 3/4
}

right = \relative c'' {
  \global

  \partial 8
  \repeat volta 2 {
    a8
    <<{ a4. a8 bes g } \\ { r8 f d4 }>>
    <<{ a'2. ~ \voiceTwo a8 a g4 } \\ 
      { r8 e f cis d \change Staff="left" \voiceOne a \change Staff="right" d'4. f8 e d }>>
    cis e a, e' d e
    f a, e' a, d g,
    c bes a g f c'
    d c bes a g f
    e d c d f4 ~
    f8 g e2

    f4 r8 <<{ g a \once \tieDown d, ~
    \voiceTwo d d cis4 d } \new Voice { \voiceOne s4. g4. a8 f g }>> \oneVoice
    <<{ e2 } \\ { r8 d[ c b] }>> r8 e'
    f e d c b a
    <gis e b>2 a8 gis
    a b c4 b8 a
    <a e cis>2 <gis d b>4
    <a e cis>2 s8
  }

  \repeat volta 2 {
    e'8
    <<{ e4. e8 f d } \\ { r8 cis a4 }>>
    <<{ e'4 s r8 e } \\ { r8 d cis b a4 }>>
    <<{ f'4 ~ f8 a g f } \\ { r8 a, b2 }>>

    e8 g c, e g, a
    <<{ bes4. d8 c bes } \\ { r8 f g4 }>>
    a8 g f g a bes
    \repeat unfold 8 { c d } c f
    e c d e f c
    d g, a4 g8 f
    <a c, a>4. bes8 a g
    fis a d, fis g a
    <bes g d>4. a8 g f

    e g c, e f g
    <a f c>4. a8 b c
    <b g d>4. b8 cis d
    <cis a e>4. cis8 d e
    f a, e' a, d g,
    <cis a'>2.
    <d a'>
    a'8 cis, d e a, g'
    f e f4 e8 d
    <d a f>2 <cis a e>4
    <d a f>2.
  }
}
 
left = \relative c' {
  \global

  \partial 8
  \repeat volta 2 {
    r8
    d4 d, g
    d' d, r
    bes' <<{ r g } \\ { bes,2 }>>
    <<{ a'2 cis4 } \\ { r4 a, }>>
    d'4 c bes
    a a, a'
    bes bes, 
    <<{ \once \stemDown bes' ~ bes bes a8 f } \\ { s4 c2. }>>
    \once \stemUp <bes g'>4 <<{ r8 bes' c g } \\ { c,4 c, }>>
    <<{ a''4 } \\ { f,8[ c'] }>> f2

    e4 a, d
    a' a, a'
    <<{ d4 s d } \\ { r4 d,2 }>>
    d8 f e d c b
    c a <<{ a'4 gis } \\ { e2 }>>
    a4 a, e'
    <<{ a2 } \\ { a, }>> s8
  }

  \repeat volta 2 {
    r8
    \change Staff="right" \once \stemDown a''4 \change Staff="left" a, d
    \change Staff="right" \once \stemDown a' \change Staff="left" a, cis
    d g, b

    c c, e
    d e c
    <<{ c'2. } \\ { f, }>>
    <<{ a4 g f } \\ { f e d }>>
    <<{ g2 } \\ { e4 c e }>>
    <<{ a g f } \\ { f e d }>>
    <<{ g2 f4 } \\ { c bes a }>>
    <<{ f' f e } \\ { bes c2 }>>
    f,8 c' f g f e
    d4. c8 bes a
    g d' g g, a bes
    
    <c g'>4. bes8 a g
    f c' f e d c
    g' a g f e d
    a' bes a g f e
    <d d'>4 c' bes
    a8 bes a g f e
    d cis d e f g
    <a e'>2
    <<{ r8 cis d4 ~ d cis } \\ { s4 e,8\rest g a2 }>>
    d4 d, a'
    d,2.
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
