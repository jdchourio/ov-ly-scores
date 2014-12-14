\version "2.18.2"

\header {
  title = "Rondeau"
  tagline = ##f
}

global = {
  \key bes \major
  \time 3/4
}

violinI = \relative c'' {
  \global
  \repeat volta 2 {
    d2 d4
    c8 bes c d c4
    ees2 ees4
    d8 c d ees d4
    g8 a g a bes4
    
    d,8 ees d ees f4
    bes,8 c bes c d c
    bes2.
    \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible 
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark \markup {\italic "Fine." } 
  }
  
  bes8 a bes c bes4
  bes g c
  c8 bes c d c4
  
  c a c
  f8 ees f g f4
  f d f
  g8 f ees d c bes
  a4. g8 f4 \bar "||" 
    
  \mark \default 
  d'2 d4
  c8 bes c d c4
  ees2 ees4
  d8 c d ees d4
  g8 a g a bes4
    
  d,8 ees d ees f4
  bes,8 c bes c d c
  bes2. \bar "||" \mark \default
  
  g'4 g8 a g fis
  g4 d ees
  d d8 ees d c
  
  d4 a bes8 a
  g4 g'8 bes a g
  fis e d c bes ees
  d c bes4. a8
  g4. g'8 f ees \bar "|."
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible 
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \mark \markup {\italic "Da Capo al Fine." } 
}

violinII = \relative c'' {
  \global
  \repeat volta 2 {
    bes2 bes4
    a8 g a bes a4
    c2 c4
    bes8 a bes c bes4
    bes2 bes4
    
    bes4. bes8 a4
    g4. g8 f ees
    d2.
  }
  
  f2 f4
  g8 f g a g4
  g e g
  
  a8 g a bes a bes
  c4 a c
  d8 ees d c bes a
  bes4. a8 g4
  f4. g8 a4 \bar "||"
  
  bes2 bes4
  a8 g a bes a4
  c2 c4
  bes8 a bes c bes4
  bes2 bes4
    
  bes4. bes8 a4
  g4. g8 f ees
  d2. \bar "||"
  
  d'4 c2
  bes8 a bes c bes4
  a g2
  
  fis4. e8 d4
  g8 a bes4 c
  a2 g4
  g g4. fis8
  g4 ees'8 d c4 \bar "|."
}

viola = \relative c' {
  \global
  \repeat volta 2 {
    f2 f4
    f2 f4
    g2 g4
    g2 g4
    g4. f8 ees f
    
    g4 f4. ees8
    d4 g, a
    bes2.
  }
  
  d8 c d ees d4
  d bes ees8 d
  c4 a c
  
  c f f
  ees ees ees 
  d f d
  d bes ees8 d
  c2 f4 \bar "||"
  
  f2 f4
  f2 f4
  g2 g4
  g2 g4
  g4. f8 ees f
    
  g4 f4. ees8
  d4 g, a
  bes2. \bar "||"
  
  bes'4 e, a
  d, g g,
  d' bes ees
  
  a, d4. c8
  bes4 ees4. ees8
  d2 d8 bes
  ees4 d4. d8
  d4. bes'8 a g \bar "|."
}

bass = \relative c {
  \global
  \repeat volta 2 {
    bes8 a bes c d ees
    f2 f4
    c8 bes c d ees f
    g2 f4
    ees8 d ees f g a
    
    bes2 d,4
    g ees f
    bes,2.
  }
  
  bes4 d bes
  ees8 d ees f ees4
  e c e
  
  f8 e f g f g
  a4 f a
  bes8 c bes a g f
  ees d ees f g ees
  f g f ees d c \bar "||"
  
  bes8 a bes c d ees
  f2 f4
  c8 bes c d ees f
  g2 f4
  ees8 d ees f g a
    
  bes2 d,4
  g ees f
  bes,2. \bar "||"
  bes'4 a2
  g g4
  f ees2
  
  d bes4 
  ees2 c4
  d fis, g
  c d d,
  g2 a4 \bar "|."
}

violinIPart = \new Staff \with {
  instrumentName = "Violon I"
} \violinI

violinIIPart = \new Staff \with {
  instrumentName = "Violon II"
} \violinII

violaPart = \new Staff \with {
  instrumentName = "Viola"
} { \clef alto \viola }

bassPart = \new Staff \with {
  instrumentName = "Bass"
} << { \clef "bass" \bass } \breaks >>

\score {
  \new StaffGroup  
  <<
    \new GrandStaff <<
      \violinIPart
      \violinIIPart
    >>
    \violaPart
    \bassPart
  >>
  \layout { }
}
