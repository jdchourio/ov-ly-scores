\version "2.18.2"

su = \stemUp
sd = \stemDown
sn = \stemNeutral
tu = \tieUp
td = \tieDown
tn = \tieNeutral
cstr = \change Staff = "right"
cstl = \change Staff = "left"

\header {
  title = "K102"
  meter = "Allegro"
  tagline = ##f
}

global = {
  \key g \minor
  \time 3/8
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
}

right = \relative c''' {
  \global
 
  \repeat volta 2 {
    g8( d a)
    bes4 c8
    d ees g,
    \su fis4-\trill g8
    r a8.( bes32 c)
    
    bes8 a g
    r a8.( bes32 c)
    bes8 a g
    r a8.( bes32 c)
    \sn bes8 c d ~ d c16 bes a g
    
    \repeat unfold 2 {
      \appoggiatura g64 a4 d8 ~
      d c16 bes a g }
    d4.-\trill
    d16 g fis bes a c
    
    bes8 c d ~ 
    d16 ees d c bes a
    bes8-\trill a16 bes g8
    d16 g fis bes a c
    bes8 c d ~ 
    
    d16 g fis bes a c
    bes8-\trill a16 bes g8
    \repeat unfold 2 {
      bes16( g e cis e) bes'
      a( g f e d) c' }
    
    bes16( g e cis e) bes'
    a e f cis d a
    bes f g e f d
    \appoggiatura d64 cis4.-\trill
    
    bes'16( g e cis e ) bes'
    a( g f e d) c'
    bes16( g e cis e ) bes'
    a( g f e d) d'
    cis( bes g e g) cis
    
    d f, g e' a, f'
    bes, g'( f e d cis)
    \appoggiatura cis64 d4.
    bes16( g e cis e ) bes'
    a( g f e d) c'
    bes16( g e cis e ) bes'
    
    a( g f e d) d'
    cis( bes g e g) cis
    d f, g e' a, f'
    bes, g'( f e d cis)
    
    \repeat unfold 3 {
      d, f a d a[ f']
      e( g f e d cis) }
    d4.-\trill
  }
  
  \repeat volta 2 {
    a'8( fis d)
    c4 c8
    a'8( fis d)
    cis8 d4
    g8( d bes)
    b c4
    
    a'8( fis c)
    a bes4 ~
    bes8 d g
    \appoggiatura f32 ees4
    <<{ fis8 g } \\ { d8 ~ d c16 bes a g } >>
    
    \repeat unfold 2 {
      \appoggiatura g32 a4 d8 ~
      d c16 bes a g }
    d4.-\trill
    \repeat unfold 2 {
      f16 aes g c b d
      c8-\trill b c }
    
    f,16 aes g ees' d f
    ees8-\trill d ees
    f,16 aes g c b f'
    ees8-\trill d16 ees c8
    
    ees16( c a fis a) ees'
    d( c bes a g) f'
    ees( c a fis a) ees'
    d( c bes a g) g'
    fis( ees c a c) fis
    
    g bes, c a' d, bes'
    ees, c'( bes a g fis)
    \appoggiatura fis32 g4.
    ees16( c a fis a) ees'
    d( c bes a g) f'
    ees( c a fis a) ees'
    
    d( c bes a g) g'
    fis( ees c a c) fis
    g bes, c a' d, bes'
    ees, c'( bes a g fis)
    
    \repeat unfold 2 {
      g, bes d g d bes'
      a c( bes a g fis)
    }
    g ees d c d c
    bes a bes a g fis
    g4.-\trill-\fermata
  }
}
 
left = \relative c'' {
  \global
  
  \repeat volta 2 {
    R4.
    g8 d a
    bes8 c4
    d8 ees g,
    
    <<{ d'4. d d d d d } \\
      { fis,8 e d g a bes fis e d 
        g a bes fis e d g a bes }>>
    
    <<{ c, d ees d c bes c d ees d c bes }
      { c' d ees d c bes c d ees d c bes } >>
    <ees,, ees'>4. <d d'> R
    
    g'16 c bes ees d g
    fis8 e d
    g,,4. R
    g'16 c bes ees d g
    
    fis8 e d
    g,,4.
    e''8 g e
    f a f
    e g e
    
    f a f
    e g e
    f4 d8
    g,4 bes8
    a,4.
    
    e'8 g e
    f a f
    e g e
    f a f
    e g e
    
    f e d
    g a a,
    d4.
    e8 g e
    f a f
    e g e
    
    f a f
    e g e
    f e d
    g a a,
    d e f
    
    g a a,
    d ees f
    g a a,
    d ees f
    g a a,
    d,4.
  }
  
  \repeat volta 2 {
    R4.
    a'''8 fis ees
    c4.
    a'8 g d
    bes4.
    g'8 fis c
    
    a4.
    fis'8 g d
    bes g bes
    <<{ c4. ~ \sd c } \\ { c8 c, d ees4. }>>
    <d d'>8 <c c'> <bes bes'>
    
    <c c'> <d d'> <ees ees'>
    <d d'> <c c'> <bes bes'>
    <ees, ees'>4.
    <d d'>
    
    \clef treble \repeat unfold 2 {
      d''8 d <d f>
      <ees g> <ees g> <ees g> }
    <b d> <b d> <b d g>
    <c ees g> <c ees g> <c ees g>
    <b d> <b d> <b d>
    <c ees g>4.
    
    \clef bass a8 c a
    bes d bes 
    a c a
    bes d bes
    a c a
    
    bes a g
    c d d,
    g,4.
    a'8 c a
    bes d bes 
    a c a
    
    bes d bes
    a c a
    bes a g
    c d d,
    
    \repeat unfold 2 {
      g a bes
      c d-\trill d, }
    g a bes
    c d d, 
    g,4.-\fermata
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