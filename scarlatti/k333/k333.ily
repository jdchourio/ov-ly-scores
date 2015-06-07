\version "2.18.2"

\header {
  title = "K333"
  meter = "Allegro"
  tagline = ##f
}

global = {
  \key d \major
  \time 2/2
}

right = \relative c'' {
  \global
 
  \repeat volta 2 {
    r4 d d fis
    fis a a8 g fis e
    d2 r
    R1
    r4 a' g fis
    
    b, e cis2-\prall
    d4 a' g fis
    b, e cis2-\prall
    d4 a d fis
    fis e2.
    
    r4 g, cis e
    e d2.
    r4 d fis d
    r d fis d
    r cis e cis
    r cis e cis
    
    r fis8 e d cis b a
    a' gis fis e dis cis b a
    gis4 b d b
    gis b d b
    r e gis, a
    r b' e, d
    r4

    \repeat unfold 3 { 
      <<{ cis8 cis gis'4 a } \\ { a,2. }>> r4 }
    cis8 cis gis'4 a ~
    a8 e fis cis d b e d
    cis4 b8 a b2-\prall
    a4 cis8 cis gis'4 a r
    
    \repeat unfold 2 { 
      <<{ cis,8 cis gis'4 a } \\ { a,2. }>> r4 }
    cis8 cis gis'4 a ~
    a8 e fis cis d b e d
    cis4 b8 a b2-\prall
    a4 e'8 d cis b a gis
    fis'4 d2 cis8 b
    
    cis4 e8 d cis b a gis
    fis4 b gis2
    a4 a'8 gis fis e d cis
    b a gis fis e d cis b
    \set Score.repeatCommands = #'((volta ""))
    a1
    \set Score.repeatCommands = #'((volta #f))
  }

  \repeat volta 2 {
    \time 6/8

    \set Score.repeatCommands = #'((volta ""))
    r4.
    \set Score.repeatCommands = #'((volta #f))
    r
    R2.
    r4 r8 a' b cis
    d e fis e d cis
    d4. <c d>
    
    <b d> <<{ dis8 e dis } \\ { a4. }>>
    <g e'>4. b
    <ais e'> <g e'>
    <<{ fis'4. s } \\ { e8 d cis d e fis }>>
    <<{ g4. e } \\ { fis8 e d d cis b }>>
    
    ais g' e ais, b ais
    b g' e ais, b ais
    b cis d e fis g
    fis e d cis b ais
    b fis' a, g fis g
    
    fis fis' a, g fis g
    a e' g, fis e fis
    e e' g, fis e fis
    e fis g a b cis
    d e fis e4 d8
    
    cis a' d, cis d cis
    d a' d, cis d cis
    d fis a, g e' g,
    fis e' d b a' g
    fis e d e4.-\prall
    
    d8 a' d, cis d cis
    d  a' d, cis d cis
    d fis a, g e' g,
    fis e' d b a' g
    fis e d e4.-\prall
    d8 a' fis e a, g
    
    fis a' fis e a, g
    fis d' cis b a g
    fis e d e'4.-\prall
    fis8 d cis b a g
    fis e d e'4.-\prall 
    d4. r
  }
}
 
left = \relative c {
  \global
  
  \repeat volta 2 {
    d2 r
    R1
    r4 \clef treble d' d fis
    fis a a8 g fis e
    d4 d e fis
    
    g e a g
    fis d e fis
    g e a g
    fis2 r
    r4 g8 fis e d cis b
    
    a2 r
    r4 fis'8 e d cis d e
    fis2 fis
    gis gis
    a a
    cis, cis
    
    d d
    dis dis
    e e
    d d 
    cis cis
    
    \clef bass gis gis
    a a
    gis gis
    fis fis
    e e
    
    d d
    e e,
    a a'
    gis gis
    fis fis
    
    e e
    d d
    e e,
    a cis
    d e
    
    a, cis
    d e
    a, d 
    e e, 
    a1
  } 
  
  \repeat volta 2 {
    \time 6/8
    
    a4.^\markup { \bold "Allegrissimo" } a'8 b cis \clef treble
    d e fis g a b
    cis, d e \clef bass a,4 g8
    fis4 d8 g4 a8
    d, d' e fis e d
    
    g g, g' fis4.
    e8 e, e' d d, d'
    cis cis, cis' b b, b'
    ais4. b8 cis d
    e4. g
    
    fis fis8 g fis
    g4. fis8 g fis
    g4. ~ g8 fis e
    d cis b e4 fis8
    dis4. e8 dis e
    
    dis4. e8 dis e
    cis4. d8 cis d
    cis4. d8 cis d
    cis4 b8 a4 g8
    fis e d g a b
 
    \repeat unfold 2 {
      a4. <<{ e'8 fis e fis4. e8 fis e } \\
        { a,4. a a }>>
      <a fis'>4. <a e'>
      d g,
      a a,
    }
    
    d cis'
    d cis
    d g,
    a a,
    d g
    a a,
    d, r
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
