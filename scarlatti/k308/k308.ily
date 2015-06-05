\version "2.18.2"

\header {
  title = "K308"
  meter = "Cantabile"
  tagline = ##f
}

global = {
  \key c \major
  \time 2/2
}

right = \relative c''' {
  \global
 
  \repeat volta 2 {
    g4 ~ g16 e f g e4 ~ e16 c d e
    c2-\prall r4 e
    e8 d a' g \appoggiatura c,4 b2-\prall
    
    c2 r4 c
    c8 b e d \appoggiatura g,4 f2
    e-\prall r4 c'
    c16( b e d) d2 f,4

    f16( e a g) g2 c4
    c16( b e d) d2 f,4
    f16( e a g) g2 e'4
    e16( d f e) d2 a'4
    
    a16( gis b a) d,2 d4
    d16( c e d) c2 g'4
    g16( fis a g) c,2 c4
    
    c16( b e d) d2 g,4
    g16( fis b a) a2 c4
    c16( b e d) d2 g,4
    g16( fis b a) a2 c4
    
    c16( b e d) d2 g,4
    g16[( fis a gis] b a c b) e4 g,
    g-\prall fis r2-\fermata
    
    \repeat unfold 2 {
      r8 g'8 \acciaccatura fis e d \acciaccatura e d cis d e
      r e \acciaccatura d c b \acciaccatura c b a b c
      r d \acciaccatura c b a \acciaccatura b a g a b
      e c e, a g4 fis-\prall
    }
    
    \repeat unfold 2 { r8 g16 a b[ c d e] e8 d r4 }
    r8 g,16 a b[ c d e] e8 d4 d8
    \repeat unfold 2 { 
      \acciaccatura e d[ c16 b] \acciaccatura d8 b[ a16 g] \acciaccatura a8 g[ fis16 e]
    } \alternative { {a8 d } { a4-\prall } }
    g1-\fermata
  }
  
  \repeat volta 2 {
    d'4 ~ d16 b c d b4 ~ b16 g a b
    g2-\parenthesize-\prall r4 f'4
    f16( e a g) g2 bes,4
    bes16( a d c) c2 f4
    
    f16( e a g) g4.
    <<{ s8 gis4 a2 ~ a8 g f e } \\ { f8 e d d cis cis d e4 }>>
    f8( d b gis) f'( e e d)
    
    e( c a e) e'( d d c)
    c b d c <<{ s4 dis e2 ~ e8 d c b } \\ { c b b a a gis gis a b4 }>>
    c8 e \appoggiatura d16 c8 b \appoggiatura c16 b8 a b c

    r8 f \appoggiatura e16 d8 c \appoggiatura d16 c8 b c d
    r8 g \appoggiatura f16 e8 d \appoggiatura e16 d8 c d e
    c16[ b d c] e d f e a4 c,
    c-\prall b r2-\fermata
    
    \repeat unfold 2 {
      r8 c' \appoggiatura b16 a8 g \appoggiatura a16 g8 fis g a
      r a \appoggiatura g16 f8 e \appoggiatura f16 e8 d e f
      r g \appoggiatura f16 e8 d \appoggiatura e16 d8 c d e
      a f a, d c4 b-\prall
    }
    
    \repeat unfold 2 { r8 c16 d e[ f g a] a8 g r4 }
    r8 c,16 d e[ f g a] a8 g4 g8
    \appoggiatura a16 g8[ f16 e] \appoggiatura f e8[ d16 c] \appoggiatura d c8[ b16 a] d8 g
    \appoggiatura \parenthesize a16 g8[ f16 e] \appoggiatura \parenthesize f e8[ d16 c] \appoggiatura \parenthesize d c8[ b16 a] d4-\prall
    c1
  }
}
 
left = \relative c' {
  \global
  
  \repeat volta 2 {
    r4 c c c,
    r <c' e> <e g> <c e>
    <f a>2 r4 <d f>
    
    <e g> <d f> <e g> <c e>
    <d f>2. g,4
    c c, e c
    \repeat unfold 2 { 
      r <g' b> <a c> <b d>
      c c, e c
    }

    r <f a> q q
    r <e b'> q q
    r <a e'> q q
    r <d, a'> q q
    
    \repeat unfold 2 {
      r <g b> <a c> <b d>
      c c, d d
    }
    
    r4 <g b> <a c> <b d>
    r <c, c'> q q
    d d, r2-\fermata
    
    \repeat unfold 2 {
      <e' g>4 q r q
      <fis a> q r q
      <g b> q r
      <<{ g r c b a } \\ { b, c c d d }>>
    }
    
    \repeat unfold 2 {
      <<{ g2 } \\ { e4 c}>>
      r4 <<{ d'8 fis, } \\ { d4 }>>
    }
    
    <<{ g2 } \\ { e4 c}>> r4 <d fis>
    \repeat unfold 2 { g <b, g'> <c g'> d }
    g,1-\fermata
  }
  
  \repeat volta 2 {
    r4 g' g g,
    r <g' b>  <a c> <b d>
    r <c e> <d f> <e g>
    r <f, a> < g bes> <a c>
    
    r <bes d> q q
    a a, a a
    r <d b'> q q
    
    r <c a'> q q
    r <f a> q q
    r <e b'> q q
    r <a c> q q
    
    <f d'> q q q
    <e c'> q q q
    <f c'> q <fis c'> q
    <g d'> g, r2-\fermata
    
    \repeat unfold 2 {
      <a' c>4 q r q
      <b d> q r q
      <c e> q r <e, c'>
      <f c'> <f f'> <g e'> <g d'>
    }
    
    \repeat unfold 2 {
      <<{ c2 } \\ { a4 f }>> r
      <<{ g'8 b, } \\ { g4 }>>
    } <<{ c2 } \\ { a4 f }>> r <b d>
    
    <c e> <e, c'> <f c'> <b, g'>
    <c g'> <e, e'> <f f'> <g g'>
    <c, c'>1
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
