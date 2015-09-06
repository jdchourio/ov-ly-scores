\version "2.18.2"

\header {
  title = "K452"
  meter = "Andante allegro"
  tagline = ##f
}

global = {
  \key a \major
  \time 2/2
}

right = \relative c''' {
  \global

  \repeat volta 2 {
    r4 a8 fis e2 ~
    e4 fis8 d cis4 b
    cis4 a'8 d, cis2 ~
    cis4 d8 b a4 gis
    a a'8 f e2 ~
    
    e4 f8 d c4 b
    c a'8 d, c2 ~
    c4 d8 b a4 gis
    a cis!8 a e'2 ~
    e4 fis8 d cis4 b
    
    cis e8 cis e,2 ~
    e4 fis8 d cis4 b
    cis a'8 cis, cis2 ~
    cis4 a'8 d, d2 ~
    d4 a'8 e e2 ~
    
    e4 a8 fis fis2 ~
    fis4 b8 gis gis4 e'8 b
    cis4 a' dis, e
    a, cis2 b8 a
    gis' fis e dis cis b a gis
    
    fis4 ais8 b b2
    r4 gis'8 e b4 b'
    cis, cis' dis, e
    b gis'8 e b4 b'
    cis, cis' dis, e
    
    a, a'2 fis8 dis
    b'4 cis8 a gis4 fis
    e g8 e b4 b'
    c, c' dis, e
    b g'8 e b4 b'
    
    c, c' dis, e
    a, a'8 fis a,2 ~
    a4 a'8 fis a,2 ~
    a4 c'8 b \appoggiatura b16 a4 g8 fis
    e1 ~
    
    e4 c'8 b \appoggiatura b16 a4 g8 fis
    e1 ~
    e4 a8 g fis4 e8 dis
    e b c a g4 fis-\prall
    e gis'!8 b, a4 fis'8 a,
    
    gis4 gis'8 b, a4 fis'8 a,
    gis4 e'8 b cis4 a'8 fis
    b4 cis8 a gis4 fis
    e b8 gis cis4 fis8 dis
    e b cis a gis4 fis-\prall
    \set Score.repeatCommands = #'((volta ""))
    e1
    \set Score.repeatCommands = #'((volta #f))
  }
  
  \repeat volta 2 {
    \set Score.repeatCommands = #'((volta ""))
    e4 e'8 cis 
    \set Score.repeatCommands = #'((volta #f))
    b2 ~ 
    b4 cis8 a gis4 fis
    gis b'8 gis e2 ~
    e4 a8 fis e4 dis
    r e8 gis, gis2 ~
    
    gis4 e'8 ais, ais2 ~
    ais4 fis'8 b, b2 ~
    b4 g'8 fis e4 d8 cis
    d4 fis8 d d2 ~
    d4 b'8 d, d2 ~
    
    d4 a'8 d, d2 ~
    d4 d'8 d, d2 ~
    d4 d'8 d, d2 ~
    d4 d'8 c b4 a8 gis
    a4 cis!8 a e4 g8 e
    
    fis4 a8 d, cis4 e8 cis
    d e fis e d cis b a
    b cis d cis b a gis fis
    e1 \bar "||"
    r1-\fermata \bar "||"
    
    r4 c'8 g e'2 ~
    e4 d8 a a'2 ~
    a4 gis8 d d'2 ~
    d4 gis,8 d d'2 ~
    d8 c b a gis! f e d
    
    c b a g f2-\prall
    e1-\fermata \bar "||"
    r4 c'8 g e'2 ~
    e4 d8 a a'2 ~
    a4 gis8 d d'2 ~
    d4 gis,8 d d'2 ~
    
    d8 cis! b a gis fis e d
    cis d e a, b2-\prall
    a4 e'8 e, gis4 d'8 gis,
    cis4 e8 e, gis4 d'8 gis,
    cis4 a'8 e fis4 d'8 gis,
    
    a e fis d cis4 b-\prall
    \repeat unfold 2 { 
      a8 e' cis a e d' b gis
      \repeat unfold 2 { e e' cis a e d' b gis }
      a' a, d b <a cis>4 <gis b>
    }
    a1
  }
}
 
left = \relative c {
  \global

  \repeat volta 2 {
    a2 r4 \clef treble a''
    gis gis e e
    a2 r4 fis
    d d e e
    a,2 r4 a'
    
    gis gis e e
    a2 r4 f
    d d e e
    \clef bass a,2 r4 a
    gis gis e e
    
    a2 r4 <cis,, cis'>
    <d d'> q <e e'> q
    <a, a'>2 r4 a''
    b b b b
    cis cis cis cis
    
    dis dis dis dis
    e e e e
    \clef treble a gis fis e
    dis dis dis dis
    \clef bass e e a, a
    
    b2. cis8 dis
    e2. \clef treble fis8 gis 
    a4 gis fis e
    dis e2 fis8 gis
    a4 gis fis e
    
    dis cis \clef bass b a
    gis a b b,
    e,2 r4 \clef treble e'' 
    a g fis e
    dis e2 fis8 g
    
    a4 g fis e
    dis \clef bass b c c
    b b c c
    b g a b
    c \clef treble a'8 g fis4 e8 dis
    
    e4 \clef bass g, a b
    c \clef treble a'8 g fis4 e8 dis
    e4 \clef bass g, a b
    c a b b,
    e e' fis dis
    
    e e fis dis 
    e gis, a fis
    gis a b b,
    e e a fis
    gis a b b,
    e,1
  }

  \repeat volta 2 {
    e2 r4 e''
    dis dis b b
    e2
    r4 cis a a b b
    e, e' e e 
  
    cis cis cis cis
    d d d d
    e e fis fis
    b, b b b
    <g d'> q q q
    
    <fis d'> q q q
    <gis! d'> q q <gis e'>
    <a f'> q q q
    <b gis'> q q q
    <cis a'> q q q
    
    <d a'> q a g
    fis fis fis fis
    d d d d
    e,1 \bar "||"
    r1-\fermata \bar "||"
    
    c''4 c c c
    <f, d'> q q q
    <e d'> q <f d'> q
    <e d'> q <f d'> q
    <e d'> q q q
    
    <a c> q d, d
    e,1-\fermata \bar "||"
    c''4 c c c
    <f, d'> q q q
    <e d'> q <f d'> q
    <e d'> q <f d'> q
    
    <e d'>2 r
    r4 cis d e
    a cis b e,
    a cis b e,
    a cis d b
    
    cis d e e,
    \repeat unfold 2 { 
      \repeat unfold 3 { r a gis e }
      cis d e e,
    }
    a,1
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
        %\breaks
        \clef bass \left 
      >>
    }
  >>
  \layout { indent = 0 }
}
