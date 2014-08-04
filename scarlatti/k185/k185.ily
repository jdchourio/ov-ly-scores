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
  \key f \minor
  \time 2/2
}

right = \relative c'' {
  \global
 
  \repeat volta 2 {
    r2 <aes c>
    r <f des'>
    r <g e'>
    r <c aes'>
    r <des bes'>
    r <e c'> ~
    
    c'8 bes aes g f ees des c
    des bes' aes g f4 e-\prall
    r2 <aes, c>
    r <f des'>
    r <g ees'>
    r <c aes'> ~
    
    aes'8 g f ees des c bes aes
    g2 <g ees'>
    r <c ees>
    r <d f>
    r <d b'>
    r <ees c'> ~ 
    
    c'8 bes aes g f ees d c
    b2 <f' aes>
    \repeat unfold 2 { 
      <d b'> <f aes> }
    <d b'> <d d'>
    <ees g> <ees c'> ~ 
    
    c'8 aes g f ees d c b
    \repeat unfold 2 {
      c c' aes f ~ f2 ~
      f8 c' aes f ~ f2 ~
      f8 c' aes f ~ f aes g d ~
      d f ees c ~ c ees d b }
    
    c g f aes <ees g>4 <d b'>
  } \alternative {
    { <e c'>2 r }
    { <e c'>2 r }
  }
  
  \repeat volta 2 {
    r <g e'>
    r <a f'>
    r <des bes'> ~
    bes'8 aes ges f ees des c bes
    a2 <c ees>
    
    \repeat unfold 2 {
      <c a'> <c ees> }
    <c a'> <c c'>
    des'8 c bes aes! g f ees des
    c \repeat unfold 3 { aes' f des ~ des2 ~ 
    des8 } c e f ~ f des f g ~
    g des g aes ~ aes bes f e
    
    f f, aes c f c aes' f
    c' bes aes g f ees des c
    des bes' aes g f4 e
    
    \repeat unfold 2 {
      r8 \repeat unfold 2 { f des bes ~ bes2 ~ bes8 }
      f' des bes ~ bes des' bes g ~
      g c aes f ~ f bes g e ~
    } e f des bes ~ bes des bes \tieUp g ~
    g c aes f g bes g e
    f1-\fermata
  }
}
 
left = \relative c, {
  \global
  
  \repeat volta 2 {
    f4 f'4. ees8 des c
    bes4 bes'4. aes8 g f
    c4 c'4. bes8 aes g
    f4 \clef treble f'4. ees8 des c
    bes4 \once \su bes'4. aes8 g f
    c4 c'4. bes8 aes g
    
    f2. \clef bass aes,4
    bes des c c,
    f4 f'4. ees8 des c
    bes,4 bes'4. aes8 g f
    ees4 ees'4. des8 c bes
    aes4 aes'4. g8 f ees
    
    des2 des,
    ees4 ees'4. des8 c bes
    aes4 \clef treble aes'4. g8 f ees
    d4 d'4. c8 b aes
    g,4 g'4. f8 ees d
    c4 c'4. bes8 aes g
    
    f2 \clef bass f,
    \repeat unfold 3 {
      g4 f'4. ees8 d c}
    g4 \clef treble g'4. f8 ees d
    c4 c'4. bes8 aes g
    
    f4 f g \clef bass g,
    \repeat unfold 2 {
      \repeat unfold 2 {
        <<{ c2. <b d>4 } \\ { aes f g2 }>>
      }
      <<{ c2 d } \\ { aes4 f b g }>>
      c ees, f g
    } ees f g g,
  } \alternative {
    { c c'4. bes8 aes g }
    {  c,2 r }
  }
  
  \repeat volta 2 {
    c4 c'4. bes8 aes g
    f4 f'4. ees8 des c
    bes,4 bes'4. aes8 ges f
    ees2 ees'
    
    \repeat unfold 3 {
      f,4 ees'4. des8 c bes }
    f4 f'4. ees8 des c
    bes2 <bes g'>
    <aes aes'> <bes des>4 <g ees'>
    
    <aes c>2 <bes des>4 <g ees'>
    <aes c>2 <bes des>4 <g bes c e>
    <aes c f>2 <e bes' c>
    <f bes des> <g bes c e>
    
    <<{ f'4 } \\ { <aes, c>2 }>> r
    r <a ees' f>
    <<{ r4 f'2 g4 } \\
      { bes,4 des c2 }>>
    
    \repeat unfold 2 {
      \repeat unfold 3 {
        <<{ f2. <e g>4 } \\ { des bes c2 }>>
      } f4 aes, bes c
    }
    
    <<{ f2 g } \\ { des4 bes e c }>>
    f, aes, bes c
    f,1-\fermata
  }
}

\header {
  title = "K185"
  meter = "Andante"
  tagline = ##f
}
