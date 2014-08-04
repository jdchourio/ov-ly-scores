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
  \time 2/4
  \override ParenthesesItem #'font-size = #+2
}

right = \relative c''' {
  \global
 
  \repeat volta 2 {
    g4 fis
    g8 fis16 g g,8 e'
    d[ g d-\trill c]
    b-\trill a16 b g8 e'
    d[ g d-\parenthesize-\trill c]
    
    b-\parenthesize-\trill a16 b g8 b'
    a[ a, g g']
    fis-\parenthesize-\trill e16 fis d8 g
    fis d e d16 cis
    d8 cis16 d
    
    \repeat unfold 2 {
      a a' g a
      a, g' fis g a, fis' e fis
      a, e' d e } a,4 
    \sd r8 e'[ a d,]

    cis d e4
    r8 e[ a d,]
    a g' fis16 d g e
    a d, g e fis d e cis
    d8([ a fis fis')]
    
    e([ cis g g')]
    fis([ d a a')]
    b,([ b' g e)]
    cis b16 cis a8 a'
    bes16 d,( cis d) fis8( g)
    a16 d,( cis d) e8( f)
    
    g16 d( cis d) e8 g
    f16 a,( gis a) d8 f
    ees16 g,( fis g) ees'8 d
    <<{ g8[ a fis e] fis4 e } \\ { cis4 d~ d cis }>>
    d4 r
  }
  
  \repeat volta 2 {
    \sn d4 cis
    d8 cis16 d d,8 b'
    \repeat unfold 2 {
      a4 g
      fis8-\parenthesize-\trill e16 fis
    } \alternative {
      { d8 b' }
      { <<{ d, d' ~ <b d> <a c>4 <gis b>8 } \\ { s4 d2 }>> }
    }
    
    c'8 b16 c a8 f'
    e4 d
    c8-\parenthesize-\trill b16 c a8 f'
    e4 d
    c16 e d e c e b e
    
    a, e' d e a, e' g, e'
    fis,! a g a fis a e a
    d, a' g a d, a' c, a'
    b,8[( d g b])
    c,[( fis a c])
    
    d,[( g b d])
    e,[( a c e])
    fis,-\parenthesize-\trill e16 fis d8 d'
    \sd ees16 g,( fis g) b8( c) \su
    d16 g,( fis g) a8( bes)
    
    c16 g( fis g) a8 c
    bes16 d,( cis d) g8 bes
    aes16 ees( d ees)
    <<{ c'4 ~ c8[ d b! a] bes4 a } \\
      { aes8 g fis!4 g ~ g fis }>>
    g4 r
  }
}
 
left = \relative c {
  \global
  
  \repeat volta 2 {
    <g b g'>4 <a c fis>
    <b d g> \repeat unfold 2 {
      r8 <<{ e'8 d4 c b } \\ 
        { c8 b[ g a d, g4] }>> }
    
    r8 g
    <<{ r d'4 cis8 d4 } \\ { fis,4 e d }>>
    r8 b'
    a[ a, g g']
    fis4 \repeat unfold 2 {
      r8 <fis a>
      <cis e a>4 <d fis a>
      <a e' a>4 }
    r16 a' gis a
    
    a, g' fis g a, fis' e fis
    a, e' d e a, a' g a
    a, g' fis g a, fis' e fis
    a, e' d cis d8 e
    fis[ g a a,]
    d([ fis a d)]
    
    e,([ g cis e)]
    fis,([ a d fis)]
    g,4 g,
    a r8 fis'
    g4 r8 g'
    f4 r8 f,
    
    e4 r8 e'
    d4 r8 d,
    g4 r8 \once \sd <g, g'>
    <a a'>[ <cis cis'> <d d'> <g, g'>]
    <a a'>4 q
    <d, d'> r
  }
  
  \repeat volta 2 {
    <d' fis>4 <e g>
    <fis a> \repeat unfold 2 {
      r8 <<{ b8 a4 g fis } \\ { g8 fis[ d e a,] d4 }>> }
    r16 d' cis d
    
    e,4 e,
    a \repeat unfold 2 {
      r8 <<{ f'' e4 d c } \\ { d8 c[ a b e,] a4 }>> }
    r8 <b d>
    
    <c e>4 r8 <c, e>
    <d fis!>4 r8 <e g> 
    <fis a>4 r8 d
    \sd g[( d b g])
    a'[( fis c a])
    
    b'[( g d b])
    c'[( a e c])
    \sn d4 r8 d'
    c4 r8 c,
    bes4 r8 bes'
    
    a4 r8 a,
    g4 r8 \once \sd <g g'>
    <c c'>4 r8 q
    d[ fis! g c,]
    d4 d,
    g4 r
  }
}

\header {
  title = "K63"
  meter = "CAPRICCIO"
  piece = "Allegro"
  tagline = ##f
}
