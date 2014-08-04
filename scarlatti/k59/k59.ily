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
  \key f \major
  \time 4/4
  \override ParenthesesItem #'font-size = #+2
}

right = \relative c'' {
  \global
 
  \repeat volta 2 {
    f8 c a f f'4.-\trill e16 d
    e8[ c] g'[ c,] bes4.-\trill a16 g
    
    a4 c f8 c a'4
    \sd \repeat unfold 2 {
      g8 c,4 d16 e f8 b, ~ b16 c d e32 f}
    
    g8 c, ~ c16 d e f32 g a8 e d c
    b g d' g, f'4.-\trill ees16 d
    ees8 g, c g ees'4.-\trill d16 c
    
    d8 g, b g f'4.-\trill ees16 d
    ees8 g, c g ees'4.-\parenthesize-\trill d16 c
    aes'8 b, c g' f[ g,] aes[ ees']
    
    \sn d g, f c' b c16 d g,8 f
    ees c' d, b' c g' e! c
    g \cstl e,! c g c,4 r \cstr
  }
  
  \repeat volta 2 {
    c''''8 g e c bes!4.-\trill a16 g
    f'8 c a f a'4.-\trill g16 f
    g8 cis, ~ cis16 d e f32 g a8 d,4 e16 f
    
    g8 cis, ~ cis16 d e f32 g a8 d, cis g'
    f bes, a e' \su d[ g,] fis[ c']
    bes[ ees,] d[ a'] g4 f
    
    \sn e' d cis8 d16 e a,8 g'
    f4-\trill e-\trill fis8 g16 a d,8 c
    bes4-\trill a-\parenthesize-\trill b8 c16 d g,8 f'
    e4-\trill d-\trill e8 f16 g c,8 g'
    
    \once \su bes,4.-\parenthesize-\trill a16 g a8 f4 g16 a
    bes8 e, ~ e16 f g a32 bes c8 f,4 g16 a
    bes8 e, ~ e16 f g a32 bes c8 f, ~ f16 g a bes32 c
    
    d8 e, f c' bes[ e,] d[ a']
    g c, bes \once \sd f'' e f16 g c,8 bes
    a f' g, e' f c a f'
    c a f \cstl c, f,4 r
  }
}
 
left = \relative c, {
  \global
  
  \repeat volta 2 {
    r2 f8 a c f
    c4 c d e
    
    f8 c a f f'4.-\trill e16 d
    e4 a d, f
    e a d, f
    
    e c f fis
    g r r <b, d>
    <c ees> <c ees > r <c ees>
    
    <b d> <g b d> r <b d>
    \sd <c ees> <c ees> r <c ees>
    <f c'> <ees c'> <d b'> <c c'>
    
    <bes bes'> <aes aes'> <g g'> r8 \sn b
    c ees f g c,4 r
    s1
  }
  
  \repeat volta 2 {
    r2 c8 e g c
    f,4 r f,8 a c f
    e4 g f bes
    
    e, g <f a> <e g>
    <d f> <c! e> <bes d> <a c>
    <g' bes> <f a> <<{ g8[ c] } \\ { e,!4 }>> d8 b'
    
    c, a' bes,! g' a,4 r8 cis'
    d d, a' a, d,4 r8 fis'
    g g, d' d, g,4 r8 b''
    c c, g' g, c,4 r8 c'
    
    d4 e f a
    g bes a d
    g, bes a <f c'>
    
    <bes d> <a c> <g bes> <f a>
    <e g> <d f> c4 r8 e
    f a, bes c f,4 r
    s1
  }
}