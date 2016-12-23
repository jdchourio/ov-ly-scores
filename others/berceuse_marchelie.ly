\version "2.19.20"

\header {
  dedication = \markup { \italic "à Lucile et Marie Orblin" }
  title = "Berceuse pour Olivier"
  subsubtitle = "2005"
  composer = "Erik Marchelie"
  copyright = "(c)2005 Les productions d‘OZ"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

tempoMark = {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature key-signature)
  \once \override Staff.TimeSignature #'break-align-anchor-alignment = #LEFT
  \mark \markup \bold {
    "Lento "
    \small \general-align #Y #DOWN \note #"4" #1 = 58
  }
}

global = {
  \tempoMark
  \key d \major
  \time 2/4
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \override Beam #'damping = #4
}

classicalGuitar = \relative c' {
  \global
  d2\harmonic_\4^\markup { \small \italic "12" }
  d\harmonic
  e\harmonic_\5^\markup { \small \italic "7" }
  e\harmonic
  d8 d e fis
  a2
  e8 e d e
  fis2
  d8 d e fis
  a2
  e8 e fis e
  d2
  r16 a, g'_0 fis_3 a8_1 a,
  <g_2 d' g b>4. <g d' g>8
  <a e' g>2
  fis'4. a,8
  fis'4. a,8
  <g d' g b>4. <g d' g>8
  <a e' g>2
  
  \override TextSpanner.bound-details.left.text = \markup { \small \italic "12" }
  \override TextSpanner.dash-fraction = 1.0
  
  fis'4. a8\harmonic_\5\startTextSpan
  d4\harmonic_\4 a\harmonic\stopTextSpan
  <g, d' g b>4. <g d' g>8
  <a e' g>2
  fis'4. a,8
  fis'4. a,8
  <g_2 d' g b>4. <g d' g>8
  <<{ <e' g>4 fis8_3 g } \\ { a,2 }>>
  fis'
  r4 r8 a
  d d e fis
  a2
  e8 e d e
  fis4. a,8
  d d e fis
  fis2
  e8 e fis e
  d2
  R2 R2
  <<{ e8 e fis g a2 } \\ { a,, d }>>
  d'2\harmonic_\4
  R2
  <<{ e8 e fis e d2 } \\ { a, d }>>
  \override TextSpanner.bound-details.left.text = \markup { \small \italic "7" }
  d''2\harmonic_\3\startTextSpan
  fis\harmonic_\2\stopTextSpan_\fermata \bar "|."
}

right = \relative c' {
  \global
  
  s2*4
  d4 b
  d b
  cis b8 bes
  a4 b!
  d b
  d b
  e cis
  d a
  R2
  
  \tuplet 3/2 { b8 b b } \tuplet 3/2 { b cis d }
  cis4 \voiceOne b8 \change Staff="left" a
  b16 a8 fis16 a4
  \change Staff="right" \oneVoice r16 <a' a'>8 <fis fis'>16 <a a'>4
  
  \tuplet 3/2 { b,8 b b } \tuplet 3/2 { b cis d }
  cis4 d8 e
  fis8. a16 ~ a4
  <g g'>8. <fis fis'>16 ~ q4
  
  \tuplet 3/2 { b,8 b b } \tuplet 3/2 { b cis d }
  cis4 \voiceOne b8 \change Staff="left" a
  b16 a8 fis16 a4
  \change Staff="right" \oneVoice r16 <a' a'>8 <fis fis'>16 <a a'>4
  
  \tuplet 3/2 { <b, b'>8 <b b'> <b b'> } \tuplet 3/2 { <b b'> <cis cis'> <d d'> }
  <cis cis'>4 <d d'>8 <e e'>
  <d d'>2
  
  s2
  r4 \change Staff="left" \voiceOne g,8 a \change Staff="right" \oneVoice
  d4 b8 a
  cis4 b8 bes
  a4 \change Staff="left" \voiceOne a8 fis
  s4 gis 
  s bes \change Staff="right" \oneVoice
  s c8 cis
  d2
  
  r16 a g' fis a8 a,
  \tuplet 3/2 { b8 b b } \tuplet 3/2 { b cis d }
  cis4 d8 e
  fis4 r
  
  r16 a, g' fis a4
  \tuplet 3/2 { b,8 b b } \tuplet 3/2 { b cis d }
  
  <<{ cis2 r16 a g' fis a4 } \new Voice { \voiceOne \change Staff="left" g,4 a8 g fis2 }>>
  r16 a' g' fis a4
  <d, a' d>2-\fermata \bar "|."
}

left = \relative c, {
  \global
  
  <<{ \override Beam #'damping = #4
      \repeat unfold 4 { d16 a' a' fis b8-> a, }
      \repeat unfold 2 { d,16 a' a' fis s4 }
      d,16 a' g' e s4
      \repeat unfold 3 { d,16 a' a' fis s4 }
      d,16 bes' g' e s4
      d,16 a' g' fis s4
    } \\ 
    {
      \repeat unfold 12 { d,4. a'8 }
    }>>
  
  <d, d'>2
  d
  \voiceTwo d'4. a8
  <d, d'>4. a'8 \oneVoice
  d4. a8
  d,2
  d'4. a8
  d,4. a'8
  d4. a8
  d,2
  \voiceTwo d'4. a8
  <d, d'>2 \oneVoice
  d'4. a8
  d,2
  a''4. a,8
  
  <<{ \override Beam #'damping = #4
      \repeat unfold 2 { d,16 a' a' fis b8 a, }
      \repeat unfold 2 { d,16 a' a' fis s4 }
      d,16 a' g' e s4
      d,16 a' g' fis s4
      d,16 b' gis' e s4
      d,16 bes' g'! e s4
      a,16 e' b'! g s4
      d,16 a' g' fis a8 a, 
    } \\
    {
      \repeat unfold 6 { d,4. a'8 }
      d,4. b'8
      d,4. bes'!8
      \repeat unfold 2 { d,4. a'8 }
  }>>
  
  d2
  <g, d' g>
  g'
  
  <<{ \override Beam #'damping = #4 d,16 a' g' fis a8 a, } \\ { d,4. a'8 }>>
  d,4. a'8
  <g d' g>2
  \voiceTwo R2
  d4. \oneVoice a''8
  d4. a,8
  <d, d'>2-\fermata \bar "|."
}

classicalGuitarPart = \new Staff \with {
  instrumentName = "Guitare"
} { \clef "treble_8" \classicalGuitar }

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \right
  \new Staff = "left" { \clef bass \left }
>>

\score {
  <<
    \classicalGuitarPart
    \pianoPart
  >>
  \layout { }
}
