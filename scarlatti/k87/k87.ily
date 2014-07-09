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
  \key d \major
  \time 3/4
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
}

rightOne = \relative c' {
  \global
 
  \repeat volta 2 {
    fis4 g8 fis b4 ~
    b4 ais8 b cis ais
    b2.
    ais4 r8 b cis4
    d4. cis8 b4 ~
    
    b a8 gis fis4
    fis eis8 fis gis eis
    fis2 cis'4 ~
    cis8 fis, b2 ~
    b4 <<{ \shiftOn fis'2 ~ fis8 \once \td b, ~ b4 }
      \new Voice {
        s2 s4 \su \once \tu e2 ~ e4 
        dis8 e fis dis
    }>>
    
    e2.
    fis4 e8 fis g4
    fis2 ~ fis8 e
    d2 ~ d8 cis
    b2 a8 g
    
    fis e d4 cis'
    d8 cis r fis g fis
    e d cis b a4 ~
    a g4. fis8
    fis e r fis b4 ~
    b ais8 b cis d
    
    e4 s s
    a r8 b4 ais8
    b g fis4. e8
    d4 cis4. e8
    d4 cis4. g'8
    d4 cis4. b'8
    
    d,4 cis8 g' fis eis
    fis4. e4 d8
    cis fis g fis e d
    cis b ais gis fis eis
    fis cis ais fis \clef bass fis,4
  }
  
  \repeat volta 2 {
    \clef treble cis'''4 d8 cis fis4 ~
    fis8 e4 d cis8
    d2 b4 ~
    b8 a4 g fis8
    r ais b4. cis8
    d4. cis8 b4
    
    r8 bis cis4. dis8
    e d cis4. b8
    fis' e d4. cis8
    b' a g4. fis8
    g fis e4 fis8 e
    d4 e8 d cis4
    
    b8 cis d4. e8
    fis e dis fis e d
    cis e d cis b d
    cis b ais cis b cis
    d cis b4. ais8
    b cis d dis e fis
    
    g fis e4. dis8
    e fis g gis ais b
    s4 e,4. d8
    cis8 d e4. d8
    g b a g fis a
    g fis e g fis e
    
    d4 r8 cis8 b4 ~ 
    b ais8 b cis d
    e4 d cis
    fis e4. d8
    cis4. d8 cis4 ~
    cis8 d cis4. d8
    
    e4. eis8 fis4 ~
    fis8 e d cis b d
    cis b4 cis ais8
    b g fis e d cis
    d e d cis b ais
    s2.
  }
}

rightTwo = \relative c' {
  \global
 
  \repeat volta 2 {
    r8 d2 e8
    fis2.
    r8 g fis e fis g
    e fis g4. fis8 ~
    fis d fis4. eis8
    
    fis2 ~ fis8 b,
    cis2.
    r8 d cis d e cis
    d2 ~ d8 e
    fis4 a8 g fis a
    g2 ~ g8 a
    
    b2.
    %\once \sd b2. 
    %s2. s2.
    
    r8 c b a b cis
    d4 cis8 d e4
    d8 e d cis b4
    a8 g fis e d4 ~ 
    d8 e fis4 s
    
    s s e
    fis b4. a8
    g fis e d cis b
    a d b cis d4
    s d4. e8
    fis4 s s
    
    b4 dis8 e fis g
    e4 g8 fis e4 ~
    e d8 cis b4
    b ais4. cis8
    b4 ais4. cis8
    b4 ais4. b8
    
    b4 ais b
    r8 fis gis ais b4 ~
    b8 ais b a g fis
    e d cis b ais gis
    fis4 s s
  }
  
  \repeat volta 2 {
    r4 r r8 fis'
    gis4 ais8 b4 ais8
    r8 fis \noBeam g fis4 e8
    fis4 e s
    g4. fis8 e4
    r8 eis fis4. gis8
    
    a4. gis8 fis4
    e8 gis a4. gis8
    fis ais b4. ais8
    b dis e4. dis8
    e d cis4 d8 cis
    b4 cis8 b ais4
    
    b4 b2
    a8 c b a g b
    a g fis a g fis
    e d cis cis d e
    fis4 g8 fis e4
    fis4. fis8 g a
    
    b4 c8 b a4
    b s s
    cis8 d cis4. b8
    ais b cis4. b8
    e d cis e d cis
    b d cis b ais cis
    
    b fis g fis4 e8
    fis4 s s
    cis' b ais
    r8 fis gis ais b4
    ais4. b8 ais4 ~
    ais8 b ais4. b8
    
    cis4. b8 ais gis
    fis2.
    g4 fis e ~
    e8 e d cis b ais 
    b4 s s
    \clef bass b8 fis d b \su b,4
  }
}

leftOne = \relative c' {
  \global
  
  \repeat volta 2 {
    r8 b2 cis8
    d b cis d e4 ~
    e d8 cis d4
    s4 e2
    d ~ d8 cis
    
    d b cis4. gis8
    a fis gis a b4 ~
    b ais8 b cis ais
    b2 ~ b8 cis
    d b cis4 dis
    \clef treble e2 ~ e8 fis
    
    g e fis g a4 ~
    a g8 fis g4
    a8 b a4 g8 a
    b4. a8 g4
    \clef bass s2.
    b,8 cis d b cis4 ~
    
    cis4. b4 ais8
    b4. a8 g a
    b4 s s
    s g a
    ais b8 a b cis
    d b cis d e fis
    
    \clef treble g e fis g a b
    c a b4 s
    b, 8 b'4 a8 g4
    s2.*5
    
    \repeat unfold 3 {
      fis,,4 r r }
  }
  
  \repeat volta 2 {
    s2.
    s2.
    r8 b'2 cis8
    d b cis4 dis
    s2.
    d2 ~ d8 eis
    
    <cis fis>4. s8 s4
    s2.
    s2.
    s2 b'4 ~
    b a8 g fis4
    g8 fis e4 fis8 e
    
    s2.
    s2.
    s2 \once \sd <g,, g'>4 ~ 
    g'4 fis8 e d cis
    s2. 
    s2.
    
    s2. 
    s2 e'4 ~
    e8 fis g e fis4
    e2 fis4
    s2.
    s2.
    
    r8 b,2 cis8
    d b cis d e fis
    g e fis d e cis
    d4 cis b
    s2.
    s2.
    
    s2.
    s4 b8 a g fis
    r8 e' d4 cis
    s2.
    r8 g fis e d cis
    b4 d\rest d\rest
  }
}

leftTwo = \relative c' {
  \global
  
  \repeat volta 2 {
    b4. a8 g4
    fis2.
    b
    cis8 d e4 ais,
    b4. a8 gis4
    
    fis4. e8 d4
    cis2.
    fis
    b4. a8 g4
    fis2 b4
    \clef treble e4. d8 c4
    
    b2.
    e
    fis8 g s2
    s2.
    \clef bass fis8 e d cis b a
    g4 fis4. e8
    
    d2 cis4
    b8 cis d4 e8 fis
    g4 a4. g8
    fis4 e d
    cis b g'
    fis2.
    
    \clef treble b
    e4. d8 cis4
    s2.
    \clef bass \repeat unfold 3 {
      fis,8 fis'4 g,8 e'4 }
    
    fis,8 fis'4 e8 d cis
    d4 cis b
    s2.*3
  }
  
  \repeat volta 2 {
    d,8\rest fis'4 e8 d4
    cis fis fis,
    b,8 b'4 a8 g4
    fis2 b4
    e4. d8 cis4
    b4. a8 gis4
    
    fis4 s8 e'8 dis4
    cis4. d8 e4
    d4. e8 fis4
    g4.a8 b,4
    e a, d
    g, cis fis,
    
    \sn <d' fis>8 <cis e> <b d> <a cis> <g b>4
    <fis a> <b, b'> <e, e'>
    <a a'> d s
    \sd cis fis, s
    \sn b b' cis
    \sd d8 cis b a g fis
    
    e4 e' fis
    g8 fis e d cis b
    ais2 b4
    cis8 b ais fis b4
    \sn <e, e'>4 <a, a'> <d, d'>
    <g g'> <cis cis'> <fis, fis'>
    
    \sd b8 b'4 a8 g4
    fis2.
    fis
    fis
    fis8 fis' g4. fis8
    e4. d8 \tu cis4 ~
    
    cis8 b ais gis fis e
    d cis b4 s
    e fis2
    \once \su b,2.
    b
    s2.
  }
}

\header {
  title = "K87"
  tagline = ##f
}