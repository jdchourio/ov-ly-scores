\version "2.18.2"

\header {
  title = "K341"
  meter = "Allegro"
  tagline = ##f
}

global = {
  \key a \minor
  \time 3/8
}

right = \relative c''' {
  \global
 
  \repeat volta 2 {
    a4.
    c16 a b gis a e
    f d e c d b
    c a d a f' a,
    a8 gis4-\prall
    c16 a d b e c
    
    f d e c d b
    c a b d a gis
    a4.
    c16 a d b e c
    f8-\prall e4
    c16 a d b e c
    f8-\prall e4
    
    c16 a d b e c
    f d g e a c,
    b8 c8.-\prall b32 c
    c8 d4
    g16 d e c d a
    b4.-\prall
    a'16 e f c d a
    
    b4.-\prall
    g'16 d e b c g
    a[ f] f' d a' f
    e a g f e d
    c8 g' g
    g f4-\prall
    
    e8 g g
    g f4-\prall
    e16 a g b, c e
    d a' g c, d b
    c8 g g
    g f4-\prall
    
    e8 g g
    g f4-\prall
    e16 c' b a g a' 
    g f e d c b
    <c c'>4.
    q q
    
    <<{ c'16[ a] } \\ { c,8 }>> g'16 f e d
    <c c'>4. q q
    <<{ c'16[ a] } \\ { c,8 }>> g'16 f e d
    c4.
  } \break

  \repeat volta 2 {
    e16 c g' e c' c,
    b c d4
    f16 d a' f d' d,
    c d e4
    e16 b c a b fis
    gis4.-\prall
    
    f'16 d e b c a
    gis4.-\parenthesize-\prall
    e'16 b c gis a e
    f d a' f d'[ b]
    f' d e b c a
    gis fis e8 d'
    c16 b a8 g'
    
    f16 e d8 a'
    gis16 fis e8 d'
    c16 b a8. g16
    f e d c b a
    gis16( f'8[ e d16]) ~
    d c8 b16 a gis
    a8 e' e
    
    e d4-\prall
    c8 e e
    e d4-\prall
    c16 e gis, b a c
    b f' e d c b
    
    \repeat unfold 2 {
      <a a'>4. q q
      <<{ a'16[ f] } \\ { a,8 }>> e'16 d c b
    } a4.
  }
}
 
left = \relative c {
  \global
  
  \repeat volta 2 {
    a8 c e
    a b c
    d b gis
    a f d
    e e'16 d c b
    a8 b c
    
    d gis, e
    a d, e
    a16[ e c e] a,8
    a'8 b c
    \repeat unfold 2 {
      d16 b c a b gis
      a8 b c }
    
    d e f 
    g e c
    g4 g,8
    g'4.
    g16 g' f e d e
    f4.
    
    f,16 f' e d c d
    e4.
    f,
    g4 g,8
    \repeat unfold 2 {
      c'16 g' e g c, g'
      b, d g, d' b d }
    
    c8 d e
    f g g,
    \repeat unfold 2 {
      c,16 g' e g c, e
      b d g, d' b d }
    c8 d e 
    f g g,
    
    \repeat unfold 2 { 
      c16 c' e, c' c, c'
      f, c' a c f, c'
      e, c' c, c' e, c'
      f,8 g g, }
    c4.
  }
  
  \repeat volta 2 {
    c'4.
    g8. g'16 f e
    d4.
    a8. a'16 gis fis
    e4.
    e,16 e' d c b c
    
    d4.
    d,16 d' c b a b
    c4.
    d
    d,
    e8. d16 c b
    <a a'>8. g'16 f e
    
    <d d'>8. c'16 b a
    <e e'>8. d'16 c b
    <a a'>8. g'16 f e
    <d, d'>4.
    q8 <c c'> <b b'>
    <a a'> d e
    a16 e' c e a, e'
    
    gis, b e, b' gis b
    a e' c e a, e'
    gis, b e, b' gis b
    a8 b c
    d e e,
    
    \repeat unfold 2 {
      a,16 a' c, a' a, a'
      d, a' f a d, a'
      c, a' a, a' c, a'
      d,8 e e,
    } a4.
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
