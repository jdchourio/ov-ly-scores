\version "2.18.2"

\header {
  title = "K348"
  meter = "Prestissimo"
  tagline = ##f
}

global = {
  \key g \major
  \time 3/4
}
cstr = \change Staff = "right"
cstl = \change Staff = "left"

right = \relative c'' {
  \global
 
  \repeat volta 2 {
    g16 b a c b d c e d fis e g
    fis a g b a g fis e d c b a
    \voiceOne b4 r r
    
    R2. \oneVoice
    r16 d e fis g d b g d c' b a
    b d e fis g d b g d c' b a
    
    \voiceOne b2 c4
    b2 c4 \oneVoice
    b16 g' fis g b g fis g b, b' a g
    
    a, fis' e fis a fis e fis a, a' g fis
    g, e' d e g e d e g, g' fis e
    fis4 d fis
    
    a4 a, g'
    fis d fis
    a, \voiceOne a' <d, fis> \oneVoice
    
    <cis e> \voiceOne a' <d, fis> \oneVoice
    <cis e> \voiceOne g' <cis, e> \oneVoice
    r16 a' fis g a g fis e d cis b a
    
    b g' fis g a, fis' e fis g, e' d cis
    a' g fis e d cis b a g fis e d
    a'4 \voiceOne a' <d, fis> \oneVoice
    
    <cis e> \voiceOne a' <d, fis> \oneVoice
    <cis e> \voiceOne g' <cis, e> \oneVoice
    r16 a' fis g a g fis e d cis b a
    b g' fis g a, fis' e fis g, e' d cis
    
    d a' g a fis g e fis d e a, cis
    d a g a fis g e fis d e a, cis
    d 
    \change Staff ="left" \voiceOne
    a g a fis g e fis d d' e, cis'
    \change Staff ="right" \oneVoice
    d2.
  }

  \repeat volta 2 {
    \repeat unfold 2 {
      a''16 fis d a fis a fis d b' g d g }
    a' fis dis c a fis dis fis a c fis a
    
    \voiceOne 
    <b, dis fis a>2 <b e g>4
    <b dis fis>2 <b e g>4
    <c fis a>2 <dis fis>4
    \oneVoice
    
    r16 g fis g b e, dis e a fis e fis
    \voiceOne g2 b4 \oneVoice
    r16 e,dis e c' a b g a fis g e
    
    fis2 a4
    r16 d, cis d b' g a fis g e fis d
    e c d b c a b g a fis g e
    
    \repeat unfold 2 {
      \repeat unfold 2 { 
        \voiceOne <d' fis a>4 d <d g b> }
      <c fis a>2 q4 \oneVoice 
      r16 g' b a g fis e d c b a g
    } \alternative {
      { e' c d e d b c a b g a fis
        d'' c b a g fis e d c b a g }
      { e' g fis e d c b a g a d, fis }
    }
    
    g d'' c d b c a b g a d, fis
    g d c d b c a b g a d, fis
    g d c d \cstl \voiceOne b c a b g a d, fis
    g2.
  }
}
 
left = \relative c {
  \global
  
  \repeat volta 2 {
    g2.-\prallprall
    R2.
    \cstr \voiceTwo
    g'16 b a c b d c e d fis e g
    
    fis a g b a g fis e d c b a
    \cstl \oneVoice g2 d4
    g,2 d'4
    
    \once \stemUp g,16 
    \change Staff = "right" \voiceTwo
    d'' e fis g d
    \change Staff = "left" \oneVoice
    b g d c' b a
    
    g \change Staff = "right" \voiceTwo
    d' e fis g d
    \change Staff = "left" \oneVoice
    b g d c' b a
    g2 g,4
    
    fis2 fis'4
    e2 a,4
    d16 d' cis d fis d cis d d, d' cis b
    
    a, a' gis a cis a gis a a, g' fis e
    d d' cis d fis d cis d d, d' cis b

    \repeat unfold 2 {
      \repeat unfold 2 {
        a, cis e a \cstr \voiceTwo cis e cis a fis' a fis d \cstl \oneVoice
      }
      g,, cis e g \cstr \voiceTwo cis e cis g e' g e cis \cstl \oneVoice
      fis,,4 \cstr \voiceOne d''''^"G" \cstl \oneVoice fis,,,,
      g a a
      d, fis 
    } \alternative { {g} {a} }

    d, fis a
    \voiceTwo d, fis a \oneVoice
    d,2.
  }
  
  \repeat volta 2 {
    <d d'>2. q < c c'>
    
    \repeat unfold 2 {
      b'16 dis fis b  \cstr \voiceTwo dis fis dis b e g e b \cstl \oneVoice }
    a, c dis fis \cstr \voiceTwo dis' fis dis a dis fis dis a \cstl \oneVoice
    
    g,4 <g' e'> <fis dis'>
    e16 \cstr \voiceTwo e' dis e g e dis e \cstl \oneVoice e, \cstr \voiceTwo d' c b \cstl \oneVoice
    a,2 c4
    
    d16 d' cis d fis d cis d d, c' b a
    g,4 g' b,
    c c, c'
    
    \repeat unfold 2 {
      \repeat unfold 2 {
        d16 fis a \cstr \voiceTwo d fis a fis d b' d b g \cstl \oneVoice }
      c,, fis a c \cstr \voiceTwo fis a fis c fis a fis c \cstl \oneVoice
    
      b,4 
      \change Staff = "right" \voiceOne 
      d'''^"G" 
      \change Staff = "left" \oneVoice
      b,,,,
      c d d
      g b
    } \alternative { { c } { d } }
    
    g, g d
    g \voiceTwo g d
    g2.
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
