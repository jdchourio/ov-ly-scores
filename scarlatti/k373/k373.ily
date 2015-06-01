\version "2.18.2"

\header {
  title = "K373"
  meter = "Presto e fugato"
  tagline = ##f
}

global = {
  \key g \minor
  \time 2/2
}

right = \relative c''' {
  \global
 
  \repeat volta 2 {
    bes8 a g f ees d c bes
    a g fis e d c bes a
    g2 r
    r1
    
    r4 g''8 fis g d bes g
    ees' c d ees d bes c a
    bes1 ~ 
    bes4 c d ees
    
    d g,8 fis g a bes g
    a bes c a bes g a fis
    g1 ~ 
    g4 fis g a
    
    bes8 a bes c d c d ees
    f d g f ees-\prall d ees f
    <<{ d'8 c bes a } \\ { d,4 }>> g8 f ees d
    c bes a g f ees d c
    
    bes2 r
    R1
    r4 bes''8 a bes d, e f
    e f g aes bes g f e
    
    \appoggiatura { e8 } f2 r8 f g aes
    aes g g f f ees ees d
    ees4 c'8 b c e, fis g
    fis g a bes c a g fis
    
    \appoggiatura { fis8 } g2 r8 g a bes
    bes a a g g f f e
    f4 d'8 cis d bes c a
    bes g a f g e f d
    
    cis \repeat unfold 2 { 
      a' gis g fis f e d
      cis a gis g fis f e d 
      cis r r4 r2
      R1
    
      r4 d''8 cis d a f d
      bes' g a e f d e cis
      d 
    }
    cis' d a bes g a e
    f cis d a e'2-\prall
    d8 cis d a bes g a e
    f cis d a e'2-\prall
  } \alternative {
    { d8 ees d c r2 }
    {  }
  }
  
  \repeat volta 2 {
    \set Score.repeatCommands = #'((volta "2"))
    d8 d' d, e 
    \set Score.repeatCommands = #'((volta #f))
    fis g a bes
    bes c c, d e fis g a
    a bes bes, c d e fis g
    g a a, bes c d e fis
    
    fis g g, a bes c d e
    fis1
    ees'
    d
    
    c ~ 
    c8 d bes c d bes a g 
    ees' c d bes c a bes g
    fis a d fis, g c g' c,
    
    \repeat unfold 3 {
      fis a, d fis g g, c g'
    }
    
    a \repeat unfold 2 {
      d cis c b bes a g
      fis d cis c b bes a g
      fis8 r r4 r2
      R1
      r4 g'8 fis g d bes g
      ees' c d a bes g a fis
      g
    }
    
    fis' g d ees c d a
    bes fis g d a'2-\prall
    g8 fis g d ees c d a
    bes g d' g, a2-\prall
    g1
  }
}
 
left = \relative c' {
  \global
  
  \repeat volta 2 {
    << { R1 } \new Voice { \tiny g8_\markup { \italic "[2e]" } } >> R1
    \clef treble bes'8_"G" a g f ees d c bes
    \clef bass a g fis e d c bes a
    
    g2. g'4 
    c, c' fis, d
    g g'8 fis g d bes g
    ees' c d ees d bes c a
    
    bes2. g4
    c, ees d c
    bes g'8 fis g a bes g
    a bes c a bes g a fis
    
    g4 g' f ees
    d bes c f,
    bes,2 d
    ees f
    
    \clef treble d''8_"G" c bes a g f ees d
    \clef bass c bes a g f ees d c
    bes2. \clef treble <bes' bes'>4
    <c bes'> q q q
    
    <c f aes> q q q
    <b f' g> q q q
    <c g' c> <c c'> q q
    <d c'> q q q
    
    <d g bes> q q q
    <cis g' a> q q q
    <d a'> q q q
    <g, d' g> q q q
    
    <a a'>2 r
    R1
    \clef bass \repeat unfold 2 {
      r8 a8^"G" gis g fis f e d
      cis d c bes a g f e
    
      d2. f'4 
      g g, a' a,
    } \alternative {
      { d2 r R1 }
      {}
    }
    
    d4 f g cis,
    d f g a
    d, f g cis,
    d f, g a
  } \alternative {
    { d,2 bes''8^"G" a g fis }
    {}
  }
  
  \repeat volta 2 {
    d,1
    <<{ c''4 } \\ { d,1 }>>
    <<{ bes'4 } \\ { d,1 }>>
    <<{ a'4 } \\ { d,1 }>>
    <<{ g4 } \\ { d1 }>>
    
    r8 d' d, e fis g a bes
    bes c c, d e fis g a
    a bes bes, c d e fis g
    
    g a a, bes c d e fis
    g2. g,4
    c2 ees
    <d d'> <ees c'>
    
    \repeat unfold 3 { d4 d' ees, c' }
    d,2 r
    R1
    
    \repeat unfold 2 {
      r8 d'^"G" cis c b bes a g
      fis g f ees d c bes a
      g2. g'4
      c, c' d d,
    } \alternative {
      { g2 r s1 }
      {}
    }
    
    g,4 bes' c fis,
    g bes, c d
    g, bes c fis,
    g bes c d
    g,1
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
