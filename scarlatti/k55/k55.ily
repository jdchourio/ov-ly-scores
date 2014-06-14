\version "2.18.2"

su = \stemUp
sd = \stemDown
sn = \stemNeutral
tu = \tieUp
td = \tieDown
tn = \tieNeutral
cstr = \change Staff = "right"
cstl = \change Staff = "left"

global = {
  \key g \major
  \time 3/8
  \override ParenthesesItem #'font-size = #+2
}

right = \relative c''' {
  \global
 
  \repeat volta 2 {
    g8 d b
    g' e c
    g' d b
    a'16 g fis e d c
    b4.
    a16 c b a g fis
    
    d'4.
    a16 c b a g fis
    d'4.
    a16 c b a g fis
    \appoggiatura fis32 g4.
    
    \repeat unfold 2 {
      <<{ d'4 d8 c4-\trill b8 b'4 b8 a4-\trill b8 } \\
        { b,8 d, b' a4-\trill g8 g' b, g' fis4-\trill g8 }>>
    }

    r16 b b, cis d e 
    f gis a gis gis a
    r a a, b cis d
    e fis g fis fis g
    r g cis, d g, bes
    
    \repeat unfold 2 {
      a g' f e a d,
      r g cis, d g, bes
    }
    a g' f e f g
    
    \repeat unfold 2 {
      e4.-\trill ~ 
      e16 d e f gis a
    }
    e4.-\trill ~
    e16 a fis e d cis
    
    b b' g fis e d
    cis b a g fis e
    fis a d fis, e cis'

    \repeat unfold 3 {
      d a fis d fis d'
      e cis a e g cis
    }
    <<{ d4. } \\ { fis,16 e fis g a g }>>
    a b a g fis e
    fis' \repeat unfold 3 {
      d a fis' a fis
      g e a, e' g e fis 
    }
    e fis g a g
    
    a b a g fis e
    d a' fis e d cis
    b g' fis e d cis
    d a fis e d cis
    b g' fis e d cis
    d4.
  }
  
  \repeat volta 2 {
    d'8 a fis
    d' b g
    d' a fis16[ e']
    dis8 a e'
    fis16 c b a g fis
    
    \repeat unfold 2 {
      b' g fis e dis e
      fis c b a g fis }
    b' a gis f e d
    cis bes a g f e
    
    \repeat unfold 2 {
      a' f e d cis d
      e bes a g f e }
    fis g a bes c d
    ees4.-\trill
    fis,16 g a bes c d
    ees4.-\parenthesize-\trill
    
    \repeat unfold 2 {
      b16 c d ees f g 
      f4.-\parenthesize-\trill }
    b,16 c d ees f g 
    f aes g f ees d
    
    g f ees d c bes
    \repeat unfold 2 {
      a fis' g bes, a bes}
    a8 c d
    ees c g'
    fis a bes
    
    c a g
    fis c d
    ees c g'
    fis a bes
    c a g
    fis16 ees d c bes a
    
    bes d c bes a g
    \repeat unfold 2 {
      r16 c fis, g c, ees
      d c' bes a d g, }
    r16 c fis, g c, ees
    
    d c' bes a bes c
    \repeat unfold 2 { 
      a4.-\parenthesize-\trill ~
      a16 g a bes cis d }
    a4.-\parenthesize-\trill ~
    
    a16 d b a g fis
    e e' c b a g'
    fis e d c b a
    b c d c b a
    
    \repeat unfold 3 {
      g' d b g b g'
      a fis d a c fis }
    <<{ g4. } \\ { b,16 a b c d c }>>
    d e d c b a
    
    \repeat unfold 3 {
      b' g d b d b'
      c a fis d fis c' }
    
    b a g fis g d
    e c b a g fis
    g d' b a g fis
    e c' b a g fis
    g[ d] \clef bass b a g fis
    e c' b a g fis
    g4.
  }
}
 
left = \relative c'' {
  \global
  
  \repeat volta 2 {
    g4. g g fis
    g16 fis e d c b
    c8 d c
    
    b16 a g fis e d
    c8 d c
    b16 a g fis e d
    c8 d d
    g4.
    
    \repeat unfold 2 {
      r4 b'8
      a d, g
      r4 g8
      d' d, g,
    }
    
    g''4. f f <e g> 
    \repeat unfold 2 {
      <e g>4 d8 cis4 d8
    }
    <e g>4 d8 
    cis4 <d f>8
    
    \repeat unfold 2 {
      g,16 bes a d cis g' f4. }
    g,16 bes a d cis g' 
    fis4.
    
    g4.
    fis8 a, cis
    d g, a
    \repeat unfold 3 {
      d,, d' a' a,, a' a' }
    
    d, e fis
    g a a,
    d, d' a' 
    a,, a' a'
    \repeat unfold 2 {
      d,, d' a' a,, a' a' }

    \repeat unfold 3 {
      d, e fis g a a, }
    d,4.
  }
  
  \repeat volta 2 {
    d'' d d c
    \repeat unfold 2 {
      b8 b, dis' 
      e g, a }
    
    b b, dis' 
    e e, gis
    \repeat unfold 2 {
      a a, cis' d f, g }
    
    a a, cis'
    d4.
    \repeat unfold 2 {
      c16 ees a, c fis, a
      d,4. }
    
    \repeat unfold 2 {
      d'16 f b, d f, aes d,4. }
    <g, g'>4.
    
    c8 c' cis
    d, d' cis
    d, d' cis
    d16 g fis g fis g
    c, g' fis g fis g
    d g fis g fis g
    
    ees g fis g fis g
    d g fis g fis g
    c, g' fis g fis g
    d g fis g fis g
    ees g fis g fis g
    d8 d, fis'
    
    g g, bes
    \repeat unfold 3 {
      <a c>4 g8
      <fis c'>4 g8 }
    
    \repeat unfold 2 {
      c,16 ees d g fis c' bes4. }
    c,16 ees d g fis c'
    
    b4. c
    d8 d, fis 
    g c, d
    g, \repeat unfold 3 {
      g' d' d,, d' d' g,, }
    a b c d d,
    
    \repeat unfold 3 {
      g g' d' d,, d' d' }
     
    g,, a b
    c d d,
    \repeat unfold 2 {
      g a b c d d, }
    g4.
  }
}
