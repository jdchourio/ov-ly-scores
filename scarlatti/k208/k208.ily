\version "2.19.20"

\header {
  title = "K208"
  meter = "Moderato e Cantabile"
  tagline = ##f
}

global = {
  \key b \minor
  \time 4/4
}

right = \relative c'' {
  \global
 
  \repeat volta 2 {
      a4 cis \grace fis8 e4. d16 cis
      b8 fis'4 \appoggiatura e8 d4 \appoggiatura cis8 b4 a8
      gis e'4 cis8 gis! a dis, e

      fis16 gis a gis b cis d cis a' gis b a gis! fis e d
      cis32 b a8. r8 cis4 dis e16 cis
      ais b dis4 e16 cis gis ais dis!4 e16 cis ~

      cis a cis4 a'16 cis, e dis fis e dis! cis b a
      gis32 fis e8. r8 e'8 ~ e16 c e,4 e'8 ~
      e16 b e,4 e'8 ~ e16 c fis,4 e'8 ~
      e16 cis! fis,4 e'8 ~ e16 dis gis fis ~ fis dis! b a
      
      a gis e' dis ~ dis cis b a ~ a gis! fis e fis8.-\prall e32 fis
      e16 b' a gis ~ gis a gis a ~ a cis b ais ~ ais b ais b
      a' gis fis e bis cis e e, <e gis>4 <dis fis>-\prall
      e1
  }
  
  \repeat volta 2 {
    r4 b' b4.^\markup { \italic "Tremulo" } cis16 d
    b8 b'8. a16 gis fis ~ fis eis gis! d ~ d cis cis b ~
    b ais cis e g g, cis e g g, cis e g g, cis e
    
    g g, cis e g f f e d f, a d f! e e d
    d f, b d f e e d g, cis e g ~ g f! f e
    gis a f d ~ d c c b gis'! a b, c! ~ c dis e a, ~
    
    a fis gis a b cis cis d ~ d b cis d d dis dis e ~
    e cis d e e eis eis fis d' cis b a fis b gis d
    a16. b32*2 a gis64 a b8.-\prall a32 gis a16 e' d cis ~ cis d cis d ~
    
    d fis e dis ~ dis e dis e ~ e d' cis a eis fis b a
    a,16. b32 a gis a64*2 b gis8.-\prall a32 b a4 r
  }
}
 
left = \relative c' {
  \global
  
  \repeat volta 2 {
      a4 a a a
      d, d d d
      <d b'> <cis a'> q q

      <d a'> q <e b'> q
      a, a' a <a e'>
      <gis e'> q <fis a> q

      <e a> q <dis a' b> q
      <e b'> q <c b'> <c a'>
      <g g'> q <a e' a> q
      <ais e' fis> q <b fis'> <b fis' b>

      <e b'> <a, a'> <b b'> q
      <cis b'> <cis a'> <dis b'> q
      <e b'> <a, a'> <b e b'> <b e fis a b>
      e1
  }
  
  \repeat volta 2 {
    b4 b' g e
    d <d b'> <cis b'>q
    <cis g'> q <b g'> q
    
    <a g'> q <a f' a> <a a'>
    <b gis'> q <cis g' a> q
    <d a'> q <dis a' b> q
    
    <e b'> q <a, a'> q ~
    <d a'> q q <d d'>
    <e a cis> <e b'> <fis a> q
    
    <g b> q a <d, d'>
    <e a cis> <e b'> a, r
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
