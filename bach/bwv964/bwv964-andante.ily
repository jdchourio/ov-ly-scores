\version "2.18.2"

cstr = \change Staff = "right"
cstl = \change Staff = "left"

\header {
  meter = "Andante"
  tagline = ##f
}

global = {
  \key d \minor
  \time 3/4
  %\override Staff.NoteCollision #'merge-differently-dotted = ##t
}

rightOne = \relative c' {
  \global

  \oneVoice
  \repeat volta 2 {
    s2. s2.
    r16 c d e f4 ~ f16 d e f
    
    e d c8 r a'16 bes! a g f e
    d4 r8 g16 a g f e d
    c g' a bes \voiceOne c4 ~ c16 a d c
    
    bes4 r16 f g a bes d c bes
    a4 \oneVoice r16 g f e d c b c
    g8 ~ g32 g a b c64 d c b c32 d e64 f e d e32 f \voiceOne \appoggiatura f8 g4 ~
    g16 a32 g f g a16 e8. f64 e d e f8 d\turn 
  } \alternative {
    { c4 \oneVoice r r }
    { c2. }
  }
  
  \oneVoice 
  g'4 r8 g a16 g f e
  
  \repeat volta 2 {
    a e g8 ~ g8 g32 a bes!16 a g f e
    
    f g a8 ~ a c32 bes16 a32 g16 f e d
    \voiceOne d' b cis8 r cis16 e e cis cis a
    \oneVoice d4 ~ d16 e d c! b a gis a
    d e f8 ~ f f16 e d c d b
    
    \voiceOne c a gis a <<{ e'8 d } \new Voice { \voiceThree <a c>8 }>> d16 c d b
    b8 a \oneVoice r a16 bes c d ees8 ~ 
    ees d r c c16 bes c a
    a8 bes r g16 a \voiceOne bes c d8
    
    c4 \oneVoice r16 f, e f \appoggiatura b16 a g a f
    \appoggiatura f8 e4 r16 e f g f e d c
    bes aes'( g f e f des' c) \voiceOne b32 g f e f16 b
    c16. d!32 c bes! a! bes64 c f,8 ~ f32 e d e e8.-\trill d32 e
  } \alternative {
    { f4 r r \oneVoice e16 f g8 r g a16 g f e }
    { f2. }
  }
  \bar "|."
}

rightTwo = \relative c'' {
  \global
  
  \repeat volta 2 {
    s2.*5
    s4 r16 g a e f4 ~
    f16 f g d e2
    f4 s2
    s2 c4 
    c c b
  } \alternative {
    { g4 s2 }
    { g2. }
  }
  
  s2.
  
  \repeat volta 2 {
    s2.*2
    f'8 e r4 r
    s2.*2
    
    r4 e8 f e b
    c4 s2
    s2.
    s2 r8 e!
    
    e16( g) f8 s2
    s2. 
    s2 aes,4
    a!8 bes! c2
  } \alternative {
    { c8 c c c f f s2. }
    { c2. }
  }
}

leftOne = \relative c' {
  \global
  
  \repeat volta 2 {
    a4-\mordent r8 a bes16 a g f
    c' g bes8 ~ bes16 a bes d c bes a g
    a4 ~ a16 c d a b4
    
    c8 r e, r r a
    f g16 a d,8 r r g
    e f16 g a8 a a a
    
    g g g g c, c
    c f a a a a
    b r r4 g
    a g ~ g8 f
  } \alternative {
    { e4 r16 c' bes! a g d' c bes }
    { e,2. }
  }
  
  \repeat unfold 6 { c8 }
  
  \repeat volta 2 {
    r8 r16 e a8 a e a
    a f d d d g
    a r s2
    r8 a16 g a8 a d d 
    gis, gis16 a b8 b gis gis
    
    a4 ~ a8 a a gis
    a4 r r
    r8 a \appoggiatura g8 fis! fis fis fis
    g g r4 r8 bes
    
    c c d d d d 
    s2 r8 e,
    f4 r f
    f g8 a bes4
  } \alternative {
    { a8 a a a b b c r r4 r }
    { a2. }
  }
}

leftTwo = \relative c, {
  \global
  
  \repeat volta 2 {
    \repeat unfold 6 { f8 }
    \repeat unfold 6 { e }
    f f d d g g
    
    c, c 
    \repeat unfold 6 { c' }
    \repeat unfold 6 { bes }
    a a d d
    
    g, g c c c, c
    f f f' f f f ~
    f r r4 e
    f g g,
  } \alternative {
    { c,8 c d d e e }
    { c2. }
  }
  
  s2.
  
  \repeat volta 2 {
    \repeat unfold 6 { cis'8 }
    
    d d bes bes bes bes
    a[ a] g' g g g
    \repeat unfold 6 { f }
    b, b gis'! gis e e
    
    a, b c d e e
    a, a a' a g! g
    fis fis d d d d
    g, g g' g g g
    
    a a b b b b
    c c c, c c c
    des4 r d
    
    c c2
    
  } \alternative {
    { f8 f e e d d 
      c c c c c c }
    { f,2. }
  }
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        \breaks
        \new Voice { \voiceOne \rightOne }
        \new Voice { \voiceTwo \rightTwo }
      >>
    }
    \new Staff = "left" { 
      \clef bass 
      <<
        \breaks 
        \new Voice { \voiceOne \leftOne }
        \new Voice { \voiceTwo \leftTwo }
      >>
    }
  >>
  \layout { indent = 0 }
}
