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
  \key c \major
  \time 12/8
}

right = \relative c'' {
  \global
 
  \repeat volta 2 {
    r8 g e' g f e r f, b f' e d
    r8 e, g e' d c r d, f d' c b
    r e, c r g' e r c' g r c e
    
    d4.-\trill r8 e, c r g' e r c' e
    d4.-\trill r8 e, c r g' e r c' e
    d4.-\trill ~ d8 c d e c a g b d
    
    c a fis g b d e d c b a g
    fis d a' fis d fis a fis d d fis a
    b g d d g b c a fis c fis c'
    
    d b g d b' d e c g \sd e c' e \sn
    fis d fis g d b e d c b c a \su 
    << { s b c d c b s a b c b a } { g g a b a g d fis g a g fis } >>
    
    << { s b c d c b s a b c b a } { d, g a b a g d fis g a g fis } >>
    \sn << { b c d } \\ { g,4. } >> e'8 fis g fis e d c b a
    b c d c d e d c b a g fis
    g' d b \su g d \cstl b g d b g4. \sn 
  }
  
  \repeat volta 2 {
    \cstr r8 b'' c d c b r b c d c b
    r b c d c b r d e f e d
    r b c d c b e d e d c d
    
    r c d e d c e, b' c d c b
    e, c' d e d c e, b' c d c b
    c c d e fis g a g fis e d c
    
    b b c d c b \su d, a' b c b a
    d, b' c \sd d c b \su d, a' b c b a
    \sn b b cis d cis d e f g f e f
    
    e e f g f e r g a bes a g
    r e f g f e r g a bes a g
    r e f g f e a gis a g fis g
    
    f! e f e d e d c d c b c
    b d e f g a g fis g f e f
    e d e d c d c e d c b a
    
    \sd b g d' b g d' b g d' b g d'
    c g e' c g e' b f d' b f f'
    e c g e' c g d' b g d' b g
    
    \sn c a g c a g d' b g d' b g
    d' b g d' b g e' c g e' c g
    f' d g, f'd g, e' c d e f g
    
    a g f e d c b' g b c g e
    a g f << { e f d } \\ { c } >> r e, c r g' e
    r c' g r e' c r g' e r c' g

    r e, c r g' e r c' g r e' c
    r g' e r c' g a f d c e g
    f d b c d e a, f' e d c b
    
    r << { e f g f e s d e f e d } { c d e d c g b c d c b } >>
    r << { e, f g f e s d e f e d } { c d e d c g b c d c b } >>
    r << { e' f g f e s d e f e d } { c d e d c g b c d c b } >>
    
    << { e f g a[ b c] } \\ { c,4. } >>  \appoggiatura c'32 b8 a g f e d
    e f g f g a g f e d c b
    c' g e \su c g e \cstl c g e c g e
    c1.-\fermata
  }
}
 
left = \relative c {
  \global
  
  \repeat volta 2 {
    c4. \clef treble e' f8 s4 d4.
    e8 s4 c4. d8 s4 b4.
    c8 s4 e8 s4 g8 s4 c8 s4
    
    g,4. c8 s4 e8 s4 g8 s4
    g,4. c8 s4 e8 s4 g8 s4
    \clef bass g,4. <b d> <c e> <b d>    
    <a c> <g d'> c, c'
    
    << { \sn s4. \clef treble d' s \clef treble fis
        s \clef treble g s \clef treble a
        s \clef treble b s \clef treble c
      } \\
      { \sn \clef bass d,,,4. s \clef bass c s
        \clef bass b s \clef bass a s
        \clef bass g s \clef bass c, s
    } >>
    
    \clef bass d g <c, c'> <d d'>
    g g' d, d'
    g, g' d, d'
    
    g c d, <fis d'>
    <g d'> c, \once \su d d,
    g s s2.
  }
  \once \set Staff.explicitClefVisibility = #end-of-line-invisible 
  
  \repeat volta 2 {
    \clef treble g''8 r r g4. <f a> <f a> 
    <e gis> <e gis> <d gis a b> <d gis a b>
    <e gis> <d e gis> <c e a> <b d e gis>
    
    << { \sn \clef bass a s \clef bass <e, e'> s
         \clef bass <a a'> s \clef bass <e e'> s } \\
       { \sn s \clef treble <a''' c> s \clef treble <gis b>
         s \clef treble <a c> s \clef treble <gis b> } >>
    \clef bass <a,,, a'> <g g'> <fis fis'> <d d'>
     
    << { \sn \clef bass <g g'> s \clef bass <d d'> s
         \clef bass <g g'> s \clef bass <d d'> s } \\
       { \sn s \clef treble <g''' b> s \clef treble <fis a>
         s \clef treble <g b> s \clef treble <fis a> } >>
     r4 r8 <f,! a>4. <e g cis> <d a' d>
     
     \sd <a' cis> <a cis> <g cis e> <g cis e>
     <a cis> <a cis> <g cis e> <g cis e>
     <a cis> <g a cis> \sn <f a d> <e g cis>
     
     <d d'> <e g> <f a> <fis a>
     g <f! b> <e g c> <d f b>
     <c g' c> << { g'2. fis4. } \\ { b,4. a a } >>
     
     << { \sn \clef bass g s \clef bass f! s
          \clef bass e s \clef bass d s
          \clef bass c s \clef bass b s
          \clef bass a s \clef bass g s
          \clef bass f s \clef bass e s
          \clef bass d s \clef bass c } \\
        { \sn s \clef treble g'''' s \clef treble g
          s \clef treble g s \clef treble g
          s \clef treble g s \clef treble g
          s \clef treble g s \clef treble g
          s \clef treble g s \clef treble g
          s \clef treble g } >> c,,
      
     f fis g  e
     f g \clef treble c,8 s4 e8 s4
     g8 s4 c8 s4 e8 s4 g8 s4
     
     c,,8 s4 e8 s4 g8 s4 c8 s4 
     e8 s4 g8 s4 <f, a>4. <e g>
     <d f> <c e> \clef bass <f, f'> <g d'>
     
     <c, c'> s <g g'> s
     <c g'> s g s
     <c c'> s <g g'> s
     
     <c c'> <f f'> <g f'> <b g'>
     <c g'> <f, f'> g g,
     c, s s2.
     s1.
  }
}