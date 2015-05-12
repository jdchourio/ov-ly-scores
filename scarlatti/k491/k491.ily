\version "2.18.2"

\header {
  title = "K491"
  meter = "Allegro"
  tagline = ##f
}

global = {
  \key d \major
  \time 3/4
}

right = \relative c'' {
  \global
 
  \repeat volta 2 {
    d4-\prall d-\prall d-\prall
    d16 e fis g a g fis e d cis b a
    d4-\prall d-\prall e-\prall
    r8 fis16 g a8 d, a' d,
    
    r e16 fis g8 cis, g' cis,
    <d fis>4 q <fis a>
    <e g> q q
    \repeat unfold 2 {
      r8 <<{ fis16. g32 fis8 g fis e d4 d e }
        { a,16. b32 a8 b a g fis4 fis g }>>
    }
    
    <<{ fis'8 fis16. g32 a8 a g fis } \\
      { a,4 a8 fis' e d }>>
    \repeat unfold 2 {
      <<{ e8 e16. e32 e8 d cis d }
        { a a16. a32 a8 fis e d }>>
    }
    
    <<{ e'8 d cis d e d 
        cis d e d cis d }
      { a fis e d a' fis 
        e d a' fis e d }>>
    <a' e'>2.-\prall
    r2.-\fermata
 
    \repeat unfold 2 {
      <<{ \appoggiatura { e'16 f } \stemUp
          g8 fis16 e e8 e e e
          \acciaccatura { g } f e16 d d8 d d e
          \acciaccatura { g } f e16 d } \\
        { c2. b2 b8 cis <a d>4 }>>
      <c e>8 <b d> <a c> <gis b>
    } \alternative {
      { a8-\prall b c-\prall d e-\prall f }
      {}
    }
    
    a,16 a' cis, e a, cis e, a cis, e a, a'
    fis a' fis a d, fis a, d fis, a d, d'
    cis a' cis, e a, cis e, a
    cis, e a, a'
    fis d' cis b a gis32 a b a b cis b4-\prall
    
    \repeat unfold 2 {
      a4 r a'
      \acciaccatura { g8^\markup { \small \musicglyph #"accidentals.sharp" } } 
      fis4 r a
      \acciaccatura { fis8 } e4 r a
      r16 fis e d d cis b a cis b a gis
    }
    
    <<{ cis8 cis16 d e8 fis e d } { a8 a16 b cis8 d cis b }>>
    <<{ cis8 b16 cis d8 cis4 b8 } { a gis16 a b8 a4 gis8 }>>
    \repeat unfold 2 {
      <<{ cis16 b cis d cis d e fis e d cis b }
        { a gis a b a b cis d cis b a gis }>>
    }
    
    <<{ cis8 b16 cis d8 cis4 b8 } { a gis16 a b8 a4 gis8 }>>
    a16 a' e cis a e cis a r4
    R2.
  }
  
  \repeat volta 2 {
    r8 cis'16 d e8 a, e' a,
    r b16 cis d8 gis, d' gis,
    <a cis>4 q <cis e>
    <b d> q q
    
    a16 b cis d e d cis b a g fis e
    r8 fis'16 g a8 d, a' d,
    r e16 fis g8 cis, g' cis,
    <d fis>4 q <fis a>
    <e g> q q
    
    <d fis> q q
    g16 fis g a b a g fis e d cis b
    \repeat unfold 2 {
      <<{ e8e16. e32 e8 d cis d }
        { a a16. a32 a8 fis e d} >>
    }

    <<{ e'8 d cis d e d cis d e d cis d }
      { a fis e d a' fis e d a' fis e d }>>
    <a' e'>2.-\prall
    r2.-\fermata \bar "||"
    \key c \major
  
    \repeat unfold 2 {
      <<{ c'8 bes16 a a8 <f a> q q } \\
        { c2. } \\
        { \voiceFour f4 }>>
    
      <<\new Voice { \acciaccatura { a8 }
          \voiceOne g8 f16 e e8 fis g a }
        \new Voice { \voiceTwo <c, e>4 ~ c8 d e fis }>>
    
      <<{ bes8 a16 g a8 g f e }
        { g f16 e f8 e d cis }>>
    } \alternative {
      { d8-\prall e f-\prall g a-\prall bes }
      {}
    }
    \bar "||"
    \key d \major
  
    d,16 d' fis, a d, fis a, d fis, a d, d'
    b d' b d g, b d, g b, d g, g'
    fis d' fis, a d, fis a, d fis, a d, d'
    b g' fis e d cis32 d e d e fis e4-\prall
  
    \repeat unfold 2 { 
      d4 r d'
      \acciaccatura cis8 b4 r d
      \acciaccatura b8 a4 r d
      r16 b a g g fis e d fis e d cis
    }
  
    d8 <<{ fis16. g32 a8 b a g } { d16. e32 fis8 g fis e }>>
    <<{ fis8 e16 fis g8 fis4 e8 } { d cis16 d e8 d4 cis8 }>>
    \repeat unfold 2 {
      <<{ fis16 e fis g fis g a b a g fis e } 
        { d cis d e d e fis g fis e d cis }>>
    }
  
    <<{ fis8 e16 fis g8 fis4 e8 } { d cis16 d e8 d4 cis8 }>>
    d16 d' a fis d a fis d r4
    R2.
  }
}
 
left = \relative c' {
  \global
  
  \repeat volta 2 {
    R2. 
    d4-\prall d-\prall d-\prall
    d16 e fis g a g fis e d cis b a
    <d, d'>4 q <fis d'>
    
    <g d' e> q <a e'>
    r8 fis'16 g a8 d, a' d,
    <<{ r8 e16 fis g8 cis, g' cis, } \\ { a2. }>>
    d,4 d d
    r8 <<{ d16. e32 d8 g fis e } { d'16. e32 d8 e d cis }>>
    
    <d, d'>4 d d
    r8 <<{ d16. e32 d8 g fis e } { d'16. e32 d8 e d cis }>>
    <<{ d2 } \\ { d,4 fis g }>>
    \repeat unfold 12 { <a,, a'>}
    q2.
    r2.-\fermata
    
    <c c'>4 q q
    <g' g'> q q
    <d d'> <e e'> e
    a r r
    
    <c, c'>4 q q
    <g' g'> q q
    <d d'> e' e,
    <a, a'> q q
    
    <d d'> q q
    <a a'> q q
    <d d'> <e e'> e
    
    \repeat unfold 2 {
      a16 a'' cis, e a, cis e, a cis, e a, cis
      d a'' fis a d, fis a, d fis, a d, a'
      cis, e' cis e a, cis e, a cis, e a, cis
      d,4 e e
    }
    
    <a, a'> q <e' e'>
    <a, a'> <d d'> <e e'>
    <a, a'> q <e' e'>
    <a, a'> q <e' e'>
    <a, a'> <d d'> <e e'>
    <a, a'> r a''16 e cis a 
    a,2.
  }
  
  \repeat volta 2 {
    <a' a'>4 q <cis a'>
    <d a' b> q <e b'>
    r8 cis'16 d e8 a, e' a,
    <<{ r8 b16 cis d8 gis, d' gis, } \\ { e2. }>>
    
    <a cis>4 q q
    <d, d'> q < fis d'>
    <g d' e> q <a e'>
    r8 fis'16 g a8 d, a' d,
    <<{ r8 e16 fis g8 cis, g' cis, } \\ { a2. }>>
    
    d16 e fis g a g fis e d c b a
    g4 g g
    \repeat unfold 12 { <a,, a'> }
    q2.
    r2.-\fermata \bar "||"
    \key c \major
    
    \repeat unfold 2 {
      <f' c' f>2 q4
      <c g' c>2 <c c'>4
      <g' g'> a' a,
    } \alternative {
      { <d, d'> r r }
      {}
    }
    \bar "||"
    \key d \major
    
    <d d'>4 q q
    <g g'> q q
    <d d'> q q
    <g g'> <a a'> a
    
    d16 \repeat unfold 2 {
      a'' fis a d, fis a, d fis, a d, d'
      g, g' d g b, d g, b d, g g, g'
      fis a' fis a d, fis a, d fis, a d, fis
      g,,4 a a
    } \alternative {
      { d16 }
      {}
    }
    
    <d d'>4 q <a' a'>
    <d, d'> <g g'> <a a'>
    <d, d'> q <a' a'>
    <d, d'> q <a' a'>
    <d, d'> <g g'> <a a'>
    
    <d, d'>2 d''16 a fis d
    d,2.
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
