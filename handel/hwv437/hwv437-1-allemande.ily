%\version "2.18.2"

\header {
  title = "Allemande"
  tagline = ##f
}

global = {
  \key d \minor
  \time 4/4
}

right = \relative c'' {
  \global

  \partial 8
  \repeat volta 2 {
    a8
    <<{ a4 ~ a16 a bes g a4 ~ a16 a bes c } \\ { r16 g f e f4 r16 g f e f4 }>>
    <<{ d'4 ~ d16 f e d d8 cis r16 cis d e } \\ { r16 a, g f g4 }>>
    f'16 a, e' a, d g, c f, bes g a f g e c' e,
    f e f g a8 g a f <e g c>4

    <<{ r16 bes' a g <f a d>4 r16 c' b a <b e>4 } \\ { d,4 s e s }>>
    r16 a f' f g, e' e e d f, f f e c' c c
    <<{ r16 c b a gis8 a b c16 d b8. a16 } \\ { f4 e }>>
    <a e cis>4 <<{ r16 a8 gis16 } \\ { r8 b, }>> <cis e a>4 s8
  }
  
  \repeat volta 2 {
    e'8
    <<{\shape #'((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5)) Tie 
        e4 ~ e16 e f d e4. e8 } \\ 
      { r16 \stemUp d cis b \stemDown cis4 s16 \stemUp d16 cis b \stemDown cis4 }
      \new Voice { \voiceFour s4 s4 s4 r16 g f e }
    >>

    <<{ f'4 ~ f16 a g f f8[ e] } \\ { r16 a, b c b4 c }>> r16 c f e
    <<{ d4 ~ d16 d e bes c4 ~ c16 c f e } \\ { r16 a, bes f g4 g16 g a e f4 }>>
    d'16 c bes a g bes d, f <e c g>4 r16 c f e
    d a' g f e bes' a g f4 g8 a
    a g16 f e8.\prall f16 f4 r16 c' f e

    <f, bes d>4 r16 f' e d <e, a cis>4 r16 f' e d
    bes'4 r16 e, d c a'4 r16 f f f
    g, e' e e d f, f f e c' c c bes d, d d 
    c a' a a g bes, bes bes a f' e d cis8.\prall d16
    d4 r16 d8 cis16 d4.
  }
}
 
left = \relative c' {
  \global

  \partial 8
  \repeat volta 2 {
    r8
    d[ a] d,[ g] d'[ a] <<{ r8 c } \\ { d,4 }>>
    bes'8[ a] bes[ g] a[ \change Staff="right" e'] a[ \change Staff="left" cis,]
    d[ c] bes[ a] g[ f] c'[ a]
    d[ bes] c[ c,] f4 r16 e d c

    g'4 r16 f e d a'4 r16 gis fis e
    c'8[ d] b[ c] f,[ g] a[ a,]
    <<{ r8 d' ~ d16 c b a gis e a d, r8 gis } \\ { d4 e s e }>>
    a8 a, cis e <a e a,>4 s8
  }

  \repeat volta 2 {
    r8
    \change Staff="right" \voiceTwo a'[ e] 
    \change Staff="left" \oneVoice a,[ d] 
    \change Staff="right" \voiceTwo a'[ e] 
    \change Staff="left" \oneVoice a,4

    d8[ d,] g[ b] c,[ c'] a[ f]
    bes bes, bes' a16 g a8 a, a' g16 f 
    bes4 bes, ~ bes16 d c bes a8 a'
    bes,[ bes'] c,[ c'] <<{ r16 c bes a g8 } \\ { d4 e8 f }>>
    bes, bes' <<{ g bes a bes c a } \\ { c,4 f8 g a f }>>

    r16 bes, bes' a g4 r16 e a g f8 bes
    r16 g a bes c8 c, r16 g' f e d8 d'
    bes[ c] f,[ g] a[ a,] d[ e]
    f[ f,] bes[ c] d[ g,] <<{ e'8 g } \\ { a,4 }>>
    <<{ <f' a>4 r8 e <d f a>4. } \\ { d8[ d,] f[ a] d,4. }>>
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
