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
  \key c \minor
  \time 3/4
}

right = \relative c'' {
  \global
 
  \repeat volta 2 {
    r16 g a b b c b c c8.-\trill b32 c
    \sd \repeat unfold 2 {
      d16 g, a b b c b c c8.-\trill b32 c }
    
    \sn c8 d4. \acciaccatura {d16 ees} f4
    \appoggiatura f32 ees8 d16 c a8 c4 b8
    b c4. d8 ees16 f
    \appoggiatura f32 ees8 d16 c a8 c4 b8
    
    b c4. r4-\fermata
    \repeat unfold 2 {
      g'16 ees c g ees c ees g
      << { c4 ~ c8 d b aes g f } \\ { c'8 aes g4. } >>
    }
    
    r16 ees' d ees g ees d ees ees c b c
    c aes g aes c aes g aes bes c d ees
    f d c d d bes aes bes bes g f g
    
    g ees d ees g ees f g aes bes c d
    ees c b c c aes g aes aes f ees f
    f d c d f d ees f g a b c
    d b a b b g f g g ees d ees
    
    
    \repeat unfold 2 {
      c8 c d ees f16 g aes f
      g f g aes g f ees d ees d c b }
    
    c8 c d ees f16 g aes f
    g^"D" b d f aes8 g ~ g16 f ees d
    c' ees, bes'! d, a' c, g' bes, fis' a, ees' g,
    << { \once \slurDown cis8-( d4-) } \\ { fis,4 } >> a'16 c, a' c, bes' d,
    
    c' ees, bes' d, a' c, g' bes, fis' a, ees' g,
    cis8-( d4-) a'16 c, a' c, bes' d,
    c' ees, bes' d, a' c, g' bes, fis' a, ees' g,
    fis d g d a' d, g d a' d, bes' d,
    
    a' c, g' c, a' c, g' c, a' c, bes' c,
    a' d, g d fis d g d a' d, bes' d,
    a' ees bes' ees, c' ees, bes' ees, a ees g ees
    fis d g d fis d g d fis d g d
    
    fis c g' c, fis c g' c, fis8 g16-\trill fis32 g
    \appoggiatura g64 a4 ~ a16 fis a ees' d c bes a
    \appoggiatura c64 bes8 a16 g e8-( g4 fis8-)
    g16 c ees4 ~ ees d32 c bes a
    
    \appoggiatura c64 bes8 a16 g e8 g4 fis8
    g16 ees' g4 ~ g f32 ees d c
    \appoggiatura c64 bes8 a16 g \once \su <a c>8 <g bes>4 <fis a>8
    g2.
  }
  
  \repeat volta 2 {
    r16 g aes! a bes b c d ees8 f
    d[ b] b c4-\trill b16 c
    \sd d g, aes a bes b c d ees8 f \sn
    d[ b b] c ~ c8.-\trill b32 c
    
    \appoggiatura c32 d4. bes'16 des, bes' des, aes' c,
    g' bes, f' aes, e' g, des' f, c' e, bes' g
    << { bes4 aes8 } \\ { g4 f8 } >> aes'16 c, aes' c, g' bes,
    f' aes, ees' g, d' f, c' ees, bes' d, aes' f
    
    g ees f ees g ees g ees bes' ees, g ees
    f d ees d f d ees d aes' d, f d
    g ees f ees g ees g ees bes' ees, g ees
    f d c d f d ees d aes' d, f d
    
    g ees f ees g ees g ees bes' ees, g ees
    g e f e g e g e bes' e, g e
    aes f g f aes f aes f c' f, aes f
    g e f e g e g e bes' e, g e
    
    aes f g f aes f aes f c' f, aes f
    f d f d aes' d, f d f d f d
    g ees f ees g ees g ees c' ees, g ees
    aes f g f aes f aes f 
    
    
    << { c'4 ~ c8 b4 } \\ { c16 f, aes f d4 } >>
    <f d'>8 <f d'> <g ees'>
    <aes f'> <g ees'> <f d'> <ees c'> <d b'> <ees c'>
    <ees c'> <d b'>4 <d' f>8 <d f> <ees g> 
    <f aes> <ees g> <d f> <g, ees'> <f d'> <ees c'>
    b'16 g c g b g c g b g c g
    
    b f c' f, d' f, c' f, d' f, ees' f,
    \sd d' g, c g d' g, c g d' g, ees' g,
    d' aes ees' aes, f' aes, ees' aes, d aes c aes
    \sn b g a g b g c g b g c g
    
    b f c' f, b f c' f, b8 c16-\trill b32 c
    \appoggiatura c32 d4 ~ d16 g, b d g f ees d
    g ees d ees ees c b c c aes g aes
    aes f e f f d c d d b a b
    
    b g b d f d f b d f, b d
    g ees d ees ees c b c c aes g aes
    aes f e f f d c d d b a b
    r4-\fermata  r 
    << { f''4 \appoggiatura f32 ees8 d16 c } \\ { <g b d>4 <g c> } >> a8 c4 b8
    %<g' b d f>
    %\appoggiatura f'32 << { \stemUp ees8 d16 c } \\ { <g c>4 } >> a8 c4 b8
    
    c16 f aes4 ~ aes g32( f ees d)
    \appoggiatura f32 ees8 d16 c a8 c4 b8
    c16 aes' c4 ~ c bes32 aes g f
    \appoggiatura f32 ees8 d16 c <d f>8 <c ees>4 <b d>8
    c2.-\fermata
  }
}
 
left = \relative c' {
  \global
  
  \repeat volta 2 {
    <c ees>4 <c ees> <c ees>
    <g d'> <c ees> <c ees>
    <g d'> <c ees> <c ees>
    
    <g d'> <g d'> <g d'> 
    <c ees> <f, f'> <g f'>
    <aes f'> < f f'> <b f'>
    <c ees> <f, f'> <g d'>

    c4. c,8 c,4-\fermata
    s2.
    g''4. f'8 ees d
    c4 c, r
    
    g'4. f'8 ees d
    c,4 \clef treble c'''^"G" aes
    f aes f
    r bes g
    
    ees g ees
    r aes f
    d f d
    r g ees
    
    
    \repeat unfold 2 {
      c'16 bes! aes g f8 ees d c
      b4 r r
    }
    
    c'!16 bes aes g f8 ees d c
    r4 \clef bass \repeat unfold 2 <g, d' f>4
    <c ees g> <c ees g> <c ees>
    <d, a' d> <d a' d> <d a' d>
    
    <ees g c d> <ees g c d> <ees g c d>
    <d a' c d> <d a' c d> <d a' c d>
    <ees g c d> <ees g c d> <ees g c d>
    d4 \clef treble a'''^"G" \clef bass <d,,,, d'>
    
    <ees ees'> \clef treble a''' \clef bass <ees,,, ees'>
    <d d'> \clef treble a'''' \clef bass <d,,,, d'>
    <c c'> \clef treble a'''' \clef bass <c,,,, c'>
    <d d'> \clef treble a'''' \clef bass <d,,,, d'>
    
    <ees ees'> \clef treble a''' \clef bass <ees,,, ees'>
    <d d'> d'4 <fis c' d>
    <g bes d> <c, c'> <d c'>
    <ees c'> <c c'> <fis c' d>
    
    <g d'> <c, c'> <d c'>
    <ees c'> <c c'> <fis c' d>
    <g d'> <c, c'> <d d'>
    <g, g'>2.
  }
  
  \repeat volta 2 {
    g'4 r r
    <g f'> <g g'> <g aes'>
    <g g'> r r
    <g f'> <g g'> <g aes'>
    
    <g g'> r r
    r <c, c'> <c, c'>
    <f f'> <f f'> r
    r <bes bes'> bes
    
    <ees, ees'> \clef treble <ees''' g>^"G" <g bes>
    \clef bass bes,,, \clef treble <d'' f> <f aes>
    \clef bass <ees,,, ees'> \clef treble <ees''' g> <g bes>
    \clef bass bes,,, \clef treble <d'' f> <f aes>
    
    \clef bass <ees,,, ees'> \clef treble <ees''' g> <g bes>
    \clef bass <c,,,, c'> \clef treble <e''' g> <g bes>
    \clef bass <f,,, f'> \clef treble <f''' aes> <aes c>
    \clef bass <c,,,, c'> \clef treble <e''' g> <g bes>
    
    \clef bass <f,,, f'> \clef treble <f''' aes> <aes c>
    \clef bass <d,,,, d'> \clef treble <d''' f> <d b'>
    \clef bass <ees,,, ees'> \clef treble <ees''' g> <ees c'>
    \clef bass <f,,, f'> \clef treble <f''' aes> <aes c>
    
    
    \clef bass g,,,4 g' g,
    f f' f,
    g g' g,
    f f' f,
    g \clef treble g'''^"G" \clef bass \once \sd <g,,, g'>
    
    <aes aes'> \clef treble aes''' \clef bass <aes,,, aes'>
    \once \sd <g g'> \clef treble g''' \clef bass <g,,, g'>
    <f f'> \clef treble aes''' \clef bass <f,,, f'>
    <g g'> \clef treble g''' \clef bass \once \sd <g,,, g'>
    
    <aes aes'> \clef treble aes''' \clef bass <aes,,, aes'>
    <g g'> <g g'> r
    r \clef treble c'''^"G" aes
    f d b
    
    g r r
    r c' aes
    f d b
    \clef bass g,,_"G"^\fermata r r
    <c g' c> <f f'> <g f'>
    
    <aes f'> <f f'> <b f'g>
    <c g'> <f, f'> <g f'>
    <aes f'> <f f'> <b f'g>
    <c g'> <f,, f'> <g g'> 
    <c, c'>2.-\fermata
  }
}
