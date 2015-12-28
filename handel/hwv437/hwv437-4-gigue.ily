%\version "2.18.2"

\header {
  title = "Gigue"
  tagline = ##f
}

global = {
  \key d \minor
  \time 12/16
}

right = \relative c'' {
  \global

  \repeat volta 2 {
    \voiceOne d16 f a a, e' a f a d, cis e a, \oneVoice
    f'8 r16 g8 r16 a g f e d c
    a c f, g c c, a' c f, e g c,
    f a c, d bes' a g f e <f c a>8 r16
  }

  \repeat volta 2 {
    f16 a c c, g' c b d f e16. d32 c16
    <c e>8 r16 <b e>8 r16 c e a, gis b e,
    e' d c f e d c16. b32 a16 <a e c>8.
    a'16 e g fis g d g \once \stemUp g, a' bes8 r16

    g d f e g c, f c g' a8 r16
    \voiceOne d, f a a, e' a \oneVoice f a d, cis e a, 
    d a c bes d, g f a, cis d8 r16
  }
}
 
left = \relative c' {
  \global

  \repeat volta 2 {
    \change Staff="right" \voiceTwo 
    <d f>8 r16 <cis e>8 r16 <d f a>8 r16 <a e'>8 r16
    \change Staff="left" \oneVoice 
    d, f bes e, g c f, a c c,8 r16
    <f c'>8 r16 <e g>8 r16 <f c'>8 r16 c8 r16
    a c f bes, d f
    c a' g f c f,
  }

  \repeat volta 2 {
    <f' a>8 r16 <e g>8 r16 d f b c g c,
    a' c e gis, b e a, c e e, gis b
    c, e a d, f b e, d e a, c e
    a8\noBeam bes16 <a c>8 r16 <bes d>8\noBeam  <a c fis>16 g bes d

    bes,8 r16 c c' bes a d g, f a c
    \change Staff="right" \voiceTwo <d f>8 r16 <cis e>8 r16\change Staff="left" \oneVoice
    d, f a a, a' g
    <f a>8 r16 g8 r16 a,8\noBeam <<{ g'16 <f a>8 } \\ { e16 d a d, }>>
  }
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
