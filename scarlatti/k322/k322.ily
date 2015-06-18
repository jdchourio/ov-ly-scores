\version "2.18.2"

\header {
  title = "K322"
  meter = "Allegro"
  tagline = ##f
}

global = {
  \key a \major
  \time 2/2
}

right = \relative c'' {
  \global
 
  \repeat volta 2 {
    e2 e
    e2. a8 e
    \appoggiatura gis16 fis4 e8 d cis4 b
    cis8 d e4 r a8 cis,
    
    \appoggiatura e16 d4 cis8 b a4 gis
    a e r cis'8 e
    d4 b e, d'
    d-\prall cis r cis8 e
    d4 b'2 d,4
    
    d-\prall cis r a'8 cis,
    b4 fis'2 a,4
    a-\prall gis r e'8 b
    b4 fis'2 a,4
    a-\parenthesize\prall gis r e'8 b
    
    b4 b b e8 gis,
    gis4 a r e'8 a,
    a4 b r e8 b
    b4 cis r a'8 cis,
    
    dis4 b'8 dis, dis4 b'8 dis,
    e4 b'8 e, fis4 b8 fis
    gis4 a8 b a gis fis e
    dis4 b r b'8 g
    
    g4 g g g
    \appoggiatura a16 g8 fis e4 r b'8 e,
    e4 e e e
    e8 d c4 c'2 ~
    c4 b8 a g fis e dis
    
    e2 r4 b8 g
    g4 g g g
    gis! a2 e'8 c
    a4 a a a
    ais b2 b'8 g
    
    e4 e e e
    e8 d c4 c'2 ~
    c4 b8 a g fis e dis
    e4 b cis dis8 e
    b4 a8 gis a4 gis8 fis
    
    gis4 e' cis b8 a
    gis4 fis8 e fis4 e8 dis
    e4 b' cis dis8 e
    b4 a8 gis a4 gis8 fis
    gis4 e' \appoggiatura dis16 cis4 b8 a
    
    gis4 fis8 e fis4 e8 dis
    e2 \parenthesize r
  }
  \pageBreak
  \partial 2
  \repeat volta 2 {
    r4 e'8 b
    b4 b b b
    gis8 a b4 r e8 b
    
    b4 b b b
    ais8 b cis4 r cis'8 ais
    g4 e e cis
    d8 e fis4 r b8 fis
    fis4 b8 fis fis4 fis
    
    b8 g a fis e4 a8 e
    e4 a8 e e4 e
    a8 fis g e d4 a'8 d,
    cis4 a'8 cis, b4 a'8 b,
    a4 e'8 a, b4 e8 b
    
    cis4 a'8 cis, d4 a'8 d,
    e4 fis8 e d cis b a
    gis4 e r e'8 c
    c4 c c c
    \appoggiatura d16 c8 b a4 r e'8 a,
    
    a4 a a a
    f8 gis b d f2 ~
    f4 e8 d c b a gis
    a2 r4 e'8 c
    c4 c c c
    
    cis! d2 a'8 f
    d4 d d d
    dis e2 c'8 a
    e4 e e e
    f d2 d'8 b
    
    e,4 c'8 a d,4 b'8 gis
    a4 e fis gis8 a
    \appoggiatura fis16 e4 d8 cis d4 cis8 b
    cis4 a' \appoggiatura gis16 fis4 e8 d
    cis4 b8 a b4 a8 gis
    
    a4 e' fis gis8 a
    e4 d8 cis d4 cis8 b
    cis4 a' \parenthesize \appoggiatura gis16 fis4 e8 d
    cis4 b8 a b4 a8 gis
    a2
  }
}
 
left = \relative c' {
  \global
  
  \repeat volta 2 {
    R1
    a2 cis
    d e
    a, a,
    
    d e
    a, a'
    a gis
    a a 
    a gis
    
    a cis,
    d dis
    e e
    dis dis
    e e'
    
    d d
    cis cis
    gis gis
    a a
    
    a a
    gis dis
    e a
    b r
    
    e d
    c c
    g g
    a a
    b b,
    
    e e
    e' d
    c c
    c r
    g g
    
    g r
    a a
    b b,
    e a
    gis fis
    
    e a
    b b,
    e a
    b dis,
    e a
    
    b b,
    e, \parenthesize r
  }
  
  \partial 2
  \repeat volta 2 {
    r2
    e'' e
    d d
    
    d d
    cis cis
    fis, fis
    b b
    a a
    
    g r
    g g
    fis fis
    e d
    cis gis
    
    a b
    cis d
    e r
    a g
    f f
    
    c c
    d d
    e e,
    a1
    a'2 g
    
    f f
    f r
    c c
    c r
    d d
    
    e e,
    a d'
    cis b
    a d,
    e e,
    
    a d
    cis b
    a d
    e e,
    a
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
