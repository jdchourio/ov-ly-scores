\version "2.18.2"

\header {
  title = "Dance for the fairies"
  tagline = ##f
}

global = {
  \key g \major
  \time 2/2
}

violinI = \relative c''' {
  \global
  
  \repeat volta 2 {
    g8 a g fis e4 a8 g
    fis4. e8 d4 g8 fis
    e4 d8 e c e d c
    b4 a8 b g4 g
    g'8 a g fis e4 a8 g
    
    fis g e d cis4 b8 a
    a'4 e8 fis g4 fis8 e
    e4. d8 d4.
  }
  \repeat volta 2 {
    a8 a16( b c8) c4 c( b8) b
    e4 e e( dis8) dis
    
    g4 g g fis8( g16 e)
    e4. dis8 e2
    a4 e fis8 g a4
    d,4 b c8 d e4
    a,4 d8 c b a g g'
    
    e4. a8 fis4. a8
    b4 g g b,8 c
    d4 g, g a8 b
    c4 d8 e d[ g] e a
    fis2 g4.
  }
}

violinII = \relative c'' {
  \global
  
  \repeat volta 2 {
    b8 c b a g4 c8 b
    a4. a8 a4 g
    g g g fis
    g fis8 e d4 g8 a
    b4 b cis8 d e4
    
    a, b a a
    a cis d a8 b
    cis4. d8 d4.
  }
  \repeat volta 2 {
    fis,8 g4 a g a
    b b b b
    b b c c
    b b b c8 b
    a4 a a a
    a gis a a
    a8 g fis e d4 d'8 b
    
    g4. c8 a4. d8
    d4 b c g
    g f e fis8 g
    a4 a a8[ b] g c
    a2 b4.
  }
}

viola = \relative c' {
  \global
  
  \repeat volta 2 {
    d4 d e e
    fis8 d e fis g a b4
    c d, e8 c a d
    d4 d8 c b4 b
    e e e e8 cis
    
    fis4 g e8[ fis] cis d
    e4 a d,4. d8
    a'4 g fis4.
  }
  \repeat volta 2 {
    d8 g,4 d' e d
    g g g fis
    
    e e e a
    fis4. g16 a gis2
    e4 cis d e
    fis e e8 d c4
    d a b8 c d4
    
    c4. e8 d4. fis8
    g4 d e e
    d d c e
    e c d4. e8
    d2 d4.
  }
}

bass = \relative c {
  \global
  
  \repeat volta 2 {
    g2 c4 a
    d8 e d c b4 e8 d
    c4 b a d
    g,2 g'8 a g fis
    e fis g e a b cis a
  
    d4 g, a a,8 b
    cis4 a b8 cis d g, 
    a2 d4.
  }
  \repeat volta 2 {
    d8 e4 fis g8 a g fis
    e fis g e b' c b a
    
    g a b g a b c a
    b4 b, e8 fis e d 
    cis4 a d c
    b e a, a'8 g
    fis e d fis g a b g
    
    c b c a d c b a
    g a g fis e4 d8 c 
    b a b g c d c b
    a4 c b8[ g] c a
    d4 d, g4.
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
