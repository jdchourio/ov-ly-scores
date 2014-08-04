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
  \key d \minor
  \time 2/4
  \override ParenthesesItem #'font-size = #+2
}

right = \relative c'' {
  \global
 
  \repeat volta 2 {
    <a d f>4 e'8 d16 cis
    d8 a <<{ bes4 ~ bes8 g16 f g8 a } \\
      { r8 d,8 d4 cis }>>
    <<{ f8 e16 f } \\ { d4 }>> d
    
    <a' d f>4 e'8 d16 cis
    d8[ gis a a,]
    c-\trill b16 a b8 gis
    a[ e f-\trill e]
    <gis b>[ e f-\parenthesize-\trill e]
    
    <a c>[ e f-\parenthesize-\trill e]
    <b' d>[ e, f-\parenthesize-\trill e]
    \sd <c'e> e, e' d16 c \sn
    b8-\trill a16 b e,8 gis'
    
    a a, e'-\trill d16 c
    b8-\parenthesize-\trill a16 b e,8 gis
    a4 r
  }
  
  \repeat volta 2 {
    c4 c \repeat unfold 3 { 
      c8 d16 c f8 c }
    d8-\trill[ c bes a]
    g[ f e d]
    c'[ bes a g]
    
    f f' g f16 e
    f,8 g <<{ a4 ~a8 bes16 c bes8 a } \\
      { r8 ees d4 }>>
    bes'8 fis
    
    <<{ g4 ~ g8 a16 bes a8 g } \\
      { r8 d cis4 }>>
    f8 a <<{ d4 ~ d8 e16 f e8 d } \\
      { r8 d, g2 }>>
    <a cis e>8[ a bes-\parenthesize-\trill a]
    <cis e>[ a bes-\parenthesize-\trill a]
    
    <d f>[ a bes-\parenthesize-\trill a]
    <e' g>[ a, bes-\parenthesize-\trill a]
    <f' a>[ a, bes' a]
    <<{ g[ f e d] } { bes a g f }>>
    <<{ d' cis d g, } \\ { d4 d }>>
    
    <d f a d>4 <e g a cis>
    <<{ d'8[ a bes-\trill a] } \\ { f4 }>>
    <cis' e>8[ a bes-\trill a]
    <d f>[ a bes-\trill a]
    <e' g>[ a, bes-\trill a]
    
    <f' a> a, bes'16 d, a' c,
    g' bes, f' a, e' g, d' f,
    d'8 cis d g,
    <d f a d>4 <e g a cis>
    <d f a d> r
  }
}
 
left = \relative c {
  \global
  
  \repeat volta 2 {
    <d a' d>4 <a e' a>
    <d f a> r8 \once \sd <g, d' g>
    <a d a'>4 <a e' g>
    <d f a>4.
    <e g>8
    
    <d f a>4 <a e' a>
    <f' a d> r8 q
    <e a c>4 <e b' d>
    <a, e' a> r8 q
    <gis e' a b>4 r8 q
    
    <a e' a>4 r8 q
    <b d e gis>4 r8 q
    <c e a>4 r8 q
    <d a' b>4 <e gis a b>
    
    <f a>4 r8 <c e a>8
    <d a' b>4 <e gis b>
    <a, e' a>4 a'16 g! f e
  }
  
  \repeat volta 2 {
    <f, f'>4 <e' g c>
    \repeat unfold 2 {
      <f a c> r8 <e g c> }
    f4 f,8 \once \sd f' 
    bes[ a g f]
    e[ d c bes]
    a[ g f e]
    
    d4 c
    f r
    <fis d' fis> <d d'>
    <g bes d g> r8 q
    
    <a d e g a>4 q
    <d f a> r8 q
    <bes d g a>4 <g bes d g a>
    <a cis e g a> r8 q
    <cis e g a>4 r8 q
    
    <d f a>4 r8 q
    <e g a cis>4 r8 q
    <f a d>4 r8 q
    <g bes d>4 r8 \once \sd <g, d' g>
    <a d e a>4 <<{ <d g a>4 } \\ { bes8 g }>>
    
    <a d a'>4 <a d e g a>
    <d f a> r8 q
    <cis e g a>4 r8 q
    <d f a>4 r8 q
    <e g a cis>4 r8 q
    
    <f a d>4 r8 q
    <g bes d>4 r8 \once \sd <g, d' g>
    <a d e a>4 <<{ <d g a>4 } \\ { bes8 g }>>
    <a d a'>4 <a d e g a>
    <d f a> r
  }
}

\header {
  title = "K64"
  meter = "GAVOTA"
  piece = "Allegro"
  tagline = ##f
}
