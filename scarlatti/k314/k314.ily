\version "2.18.2"

\header {
  title = "K314"
  meter = "Allegro"
  tagline = ##f
}

global = {
  \key g \major
  \time 2/2
}

right = \relative c''' {
  \global
 
  \repeat volta 2 {
    g4.-\prall fis8 g d b g
    e c' fis, d' g, e' a, fis'
    b,4 g' r2
    
    r4 c, b a
    d8 g, fis g b g d' g,
    e' g, fis g c g e' g,
    d' g, fis g b g d' g,
    
    c g fis g a g c g
    b2. <b g'>4
    <c g'>2. <g g'>4
    <b g'>2. q4
    
    <c e>2. q4
    d8 g, fis g a g b g
    c g fis g a g c g
    d' g, fis g b g d' g,
    
    e' fis, g d' c fis, g b
    a2-\prall r4 a
    a'8 g g f f e e d
    d cis cis d d cis cis d
    
    g f f e e d d cis
    cis d d cis cis d d cis
    f e e d d a' a c,
    
    c bes bes a a bes bes a
    e' d d cis cis g' g bes,
    bes a a gis a a b cis
    
    \repeat unfold 2 {
      d a f' e d a f' e
      d bes bes' bes, bes' bes, a' bes,
      g' bes, f' a, e' g, d' f,
      d'4-\prall cis }
    \alternative {
      { r8 a b cis }
      { }
    }
    
    \repeat unfold 2 {
      <<{ e2 fis a g } \\ {
          cis,8 g e g 
          d' a fis a fis' d a d 
          e cis g cis 
      }>> }
    <<{ e2 } \\ { cis8 g e g }>>
    <<{ fis' a cis, e } \\ { d4 }>> d8 fis a, cis
    
    b d fis, a g b e, g
    fis a d, fis e g cis, e
    d2 <<{ a''2 g e fis a g e } \\ 
      { fis8 d a d
        e cis g cis cis g e g
        d' a fis a fis' d a d
        e cis g cis cis g e g }>>
    <<{ fis' a cis, e } \\ { d4 }>>
    d8 fis a, cis
    
    b d fis, a g b e, g
    fis a d, fis e g cis, e
    d' a b cis d e fis g
    a2 a
    b, b'
    
    r8 b a g fis e d cis
    d a b cis d e fis g
    a2 a
    b, b'
    
    r8 b a g fis e d cis
    d b a g fis e d cis
    d b a g \clef bass fis e d cis
    d1 \clef treble
  }
  
  \repeat volta 2 {
    d''1
    b2 d
    a d
    b d
    
    a4 <ais g'> <b fis'> <cis e>
    <<{ d1 ~ d2 cis } \\ { fis,2 g1 }>>
    fis2 b
    
    g b
    fis d'~
    <b d> <cis e>
    r8 cis ais fis e' cis fis, e'
    
    d b fis b d b fis eis
    cis' ais fis ais e' cis fis, cis'
    d b fis b d b fis eis
    cis' ais fis ais cis fis, cis cis'
    
    d fis, d fis d' dis, d fis
    d' gis, d gis d' gis, d gis
    d' gis, d gis d' gis, e gis
    d' gis, f gis d' a f a
    
    d b f b c a f b
    d b e, b' c a e a
    c a e a b gis e b'
    c a e a dis fis, e fis
    
    e' g, e g e' a, e a
    e' b g b e b g b
    dis b fis b dis b fis b
    dis c a c e c a c
    
    fis dis a dis g e a, e'
    a fis b, fis' g e b e
    g e b e fis dis b dis
    g e b e a fis b, fis'
    
    b e, b e b' d, b d
    b' e, c e a e c e
    a e c e g e c e
    fis d a d e c g c
    
    d a fis a c a d, a'
    b g d g d' g, d g
    c a d, a' b g d g
    e' fis, e fis d' b d, b'
    
    c a d, a' b g d g
    a2-\prall
    \repeat unfold 2 {
      <<{ d'2 c a b d c a } \\ 
        { b8 g d g
          a fis c fis fis c a c
          g' d b d b' g d g
          a fis c fis fis c a c }>>
      <g' b> d' fis, a g b d, fis
      e g b, d c e a, c
      b d b g a d g, fis
      g2
    }
    
    \repeat unfold 2 {
      d'2 e f g a
      b8 d fis, a g b d, fis
      e g fis e d c b a
    } \alternative {
      { g2 }
      { g8 }
    } 
    
    g'8 a b a4.-\prall g16 fis
    g8 g, a b a4.-\prall g16 fis
    g8 g, a b a4.-\prall g16 fis
    g1
  }
}
 
left = \relative c'' {
  \global
  
  \repeat volta 2 {
    R1 R1
    g4.-\prall fis8 g d b g
    e c' fis, d' g, e' a, fis'
    b,2. g4
    c2. a4
    b2. g4
    
    a2 d,
    r8 g a g b g d' g,
    e' g, fis g c g e' g,
    d' g, fis g b g d' g,
    
    c g fis g a g c g
    b2. <b d>4
    <a c>2. q4
    <g b>2. q4
    
    <c e> <b d> <a c> <g b>
    d2 r
    r r4 <a' a'>
    <bes a'> <bes g'> q2
    
    r2 r4 <bes g'>
    <a g'> <a f'> q2
    r2 r4 <a f'>
    
    <g f'> <g e'> q2
    r2 r4 <g e'>
    <f e'> <f d'> q2
    r2 <f d'>
    
    <g d'> r
    q <gis d'>
    <a e'> a,
    r <f' d'>
    
    <g d'> r
    <g d'> <gis d'>
    <a e'> r
    r d,
    
    e a,
    d, fis'
    e a, d fis
    
    g g, 
    a' a,
    d, d'
    e a,
    
    d, fis'
    e a,
    d fis
    g g,
    
    a' a,
    d, r
    \repeat unfold 2 {
      \repeat unfold 2 { <<{ fis''2 } \\ { d8 a fis a }>> }
      g g' e cis d b a g
      a,1
    } \alternative {
      { d,2 r }
      { d' a }
    } d a
    d,1
  }
  
  \repeat volta 2 {
    r8 d'' cis d fis d cis d
    g d cis d g d cis d
    fis d cis d fis d cis d
    g d cis d g d cis d
    
    fis g e fis d e cis d
    r b ais b d b a b
    e b ais b e b ais b
    d b ais b d b ais b
    
    e b ais b e b ais b
    d e cis d b cis a b
    g a fis g e g fis e
    fis1
    
    \repeat unfold 4 { fis,2 fis' }
    b, b'
    e,, e'
    e, e'
    d, d'
    
    d, d'
    e, e'
    e, e'
    a, a'
    
    a, a'
    b, b'
    b, b'
    a, a'
    
    a, a'
    b, b'
    b, b'
    e, fis
    
    g e 
    a a,
    c a
    d e
    
    fis d
    g b
    a g
    c b
    
    a g
    d b
    a d
    g, b
    
    a d 
    g, b 
    c c'
    d d,
    
    g, b
    a d
    g, b
    a d
    
    g, b
    c c'
    d d,
    g, 
    
    \repeat unfold 2 {
      <<{ b'2 c d e fis } \\
        { g,8 b, b g'
          a c, c a' b d, d b'
          c e, e c' d fis, fis d' }>>
      <g, g'>2 <b g'>
      c, d
      g,
    } d'
    g d
    g, d
    g1
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
