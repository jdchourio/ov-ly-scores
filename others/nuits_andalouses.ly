\version "2.19.20"

\header {
  dedication = \markup { \italic "à Juan Grecos" }
  title = "Nuits andalouses"
  subsubtitle = "2009"
  composer = "Erik Marchelie"
  copyright = "(c)2010 Les productions d‘OZ"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

#(set-global-staff-size 17.9)

tempoMark = {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature key-signature)
  \once \override Staff.TimeSignature #'break-align-anchor-alignment = #LEFT
  \mark \markup \bold {
    "Tranquilo e misterioso "
  }
}

global = {
  \tempoMark
  \key c \major
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \override Beam #'damping = #4
  %\override Fingering.staff-padding = #'()
  %\set fingeringOrientations = #'(up)
}

classicalGuitar = \relative c' {
  \global

  <<{ \voiceOne b8-1 b-0 b'-4 c,-1 b b' r4 b, b' } \new Voice { \voiceTwo b,4. c d2.-3 }>>
  <<{ \voiceOne c8 b b' a, b b' r4 b, b' } \new Voice { \voiceTwo c,4. a-3 b2. }>>
  \oneVoice
  <<{ b8-0 b b b b b b4 b b } { b'8-3 c b a-1 g-1 a-3 b4-4 g-1 a-4 }>>
  <<{ b,8 b b b b b } { f'-1 g-3 a-3 b-4 a-3 g-1 }>>
  <<{ <gis,-4 e'-0>2. } \\ { e,2. } \\ {} \\ { b'4\rest b'2-0 }>>
  
  <<{ \voiceOne b8 b b' c, b b' r4 b, b' } \new Voice { \voiceTwo b,4. c d2. }>>
  <<{ \voiceOne c8 b b' a, b b' r4 b, b' } \new Voice { \voiceTwo c,4. a b2. }>>
  \oneVoice
  
  <<{ b'8-3 c b a-3\3\arpeggio g a b4-3 g-4 a-1 } \\ { b,4.-0 f b4 e-0 f-2\arpeggio }>>
  <<{ f8-2 g-4 a-1 g-4 f-4 g-1 } \\ { d-3 e-0 f-2 d-3 c-3 b-2 }>>
  <<{ <gis-4 e'-0>2. } \\ { e,2. } \\ {} \\ { b'4\rest b'2-0 }>>
  
  g'8-1 f-4 e-3 d-1 c-3 d <<{ e2.-0 } \\ { e,, } \\ {} \\ { f'4\rest b2 }>>
  <<{ a4 c f <gis, e'>2. } \\ { <f, c'>2. e' } \\ {} \\ { s2. b'4\rest b b'\harmonic }>>
  
  <<{ \voiceOne b,8 b b' c, b b' r4 b, b' } \new Voice { \voiceTwo b,4._\markup { \italic \small "dolce" } c d2. }>>
  <<{ \voiceOne c8 b b' a, b b' r4 b, b' } \new Voice { \voiceTwo c,4. a b2. }>>
  \oneVoice
  
  f'8-3\2 e-2 d-4\3 c-2 b-1 a-2 <<{ <gis b e>2. } \\ { e, }>>
  a''16-3 g! f e d-1 c-1 b a g f e dis <<{ r4 r8 b'''4.\harmonic } \\ { e,,,2. }>>
  
  <<{ <e'^0 f-4>4.^"metal." <f g> <e f>2. } \\ { e,,2. e }>>
  <<{ <b''^0 c-2>4. <a-4 b c> } \\ { d,2.-1 }>> <f b>2.
  <g, d' g b d g>4.\arpeggio <f c' f a c f>\arpeggio <e b' f' gis b e>2.\arpeggio
  
  g''!16-3 f e d c b a g f e dis f e4. <fis g b e>\arpeggio
  <<{ \voiceOne b,8 b' b c, b' b } \new Voice { \voiceTwo b,4. c }>>
  <<{ d2. } \\ { d2. } \\ { s4 b' b }>>
  <<{ \voiceOne c,8 b' b a, b' b } \new Voice { \voiceTwo c,4. a }>>
  <<{ r4 b' b } \\ { b,2. }>> \oneVoice
  
  <dis'-3 g-4\2>4. <cis f\6>\arpeggio <dis-3 g-4> <b-0 dis>
  <a-2 cis-1> <dis g> <<{ <gis, e'>2. } \\ { e, } \\ { \voiceFour b'4\rest b'2 }>>
  b8 c b a g a b4 g a
  f8 g a g f g <<{ <e gis b e>2. } \\ { r4 b2 }>>
  
  b4. c d2. c4. a b2.
  b4. c d2. c4. a b2.-\fermata \bar "|."
}

right = \relative c''' {
  \global
  
  \repeat unfold 2 { R2. r4^"Pno"_"Hp" r8 <<{ b4. } 
      \\ { b,^\flageolet }>> }
  dis,8 e dis c b c dis4 b c
  a8 b c f c dis e2 b'4
  
  \repeat unfold 2 { R2. r4^"Pno"_"Hp" r8 <<{ b'4. } \\ { b,^\flageolet }>> }
  e,8 g e c b c e4 b c
  a8 b c b a f b2 b'4
  a4. b <<{ r4 r8 b' b,4 } \\ { gis2. }>>
  
  \tuplet 3/2 { g'16 f e } d32 c b a g f e d \change Staff="left" c b a g f e d c b a g f 
  \change Staff="right" r8 r4 b'''4.
  
  b8 c b a g a b4 g a
  f8 g a b a f e2.
  a,,2. r4 r8b4.
  a4 c f <<{ r4 b b } \\ { e,2. }>>
  
  b''8 c b a g a b4 g a
  f8 g a g f g <<{ e2. } \\ { r4 r b }>>
  g'8 b, d f a, c <<{ e2. } \\ { r4 b8 b' b,4 }>>
  
  d4 b8 c4 a8 <<{ gis2 b4 } \\ { r4 r8 e,4. }>>
  <<{ b4 b'8 c,4 b'8 } \\ { b,4. c }>> 
  <<{ b'4\rest b8\rest <<{ b'4.} \\ { b, }>> } \\ { b,2. }>>
  <<{ c4 b'8 a,4 b'8 } \\ { c,4. a }>> 
  <<{ b'4\rest b8\rest <<{ b'4.} \\ { b, }>> } \\ { b,2. }>>
  
  b'8 c b a g a b4 g a
  f8 g a b a g e2 b'4
  <g b dis g>4.\arpeggio <f a cis f>\arpeggio
  <g b dis g>4.\arpeggio <dis g b dis>\arpeggio
  <cis f a cis>\arpeggio <dis g b dis>\arpeggio
  <<{ <b' e>2. } \\ { r4 r b, }>>
  
  \repeat unfold 3 { r8 b b' r b, b' r4 b, b' }
  r8 b, b' r b, b' r4 b, b'-\fermata \bar "|."
}

left = \relative c {
  \global
  
  b4.^\markup { \musicglyph #"p" \italic "dolce" } b, b'2. 
  b4. b, b'2.
  b4.^\mp b, b'2.
  b4. b,4 f''8 <b, e>2.
  b4.^\p b, b'2. b4. b, b'2.
  e4.^\mp e, e'2.
  d4. d, e'2.
  <f, c'>2.^\markup { \italic "più" \musicglyph #"f" } <e' b'>2.
  f2. <<{ r8 b, ~ b2 } \\ { e,2. }>>
  
  b'4.^\mp b, b'2.
  b4. b, <e b' e>2.
  <d d'>4. <f f'> <<{ e'2. } \\ { r4 b b }>>
  <d, d'>4. <f f'> <e e'>2.
  
  r4^\mf r8 e'4. r4 r8 e4.
  r4 r8 d,4. <<{ e'2. } \\ { r4 e,2 }>>
  b'8^\markup { \italic "più" \musicglyph #"f" } d g, a c f, <e e'>2.
  g8 b d f, a c <<{ r4 b e } \\ { e,2. }>>
  
  \repeat unfold 3 { b'4. b, b'2. }
  b4. b,4 f''8 <b, e>2.
  b4. b, b'2. b4. b, <e! e'!>2.
  \repeat unfold 3 { b'4. b, b'2. }
  b4. b, b'2.-\fermata \bar "|."
}

timePart = { \repeat unfold 28 { \time 6/8 s2. \time 3/4 s2. } }

classicalGuitarPart = \new Staff \with {
  instrumentName = "Guitare"
} { \clef "treble_8" \classicalGuitar }

pianoPart = \new PianoStaff \with {
  instrumentName = \markup \left-column { "Piano" "ou Harpe" }
} <<
  \new Staff = "right" \right
  \new Staff = "left" << { \clef bass \left } \timePart >>
>>

\score {
  <<
    \classicalGuitarPart
    \pianoPart
  >>
  \layout { }
}
