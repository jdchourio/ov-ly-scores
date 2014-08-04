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
  \key g \minor
  \time 4/4
  \set Timing.beamExceptions = #'()
}

right = \relative c'' {
  \global
 
  \partial 4
  \repeat volta 2 {
    r16 d c d
    bes8 c16 d g,16 d' e fis g fis g a g bes a g
    
    fis4 r r16 d c d bes c d bes
    g g' f! g d f ees d ees4 r
    
    r16 c bes c \sd a bes c a f f' ees f c f ees f
    d4 r r16 \sn bes a bes g a bes g
    
    \sd ees ees' d ees bes d c bes c4 r
    \sn r16 a g a fis g a fis d d' c d a c bes a
    
    bes8 ees16 d c bes a g fis4 g8 fis
    g a bes c d ees d c
    
    bes a r a bes a r a
    bes a r a \once \su bes4 c8 g
    
    fis4 <<{ s ees'2 d c bes a g } \\ 
      { d'4 ~ d c ~ c bes ~ bes a ~ a g ~ g f ~ f e }>>
    <<{ f16 g f d g a g d } \\ { f8 } >>
    
    a16 bes a d, bes' c bes d, cis'8 b16 cis a8 b16 cis
    d e d a e' f e a, f' g f a, g' a g a,
    
    a'8 bes16 a g f e d cis8 b16 a d8 g,
    f16 a d f, e d' e, cis' d,4
  }
  
  \partial 4
  \repeat volta 2 {
    r16 a' g a
    f8 g16 a d, a' b cis! d cis d e d f e d
    cis4 r r16 a g a f g a f
    
    d d' c! d a c bes a \once \su bes4 r 
    r16 g f g e f g e c c' bes c g bes a g
    
    a f' ees f c ees d c d8 c16 d bes4
    f'16 bes, a bes f' bes, a bes g' bes, a bes f' bes, a bes
    
    g'4 r g16 c, b c g' c, b c
    a' c, b c g' c, b c a'4 r
    
    a16 d, cis d a' d, cis d bes' d, cis d a' d, cis d
    bes'4 r ees,16 g f ees a,4
    
    d16 f ees d g,4 c16 ees d c f,4
    bes16 d c bes e,4 \sd a16 c bes a \sn d f ees! d
    
    g bes a g a c bes a bes8 a16 g f8 ees
    d16 bes' d, bes' c, a' c, a' bes,4 r8 d
    c bes16 a bes8 g fis d r d'
    
    ees16 f d ees c d bes c a f' ees f c f ees f
    d ees c d bes c a bes g ees' d ees bes ees d ees
    
    c d bes c a bes g a fis8 e16 fis d8 e16 fis
    g a g d a' bes a d, bes' c bes d, c' d c d,
    
    \sd d'8 ees16 d c bes a g fis'8 e16 d g8 c,
    bes16 d g bes, a g' fis a, g4
  }
}
 
left = \relative c {
  \global
  
  \partial 4
  \repeat volta 2 {
    r4
    <g g'> r g8[ a bes c]
    
    d16 d' c d bes c d bes g4 r
    g bes c,16 c' bes c a bes c a
    
    f4 r f a 
    bes,16 bes' a bes g a bes g ees4 r
    
    ees g a,16 a' g a fis g a fis
    d4 r d fis
    
    g r8 c, d16 d' c d bes d a d
    g, d' fis, d' g, d' a d bes d c d bes d a d
    
    \repeat unfold 6 { g, d' fis, d' }
    g,  d' g, d' ees, c' ees, c'
    
    d, d' c d bes a g bes c, c' bes c a g f! a
    bes, bes' a bes g f ees g a, a' g a fis e d fis
    
    \sd g, g' fis g e d c e \sn f, f' e f d c bes d
    e, e' d e cis b a cis d8 r e r 
    
    f r g r a r r4
    f8 r cis r d r e r
    
    f4 r8 g a g f g 
    <<{ a2 } \\ { r4 a, }>> d8 d,
  }
  
  \partial 4
  \repeat volta 2 {
    r4
    <d d'> r d'8 e f g
    a,16 a' g a f g a f d4 r
    
    \sd d f g,16 g' f g e f g e
    \sn c4 r c e
    
    f a bes,4. c8
    d4 r ees! d
    
    ees16 ees' d c bes a g f e4 r
    f e f16 f' e d c bes a g
    
    fis4 r g  fis
    g8 bes16 a g f! ees! d c4 f16 a g f
    
    bes,4 ees16 g f ees a,4 d16 f ees d
    g,4 \sd c16 e d c \sn f,4 bes
    
    ees f g4. a8 bes bes, f' f, bes c d bes' 
    a fis \sd g g, \sn d' c bes g
    
    c4 ees f r
    bes, d ees r
    
    \su a, c d4. c8
    bes4 fis g a
    
    bes r8 c d c bes c 
    d c d d, g' g,
  }
}

\header {
  title = "K35"
  meter = "Allegro"
  tagline = ##f
}