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
  \time 3/8
}

right = \relative c'' {
  \global
 
  \repeat volta 2 {
    c16[ g ees c] g''8
    aes4-\trill g8
    aes,16 c d f ees b
    c8. b16 d c
    ees8 f g
    
    aes16 c, b g' c, f
    g d f ees d c
    \repeat unfold 2 { \appoggiatura d32 c16 b f' ees d c }
    \appoggiatura d32 c16 b g'[ f ees d] 
    d ees c'[ bes aes g]
    
    aes g f ees d c 
    c d bes'[ aes g f]
    g ees f d ees c
    d8 bes' <f aes>
    <ees g> <d f> <c ees>
    
    \clef bass bes,,_"D" \clef treble bes'''[^"D" <f aes>]
    <ees g> <d f> <c ees>
    \clef bass bes,, \clef treble bes'''[ <f aes>]
    <ees g> <d f> <c ees>
    \repeat unfold 3 {
      \clef bass bes,, c d
      ees g, aes
    }
    bes \clef treble bes'''[ aes]
    
    g f <ees fis>
    <d g> c bes
    a ees' g,
    fis d' c
    bes a g
    \repeat unfold 2 {
      \clef bass d,, \clef treble d'''[ c]
      bes a g
    }
    \clef bass d,, fis d
    g bes g
    \clef treble ees''' g ees
    
    \clef bass f,,, a f
    \clef treble d''' f d
    \clef bass ees,,, g ees
    \clef treble c''' ees c
    \clef bass d,,, fis d
    g \clef treble g'''[ f]
    
    ees d <c fis>
    <bes g'> a g
    a16*2/3 bes c <g bes>8 <fis a>
    g16 g' \repeat unfold 7 { fis g } s8
    a,16*2/3 bes c <g bes>8 <fis a>
    g,16 g' \repeat unfold 7 { fis g } s8
    
    a,16*2/3 bes c <g bes>8 <fis a>
    g fis''[ g]
    ees-\trill d r 
    r fis, g
    ees-\trill d r
    \clef bass r fis, g
    a16*2/3 bes c <g bes>8 <fis a>
    g4.
  }
  
  \repeat volta 2 {
    \clef treble \repeat unfold 3 {
      d''16 b f d d'16*2/3[ ees f]
      ees4-\trill d8 }
    
    g,16 d' f ees d c 
    \repeat unfold 2 { \appoggiatura d32 c16 b f' ees d c }
    \appoggiatura d32 c16 b bes' aes g f
    \repeat unfold 2 { \appoggiatura g32 f16 e bes' aes g f }
    
    \appoggiatura g32 f16 e c' bes aes g
    <f aes>8 <e g> <f aes>
    \clef bass c,,_"D" \clef treble c'''[^"D" <g bes>]
    <f aes> <e g> <f aes>
    \clef bass c,, \clef treble c'''[ <g bes>]
    <f aes> <e g> <f aes>
    
    \clef bass \repeat unfold 2 {
      c,, d e f aes, bes }
    c d e
    
    f g aes 
    bes, c d
    ees f g
    aes, bes c
    d ees f
    
    \repeat unfold 3 {
      \clef bass g, \clef treble g'''[ <d f>]
      <c ees> <b d> <c ees> }
    
    \clef bass g,, b g
    c ees c
    f, aes f
    bes d bes
    
    ees, g ees
    aes c aes
    d, f d
    g b g
    c, \clef treble c''''[ bes]
    
    aes g <f b>
    <ees c'> d c
    d16*2/3 ees f <c es>8 <b d>
    c16 c' \repeat unfold 7 { b c} s8
    d,16*2/3 ees f <c es>8 <b d>
    c,16 c' \repeat unfold 7 { b c} s8
    d,16*2/3 ees f <c es>8 <b d>
    c b''[ c]
    
    aes-\trill g r
    r b, c
    aes-\trill g r
    r b, c
    d16*2/3 ees f <c es>8 <b d>
    c4.-\trill
  }
}
 
left = \relative c' {
  \global
  
  \repeat volta 2 {
    R4.
    c16[ g ees c] g''8
    \clef treble aes f g
    c16 c, d f ees b
    c ees d f ees g
    
    f8 g aes
    \repeat unfold 3 { g aes aes }
    g a b
    c, d ees
    
    f g aes
    bes, c d
    ees d c
    \repeat unfold 3 {
      bes16 d c ees d f
      ees g d f c ees
    }
    
    \repeat unfold 3 {
      \repeat unfold 3 { bes16*2/3[ d f] }
      \repeat unfold 3 { bes,[ ees g] }
    }
    bes,16 d c ees d f
    ees g d f c ees
    bes g' a, fis' g, g'
    
    \clef bass 
    <<{ c,, s d s ees s d s e s fis s g s f s ees s }
      { \repeat unfold 9 { s c' } }>>
    \repeat unfold 2 {
      <<{ d, s fis s d s g s f s ees s }
        { \repeat unfold 5 { s d' } s c }>>
    }
    <<{ d, s fis s d s g s bes s g s }
      { \repeat unfold 5 { s d' } s c }>>

    <<{ c, s ees s c s f s a s f s }
      { \repeat unfold 6 { s c'} }>>
    bes d bes d bes d
    ees, d' g, d' ees, d'
    a c a c a c
    <<{ d, s fis s d s g s bes s g s }
      { \repeat unfold 5 { s d' } s c }>>

    c g' bes, g' a, fis'
    g, g' a, fis' bes, d
    c8 d d,
    g4 \clef treble <bes' d>8
    <c ees> <bes d> <a c>
    <g bes> <f a> <ees g>
    
    \clef bass c d d,
    g a <bes d>8
    <c ees> <bes d> <a c>
    <g bes> <f a> <ees g>
    c d d,
    
    g'16 bes a c bes d
    c ees d8 d,
    g,16 bes a c bes d
    c ees d8 d,
    g16 bes a c bes d
    c8 d d,
    g4.
  }
  
  \repeat volta 2 {
    R4.
    \repeat unfold 2 {
      c'16[ aes f c] g8
      g'4. 
    } c16[ aes f c] g8
    
    \clef treble \repeat unfold 3 {
      g''aes aes }
    g <g bes> <g c>
    \repeat unfold 2 { <g bes des> q <aes c> }
    
    <g bes des> <<{ c4 } \\ { c,8 e }>>
    <<{ \repeat unfold 2 { f16 s e s f s c s e s c s } f s e s f s }
      { \repeat unfold 15 { s c' } }>>
    
    \repeat unfold 3 {
      \repeat unfold 3 { c,16*2/3[ e g] }
      \repeat unfold 3 { c,[ f aes] }
    }
    
    \repeat unfold 3 { bes,[ f' aes] }
    \repeat unfold 3 { bes,[ ees g] }
    \repeat unfold 3 { aes,[ c g'] }
    \repeat unfold 3 { aes,[ d f] }
    
    \clef bass
    \repeat unfold 3 { 
      g,[ d' g] b,[ d g] g,[ d' g]
      c,[ ees g] b,[ d g] c,[ ees g]
    } g,[ d' g] b,[ d g] g,[ d' g]
    
    \clef treble 
    \repeat unfold 3 { c,[ ees g] }
    \repeat unfold 3 { f[ aes c] }
    \repeat unfold 3 { f,[ bes d] }
    
    \repeat unfold 3 { ees,[ g d'] }
    \repeat unfold 3 { ees,[ aes c] }
    \repeat unfold 3 { d,[ f c'] }
    \repeat unfold 3 { g[ b d] }
    c,16 c' ees, c' c, c'
    
    f, c' ees, c' d, b'
    c, c' d, b' ees, g
    f8 g g,
    c4 <ees' g>8
    <f aes> <ees g> <d f>
    <c ees> <bes d> <aes c>
    
    f g g,
    \clef bass c d <ees g>8
    <f aes> <ees g> <d f>
    <c ees> <bes d> <aes c>
    \sd f g g,
    \sn c'16 ees d f ees g
    
    f aes g8 g,
    c,16 ees d f ees g
    f aes g8 g,
    c16 ees d f ees g
    \sd f8 g g,
    \sn c,4.
  }
}

\header {
  title = "K48"
  meter = "Presto"
  tagline = ##f
}