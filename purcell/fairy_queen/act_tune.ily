\version "2.18.2"

\header {
  title = "The Act Tune"
  tagline = ##f
}

global = {
  \key a \minor
  \time 3/4
}

violinI = \relative c'' {
  \global

  \repeat volta 2 {
    e4. d8 e4
    f d g
    e4. d8 c4
    c4. d8 e4
    f8 e d4 c8 b
    c4. b8 a4
  }
  \repeat volta 2 {
    e'4. d8 e4
    f d2
    d4. e8 d b
    c4. d8 e4
    d8 c b4 c8 a 
    gis2 gis4
    
    e'4. e8 a4
    f d g
    e4. e8 a4
    c,4. d8 e4
    d b2
    a2.
  }
  \repeat volta 2 {
    e'4. d8 e4
    f d g
    e4. d8 c4
    c4. d8 e4
    f8 e d4 c8 b
    c4. b8 a4
  }
  \repeat volta 2 {
    e' a, e'
    a, e' f
    d2 d4
    d b d
    g, e'4. a,8
    gis2 gis4
    
    e' e8 f g e
    f4 d8 e f d
    e2 e4
    c a8 b c a
    d4 b8 c d b
    c2 c4
  }
  \repeat volta 2 {
    e4. d8 e4
    f d g
    e4. e8 a4
    c,4. d8 e4
    d b2
    a a4
  }
}

violinII = \relative c'' {
  \global

  \repeat volta 2 {
    c4. b8 c4
    d b2
    c4. b8 a4
    a4. b8 c4
    b gis2
    a a4
  }
  \repeat volta 2 {
    c4. b8 c4
    d b2
    b4. c8 b gis
    a4. b8 c4
    b8 a g4. fis8
    e2 gis4
    
    a4. b8 cis4
    d4. c?8 b4
    c4. d8 c[ b]
    a4. b8 c4
    b gis2
    a2.
  }
  \repeat volta 2 {
    c4. b8 c4
    d b2
    c4. b8 a4
    a4. b8 c4
    b gis2
    a a4
  }
  \repeat volta 2 {
    c c a
    c c d
    b2 b4
    b g b
    b c4. d8
    e2 b4
    
    e4 cis8 d e cis
    d4 b8 c? d b
    c2 c4
    a f8 g a f
    a4 g4. f8
    e2 e4
  }
  \repeat volta 2 {
    c'4. b8 c4 
    d b2
    c2 c4
    a4. b8 c4
    b gis2
    a a4
  }
}

viola = \relative c'' {
  \global

  \repeat volta 2 {
    a2 a4
    f4. e8 d4
    e2 f4
    f4. f8 e4
    d b2
    a2 a4
  }
  \repeat volta 2 {
    a'4. b8 a g
    f4 g2
    e e4
    e4. e8 a g
    f e d4. c8
    b2 d4
    
    e4. d8 e4
    f g4. g8
    g4. e8 f4
    f e8 d c4
    f e2
    e2.
  }
  \repeat volta 2 {
    a2 a4
    f4. e8 d4
    e2 f4
    f4. f8 e4
    d b2
    a2 a4
  }
  \repeat volta 2 {
    a' e a
    a a f
    g2 g4
    g d g
    e a,4. a8
    b2 e4
    
    e a8 b a g
    a4 g f8 g
    g4 e8 f g e
    f2 c4
    d d2
    c c4
  }
  \repeat volta 2 {
    a'4. b8 a[ g]
    f4. f8 g4
    g4. e8 f4
    f4. f8 g4
    f e2
    e e4
  }
}

bass = \relative c' {
  \global
  
  \repeat volta 2 {
    a4 a, a'
    d, g g,
    c2 f,4
    f'2 c4
    d e2
    a, a4
  }
  \repeat volta 2 {
    a' a, a'
    d, g2
    gis e4
    a2 c,4
    d2.
    e2 b'4
    
    cis2 a4
    d b g
    c c, f
    f2 c4 
    d e2
    a,2.
  }
  \repeat volta 2 {
    a'4 a, a'
    d, g g,
    c2 f,4
    f'2 c4
    d e2
    a, a4
  }
  \repeat volta 2 {
    a'2 a,4
    a' a d,
    g g, g'
    g2 g4
    g f2
    e e'8 d
    
    cis2 a4
    d g,2
    c4 c,8 d e c
    f2 f4
    d g g,
    c c'8 d c b
  }
  \repeat volta 2 {
    a2 a4
    d, g g,
    c2 f,4
    f'2 c4
    d e2
    a, a4
  }
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
