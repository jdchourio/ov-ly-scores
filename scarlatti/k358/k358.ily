\version "2.18.2"

\header {
  title = "K358"
  meter = "Allegro"
  tagline = ##f
}

global = {
  \key d \major
  \time 3/4
}

right = \relative c'' {
  \global

  \repeat volta 2 {
    r8 <d fis>16 <e g> <fis a>8 <d fis> <a e'> <fis d'>
    <a e'> <d fis>16 <e g> <fis a>8 <e g> <d fis> <a e'> 
    <<{ d4 } \\ { fis,8 }>> a'4-\prall 
    \repeat unfold 4 { a4-\parenthesize-\prall }
    
    r8 a g32 fis e16 g8 fis32 e d16 fis8
    e32 d c16 e8 d32 c b16 d8 c d16-\prall c32 d
    e16 a a gis gis a a gis gis fis fis e
    
    e fis fis e e fis fis e e d d cis
    cis d d cis cis d d cis cis b b a
    b4. b8 c d
    e4. e8 d cis16 b
    
    cis a' a gis gis a a cis, cis d d cis
    d a' a gis gis a a dis, dis e e dis
    e b' b a a gis gis fis fis e e d
    
    <cis a'>4 q q
    <a a'> q q
    <a fis'> <a fis'> ~ fis'16 e d cis
    
    cis d d cis cis d d cis d e e dis
    e b' b a a gis gis fis fis e e d
    cis \repeat unfold 2 { 
      a a gis gis a a gis gis a a gis
      a b b ais ais b b cis d e fis d
      cis8 b16 a a8 ~ a32 gis a b b8.-\prall a16
      a }
    a' gis a dis, e gis, a dis, e e' cis
    
    fis d cis b a b a32 gis a b b8.-\prall a16 
    \repeat unfold 2 {
      a2 e'4
      r16 fis e d d cis b a b a'a, gis
    }
    a e' cis a e cis a cis e a cis e
    a2.-\parenthesize\prall
  }
  
  \repeat volta 2 {
    r8 cis,16 d e8 e d cis
    d fis16 g a8 d, cis d16-\parenthesize\prall cis32 d
    e16 a a gis gis a a g g fis fis e
    
    fis2 ~ fis16 e d cis
    d d' d cis cis d d cis cis b b ais
    ais b fis g dis e ais, b fis g e e'
    
    d8 cis16 b fis'8 e16 d cis8 b16 ais
    b b' b ais ais b b a a gis gis fis
    d8 d' ~ d16 cis cis b b a a gis
    gis a a gis gis a a g g fis fis e
    
    c8 c'~ c16 b b a a g g fis
    fis g g fis fis e e d d cis cis b
    cis8 b' ~ b16 a a g g fis fis e 
    fis4 fis fis
    
    <fis d'> q q
    <d b' d> q q
    <<{ d'16 cis cis b } \\ { e,4 }>> b'16 a a g g fis fis e
    
    fis \repeat unfold 2 {
      d d cis cis d d cis cis d d cis
      d e e dis dis e e fis g a b g
      fis8 e16 d d e d32 cis d e e8.-\prall d16 
      d }
    
    d' cis d gis, a cis, d gis, a a' fis
    b g fis e d e d32 cis d e e8.-\prall d16
    \repeat unfold 3 {
      d2 a'4
      r16 b a g g fis e d e d' d, cis }

    d d' a fis d a fis a d fis a d
    d,2.-\prall
  }
}
 
left = \relative c' {
  \global

  \repeat volta 2 {
    R2. R2.
    r8 <d fis>16 <e g> <fis a>8 <d fis> <a e'> <fis d'>
    <a e'> <d fis>16 <e g> <fis a>8 <e g> <d fis> <a e'>
    
    <<{ d4. cis8 cis d ~
        d8 e4 fis8 e d
        <cis e>4 } \\ 
      { fis,8 d e4 fis
        g gis2
        a4. }>>
    a8 b cis
    
    d,8 d'4 d8 cis a
    b, b'4 gis8 a a,
    cis16 e' e dis dis e e d d cis cis b
    cis, cis' cis b b cis cis b b a a gis
    
    a,4 a' g
    fis b a
    gis e gis
    
    a,16 a' a gis gis a a gis gis fis fis e
    fis, fis' fis e e fis fis e e d d cis
    d, d' d cis cis d d cis cis b b a
    
    b4 b' a-\prall
    gis e gis
    
    a4. \repeat unfold 2 {
      gis8 fis e
      d cis b a gis e
      a d e4 e,
    } \alternative {
      { a8 a'4 } { a,2 cis4 } }
    
    d e e,
    \repeat unfold 2 {
      a'16 a' gis a dis, e gis, a a, cis b a
      d4 e e, }
    a,4 a a 
    a2.
  }

  \repeat volta 2 {
    <<{ r8 e'''16 fis g8 g fis e 
        fis4 r8 fis e d
        e4 } \\ 
      { a,2. a a4. }>>
    a8 b cis
    
    d,16 d' d cis cis d d cis cis b b ais
    b,4 b' a
    g, g' g,
    
    fis fis' e
    <d b'> q q
    <cis b'> q q
    <cis a'> q <c a'>
    
    <b a'> q q
    <b g'> q q
    <a g'> q q
    d16 d' d cis cis d d cis cis b b ais
    
    b, b' b ais ais b b a a g g fis
    g, g' g fis fis g g fis fis e e d
    a4 a' a,
    
    \repeat unfold 2 {
      d'4. cis8 b a
      g fis e d cis a
      d g a4 a, }
    
    d2 fis4 
    g a a,
    
    \repeat unfold 3 {
      d16 d' cis d gis, a cis, d d, fis e d
      g4 a a }
    d, d d 
    d2.-\prall
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
