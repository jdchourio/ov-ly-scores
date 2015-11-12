\version "2.18.2"

\header {
  title = "K511"
  meter = "Allegro"
  tagline = ##f
}

global = {
  \key d \major
  \time 2/2
}

right = \relative c'' {
  \global

  \repeat volta 2 {
    \repeat unfold 3 { fis4.-\prall e16 fis g4 g }
    fis8 \repeat unfold 2 { 
      a cis, e d fis a, cis
      b g' fis e d e a, cis 
    } \alternative {
      { d } { }
    }
    
    \voiceOne d4 a'2 fis4 ~
    \oneVoice fis d2 b4 ~
    b g'2 e4 ~
    e8 d cis b a g fis e
    fis d' b a gis e' cis b
    a fis' d cis b b' e, d
    
    cis4 e2 a4 ~
    a fis2 
    <<{ d4 ~ d8 b cis d cis4 b } \\ { s4 r a2 gis4 }>>
    a8 e' c b a e' c b
    <<{ a8 f' d c b f' d c } \\ { f,2 r }>>
    <<{ b8 b' f e d b' e, d } \\ { gis,2 r }>>
    
    c8 e c b a e' c b
    <<{ a8 f' d c b f' d c } \\ { f,2 r }>>
    <<{ b8 b' f e d b' e, d } \\ { gis,2 r }>>
    <<{ c8 e c b a f' d c } \\ { a2 r }>>
    <<{ b8 f' d c b f' d c } \\ { f,2 r }>>
    <<{ b8 f' d c b g' fis e } \\ { f,2 r }>>
    
    dis'8 a' fis e dis a' fis e
    dis8 a' fis e dis a' f e
    d8 a' f e d a' f e
    d8 a' f e d c' b a
    gis b e, d c e d c
    b d c b a c b a
    
    gis4 \repeat unfold 2 {
      e'2 cis4 ~
      cis a'2 fis4 ~
      fis d'2 b4 ~
      b gis2 a8 gis
      a e fis d cis b a gis
    } \alternative {
      { a4 }
      { a8 e' cis b a e' a, gis }
    }
    
    fis d' cis b a b e, gis
    a e' cis b a e' a, gis
    fis d' cis b a b e, gis
    a1
  }
  
  \repeat volta 2 {
    r8 e' cis b a e' cis b
    a e' cis b a e' cis b
    \repeat unfold 7 { ais e' cis b }
    ais e' dis cis
    
    \repeat unfold 3 { bis fis' dis cis }
    bis fis' eis dis
    \repeat unfold 3 { d gis eis dis }
    d a' f eis
    
    \repeat unfold 3 { d b' f e }
    d d' b f
    \repeat unfold 6 { e c' g f }
    \repeat unfold 2 { e bes' g f }
    
    e cis' g f e cis' g f
    e cis' bes a g e' a, g
    f e' a, g f a g f
    e g f e d f e d
    
    \once \stemUp cis4 
    \repeat unfold 2 {
      a'2 d4 ~
      d d,2 b'4 ~
      b g2 e4 ~
      e a2 d8 cis
      d a b g fis e d cis
    } \alternative {
      { \once \stemUp d4 }
      { d8 a' fis e d a' d, cis }
    }
    b g' fis e d e a, cis
    d a fis e d a' d, cis
    b g' fis e d e a, cis
    d1 \bar "|."
  }
}
 
left = \relative c' {
  \global

  \repeat volta 2 {
    \repeat unfold 3 { <<{ d 4 a b cis } \\ { d,1 }>> }
    <d d'>2. <fis, fis'>4
    <g g'>2 <a a'> 
    <d, d'>2. <fis fis'>4
    
    <g g'>2 <a a'> 
    \change Staff="right" \voiceTwo
    d'8 a' fis e d fis d cis
    \change Staff="left" \oneVoice
    b d b a g b g fis
    e g e d cis e cis b
    a2. a4
    <d, d'>2 <e e'>
    < fis fis'> <gis gis'>
    
    a'8 e' cis b a cis a gis
    fis a fis e d fis d cis
    b4 a e' e,
    a1
    a'2 r
    a2 r
    
    a,1
    \repeat unfold 3 { a'2 r }
    \repeat unfold 2 { g2 r }
    
    \repeat unfold 2 { <<{ a2 } \\ { fis }>> r }
    \repeat unfold 2 { <<{ <a d>2 } \\ { f }>> r }
    <<{ <b d> <a c> } \\ { e e }>>
    <<{ <b' d> <a dis> } \\ { e e }>>
    
    e8 \repeat unfold 2 {
      e' cis b a cis a gis
      fis a fis e d fis d cis
      b d b a gis b gis fis
      e gis e d cis e cis b
      a4 d e e 
    } \alternative {
      { a'8 } {}
    }
    
    a,,2. <cis cis'>4
    <d d'>2 <e e'>
    <a, a'>2. <cis cis'>4
    <d d'>2 <e e'>
    <a, a'>1
  }

  \repeat volta 2 {
    <a'' e'>2 r q r
    <g e'> r q r
    <fis cis' e> r q r
    
    <fis a c dis> r q r
    <eis gis b d> r q r
    <e! a b d> r 
    
    q <d f g b>
    <c g' c> r
    \clef treble 
    <c' g'> r
    <bes e g> r q r
    
    <a e' g> r q r
    <a d f> r
    <a g'> <a gis'>
    \clef bass a8
    
    \change Staff="right" \voiceTwo
    \repeat unfold 2 {
      a'8 fis e d fis d cis
      \change Staff="left" \oneVoice
      b d b a g b g fis
      e g e d cis e cis b
      a cis a g fis a fis e
      d4 g a a,
    } \alternative {
      { \change Staff="right" d''8 \voiceTwo }
      { d,,2. }
    }
    
    \repeat unfold 2 {
      <fis fis'>4
      <g g'>2 <a a'>
    } \alternative {
      { <d, d'>2. }
      { q1 }
    } \bar "|."
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
