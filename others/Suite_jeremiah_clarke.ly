\version "2.12.3"

\include "../include/tagline.ily"

\header {
  title = "Trois suites dans le goût anglais"
  %subtitle = "pour flute à bec soprano ou ténor et basse continue"
  subsubtitle = "Suite en sol mineur"
  composer = "Jeremiah Clarke"
  piece = "Plainte"
}

\paper {
  #(set-paper-size "a4")
  %annotate-spacing = ##t
  between-system-padding = #0.1
  oddFooterMarkup = \gitTagline
  evenFooterMarkup = \gitTagline
}

tempoMark = {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature key-signature)
  \once \override Staff.TimeSignature #'break-align-anchor-alignment = #LEFT
  \mark \markup \bold "Lentement"
}

global = {
  \tempoMark
  \key g \minor
  \time 4/4
}

sopranoRecorder = \relative c'' {
  \global
  \transposition c''
  
  \repeat volta 2 {
    g2 r
    a2 r4 d
    bes a8 g fis4 d
    g a8 bes c4 d8 ees
    %\break
    
    f4 ees8 d c4 bes8 a
    bes d g,4 fis2
    g r
    a r4 d
    bes c8 d ees4 d8 ees
    %\break
    
    f4 f8 ees d4 ees8 d
    c4 bes8 a bes4 c8 bes
  }
  \alternative {
    { a8 bes fis4 g r }
    { a8 bes fis4 g r }
  }
  r c8 bes a c f, a
  %\break
  
  bes4 bes8 a g4 a8 bes
  c4 d8 ees d ees f d
  ees4 d8 c b c d b
  c2 r4 f8 ees
  %\break
  
  d f bes, d c4 bes8 a
  bes d g, bes a4 g8 fis
  g4 g'8 d ees4 f8 c
  d4 c8 bes a bes a g
  g2 r4 f'8 f
  %\break
  %\pageBreak
  
  d f bes, d c4 bes8 a
  bes d g, bes a4 g8 fis
  g4 g'8 d ees4 f8 c
  d4 c8 bes a bes a g
  g2 r4 bes8 c
  %\break
  
  d4 c8 bes f'4 f8f 
  f4 ees8 d ees4 f
  d c8 d ees d c bes
  a4 g8 a bes4 d,
  g g8 f e4 c'8 bes
  %\break
  
  a bes a g fis4 g8 a
  bes4 c8 d ees4 d 
  c8 bes a g d'2
  g, r
  a r4 d
  %\break
  
  bes a8 g fis4 d
  g a8 bes c4 d8 ees
  f4 ees8 d c4 bes8 a
  bes d g,4 fis2
  g2 r
  %\break
  
  a2 r4 d
  bes c8 d ees4 d8 ees
  f4 f8 ees d4 ees8 d
  c4 bes8 a bes4 c8 bes
  a bes fis4 g2
  \bar "|."
}

bcMusic = \relative c' {
  \global
  \repeat volta 2 {
    r4 g8 a bes a g4
    r d8 e fis e d4
    g4. g8 d' c bes a
    g f ees d c4 bes
    %\break
    
    a bes f' fis 
    g8 f ees4 d8 c bes a 
    g4 g'8 a bes a g4
    r d8 e fis e d4
    g8 f ees d c4 bes
    %\break
    
    a f bes bes'
    a fis g c,
  }
  \alternative {
    { d4 d, g2 }
    { d'4 d, g g'8 f}
  }
  e g c,4 f f8 ees
  %\break
  
  d f bes,4 ees ees8 d 
  c4 c' b g
  c f, g g,
  c c'8 bes a c f,4
  %\break
  
  bes4. bes8 a c fis,4
  g4. g8 fis a d,4
  ees8 g b,4 c8 ees a,4
  bes8 d g,4 d2
  g4 g'8 bes a bes f4
  %\break
  %\pageBreak
  
  bes4. bes8 a c fis,4
  g4. g8 fis a d,4
  ees8 g b,4 c8 ees a,4
  bes8 d g,4 d2
  g4 d' g8fis g a
  %\break
  
  bes2 a
  b c4 a
  bes2 ees,
  f bes,4 bes'
  bis2 c
  %\break
  
  cis d8 c bes a
  g f ees d c4 d
  ees4. ees8 d c bes a
  g4 g'8 a bes a g4
  r d8 e fis e d4
  %\break
  
  g4. g8 d' c bes a 
  g f ees d c4 bes
  a bes f'fis
  g8 f ees4 d8 c bes a
  g4 g'8 a bes a g4
  %\break
  
  r d8 e fis e d4
  g8 f ees d c4 bes
  a f bes bes'
  a fis g c,
  d d, g2
  %\break
  \bar "|."
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  s2 <6>8 s4.
  s4 <_+> <6>2
  s <_+>
  s4 <4 2>8 <6> s2
  %\break
  
  <6>4 s s <6>
  s <6 [4 3]> <_+>2 
  s <6>
  s4 <_+> <6> s
  s <6>8 <6!> s4 <4 2>
  %\break
  
  <6> s s <6>
  <6+> <6> s <[7]>
  s <_+> s2
  s4 <_+> s s 
  <6> <_!> s s
  %\break
  
  <6> s <_>2
  s <6>4 <_!>
  s <6 5> <_!> s
  s s <6> s
  %\break
  
  s4 <6> <6+> <6> 
  s2 <6>4 <_+>
  <5> <6>2 <6>4
  <5> <5> <4> <_+>
  s2 <6>8 <5> s4
  %\break
  %\pageBreak
  
  <5>4 <6> <6+> <6>
  s2 <6>4 <_+>
  <5> <6> s <6>
  <5> <6> <4> <_+>
  <_>2.. <6>8
  %\break
  
  <5>2 <6>
  <6 5>2. <6>4
  s1
  s1
  <6>2 <_!>
  %\break
  
  <6>2 <_+>4 <6>8 <6+>
  s s <6> <6!> s4 <6 _+>
  <6 [4 3]>2 <_+>
  s <6>
  s4 <_+> <6> s
  %\break
  
  s2 <_+>
  s4 <4 2> s2
  <6>2 <6>
  s4 <6 [4 3]> <_+>2
  s <6>
  %\break
  
  s4 <_+> <6> s
  s <6>8 <6!> s4 <4 2>
  <6> s s <6>
  <6+> <6> s <[7]>
  <4> <_+> s2
  \bar "|."
}

figBass = \figuremode {
  \global
}

sopranoRecorderPart = \new Staff \with {
  midiInstrument = "recorder"
} \sopranoRecorder

bassoContinuoPart = \new Staff \with {
  midiInstrument = "cello"
} << \clef bass \bcMusic \bcFigures >>

bassFiguresPart = \new FiguredBass \figBass

  #(set-global-staff-size 16)
\score {
  <<
    \sopranoRecorderPart
    \bassoContinuoPart
    \bassFiguresPart
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
