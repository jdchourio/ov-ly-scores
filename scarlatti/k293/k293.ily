\version "2.18.2"

\header {
  title = "K293"
  meter = "Allegro"
  tagline = ##f
}

global = {
  \key b \minor
  \time 2/2
}

right = \relative c'' {
  \global
 
  \repeat volta 2 {
    r8 b d fis b2 ~
    b8 fis e fis g b, cis e
    fis ais, b d e gis, ais! cis
    
    d2. g4 ~
    g fis2 e4 ~
    e d2 cis4 ~
    cis8 d cis d e d cis b
    
    \repeat unfold 2 { cis fis cis d e d cis b }
    ais fis ais cis fis e d cis
    d b d fis b a g fis
    
    <<{ g2 a8 g fis e
        fis2 g8 fis e d } \\
      { e8 d cis b cis2
        d8 cis b a b2 }>>
    e8 d cis b s2
    a'2 b
    
    g a
    fis g
    e fis
    d e
    
    cis d8 cis b a
    b4 g'8 fis e d cis b
    b cis a' g fis e d cis
    cis d d' cis b a gis fis
    
    <<{ cis'8 b a gis a2 } \\ { eis2 fis8 e d cis }>>
    <<{ b'8 a gis fis gis2 } \\ { d2 e8 d cis b }>>
    <<{ a'8 gis fis eis fis2 } \\ { cis2 d8 cis b a }>>
    <<{ gis'8 fis eis dis eis2 } \\ { b2 cis8 b a gis }>>
    
    <<{ fis'8 cis fis gis a2 } \\ { a,4 }>>
    b'2 gis
    a fis
    gis eis
    
    fis d ~ 
    d8 d cis b a gis fis eis
    fis b a gis a fis gis! eis
    fis4 cis''8 b a gis fis e
    
    d cis <<{ b'8 a } \\ { b,4 }>> gis'8 fis e d
    cis b <<{ a'8 gis } \\ { a,4 }>> fis'8 e d cis
    b a <<{ gis' fis } \\ { gis,4 }>> eis'8 d cis b
    \acciaccatura { b8 } a2 r4 d ~
    
    d b2 cis4 ~ 
    cis8 b a gis
    <<{ cis2 ~ cis8 b a gis } \\ { fis8 e d cis d2 }>>
    a'8 fis gis! eis
    fis4 cis''8 b a gis fis e
    
    d cis <<{ b' a } \\ { b,4 }>> gis'8 fis e d
    cis b <<{ a' gis } \\ { a,4 }>> fis'8 e d cis
    b a <<{ gis' fis } \\ { gis,4 }>> eis'8 d cis b
    \appoggiatura { b8 } a2 r4 d ~
    
    d b2 cis4 ~ 
    cis8 b a gis
    <<{ cis2 ~ cis8 b a gis } \\ { fis8 e d cis d2 }>>
    a'8 fis gis! eis
    fis4 fis'2-\prall fis4-\parenthesize\prall
    
    r8 cis' d b \acciaccatura { cis } b a \acciaccatura { b } a gis
    a4 fis2-\prall fis4-\parenthesize\prall
    r8 gis a b \acciaccatura { b } a gis fis eis
    fis4 fis,-\prall r fis-\prall
    
    r8 cis' d b \acciaccatura { cis } b a \acciaccatura { b } a gis
    a4 fis2-\prall fis4-\prall
    r8 gis a b \parenthesize \acciaccatura { b } a gis fis eis
    fis4 r r2
  }
  
  \repeat volta 2 {
    r8 fis ais cis fis2 ~
    fis8 cis b cis \acciaccatura e8 d4 cis8 b
    \repeat unfold 2 {
      \acciaccatura d8 cis4 b8 cis \acciaccatura e8 d4 cis8 b
    }
    
    ais8 fis ais cis fis e d cis
    d b d fis b a g fis
    <<{ g2 a8 g fis e } \\ { e d cis b cis2 }>>
    <<{ fis2 g8 fis e d } \\ { d cis b a b2 }>>
    
    e8 d cis b s2
    fis'2 g 
    e fis
    d e
    
    cis d8 cis b a
    b d e fis e d cis b
    cis a cis d e2
    d b
    
    cis a
    b gis
    e'8 d cis b a g fis e
    fis' e d cis b a gis fis
    
    gis' fis e d cis b a gis
    ais' g fis e d cis b ais
    ais b cis d \acciaccatura e8 d4 cis8 b
    <<{ fis'8 e d cis d2 } \\ { ais b8 a g fis }>>
    
    <<{ e' d cis b cis2 } \\ { g a8 g fis e }>>
    <<{ d' cis b ais b2 } \\ { fis g8 fis e d }>>
    <<{ cis' b ais gis ais!2 } \\ { e fis8 e d cis }>>
    <<{ b' fis b cis } \\ { d,4 }>> d'2
    
    e cis
    d b
    cis ais
    b8 d fis e d cis b a
    
    g fis <<{ e' d } \\ { e,4 }>> cis'8 b a g
    fis e <<{ d' cis } \\ { d,4 }>> b'8 a g fis
    e d <<{ cis' b } \\ { cis,4 }>> ais'8 g fis e
    \acciaccatura e8 d4 r r g' ~
    
    g e2 fis4 ~ fis8 e d cis 
    <<{ fis2 ~ fis8 e d cis } \\
      { b a g fis g2 }>> 
    d'8 b cis ais
    b d fis e d cis b a
    
    g fis <<{ e' d } \\ { e,4 }>> cis'8 b a g
    fis e <<{ d' cis } \\ { d,4 }>> b'8 a g fis
    e d <<{ cis' b } \\ { cis,4 }>> ais'8 g fis e
    \appoggiatura e8 d4 r r g' ~
    
    g e2 fis4 ~ fis8 e d cis 
    <<{ fis2 ~ fis8 e d cis } \\
      { b a g fis g2 }>> 
    d'8 b cis ais
    
    \repeat unfold 2 {
      b4 b'2-\prall b4-\prall
      r8 fis g e \acciaccatura fis e d \acciaccatura e d cis
      d4 b'2-\prall b4-\parenthesize\prall
      r8 cis, d e \parenthesize \acciaccatura e d cis b ais
    }
    
    b8 fis' g ais, b fis' e cis
    d fis, g e fis b e, ais
    b fis g b, b4 ais
    \appoggiatura ais8 b2 r
  }
}
 
left = \relative c {
  \global
  
  \repeat volta 2 {
    b2 r8 b' d fis
    b2 e,
    d cis
    
    b8 fis' e fis g b, cis e
    fis a, b d e g, a cis
    d fis, g b cis e, fis ais
    b2 g
    
    \repeat unfold 2 { fis4 fis' g, e' }
    fis,2 ais
    b d
    
    e a,
    d g,
    a \clef treble a'8^"G" g fis e
    <<{ a2^"G" b8 a g fis } \\ { fis e d cis d2 }>>
    
    <<{ g2 a8 g fis e } \\ { e d cis b cis2 }>>
    <<{ fis2 g8 fis e d } \\ { d cis b a b2 }>>
    <<{ e2 fis8 e d cis } \\ { cis b a g a2 }>>
    \clef bass
    <<{ d2 e8 d cis b } \\ { b a g fis g2 }>>
    
    <<{ cis2 } \\ { a8 g fis e }>> <fis d'>2
    <g d'> gis
    a ais
    b d
    
    cis fis,
    b e,
    a d,
    gis <cis, cis'>
    
    fis \clef treble fis'8 e d cis
    <<{ b'8^"G" a gis fis gis!2 } \\ { d2 e8 d cis b }>>
    <<{ a'8 gis fis eis fis2 } \\ { cis2 d8 cis b a }>>
    <<{ gis'8 fis eis dis eis!2 } \\ { b2 cis8 b a gis }>>
    
    \clef bass
    <<{ fis'8 e d cis d2 } \\ { a2 b8 a gis fis }>>
    <eis cis'>2 fis4 cis
    d <<{ b' a gis } \\ { b, cis2 }>>
    <fis, fis'>2 a'
    
    b e,
    a d,
    gis cis,
    r4 fis'8 e d cis b a
    
    gis fis eis d cis b a gis
    fis2 a
    b cis
    <fis, fis'> a'
    
    b e,
    a d,
    gis cis,
    r4 fis'8 e d cis b a
    
    gis fis eis d cis b a gis
    fis2 a
    b cis
    fis d
    
    b cis
    fis d
    b cis
    <fis, fis'> d'
    
    b cis
    fis d
    b cis
    <fis, fis'>4 r r2
  }
  
  \repeat volta 2 {
    q2 ~ fis'8 fis ais cis
    fis2 b,4 g'
    ais, fis' b, g'
    ais, fis' b, g
    
    fis2 ais
    b d
    e a, d g,
    
    a \clef treble a'8^"G" g fis e
    <<{ fis2 g8 fis e d } \\ { d cis b a b2 }>>
    <<{ e2 fis8 e d cis } \\ { cis b a g a2 }>>
    \clef bass
    <<{ d2 e8 d cis b } \\ { b a g fis g2 }>>
    
    <<{ cis2 } \\ { a8 g fis e }>> fis2
    g gis
    a <<{ cis } \\ { a8 gis fis e }>>
    <<{ d' cis b a b2 } \\ { fis gis8 fis e d }>>
    
    <<{ cis' b a gis a2 } \\ { e fis8 e d cis }>>
    <<{ b' a gis fis gis2 } \\ { d e8 d cis b }>>
    <<{ cis2 a' } \\ { cis,1}>>
    <d a'>2 <dis b'>
    
    <e b'> <eis cis'>
    <<{ cis' fis ~ fis e } \\ { fis,1 g }>>
    <fis fis'>2 b
    
    e, a
    d, g
    cis, fis
    b, b'8 a g fis
    
    <<{ e' d cis b cis2 } \\ { g a8 g fis e }>>
    <<{ d' cis b ais b2 } \\ { fis g8 fis e d }>>
    <<{ cis' b ais gis ais2 } \\ { e fis8 e d cis }>>
    <d b'>2 b
    
    \repeat unfold 2 {
      e <a, a'>
      d <g, g'>
      cis <fis, fis'>
      b4 \clef treble b''8^"G" a g fis e d
    
      \clef bass cis b ais g fis e d cis
      b2 d
      e fis
    } \alternative {
      { b b, }
      { b' g }
    }
    
    e fis 
    b g
    \repeat unfold 2 {
      e fis
      <b, b'> g'
    }

    e fis
    \repeat unfold 2 { b,4 e d cis }
    b e fis fis,
    b2 r
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
