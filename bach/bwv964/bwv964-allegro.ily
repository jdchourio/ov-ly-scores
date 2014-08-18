\version "2.18.2"

su = \stemUp
sd = \stemDown
sn = \stemNeutral
tu = \tieUp
td = \tieDown
tn = \tieNeutral
cstr = \change Staff = "right"
cstl = \change Staff = "left"

\header {
  meter = "Allegro"
  tagline = ##f
}

global = {
  \key d \minor
  \time 4/4
}

right = \relative c' {
  \global
 
  \repeat volta 2 {
    \repeat unfold 2 { r16 f a d a g f e }
    \repeat unfold 2 { r f32 g a16 r r f a r }
    
    \cstl \voiceOne
    \repeat unfold 2 {
      d,16 \cstr e32 f g16 f32 e f16 g32 a bes16 a32 g a16 d bes g a g f e }
    
    <<\new Voice { \voiceOne r16 f a d } 
      \new Voice { \voiceTwo d,8 }>>
    
    \oneVoice 
    \su f'16[ a,] \sd f[ d] cis[ e] \su a[ cis] e \sd g,[ f e]
    d[ f] \su a[ d] f[ a,] \sd f[ d] cis[ e] \su a[ cis] e \sd g,[ f e] 
    d[ f] \su a[ c!] bes \sd f[ e d] c![ e] \su g[ bes] a \sd e[ d c]
    
    \oneVoice r16 d f a g f e d cis a' e cis r4
    r16 d a' c,! bes[ r bes] r r c g' bes, a[ r a] r
    
    r bes f' a, g[ r g] r r a e' g, f[ r g] r
    a r r8 a16 d f r r f e d b'8 r
    a, r a16 c e r r4 a16 c b a
    
    
    gis r r8 gis16 b d f,! e r r8 r16 gis b d
    c e32 d c16 b a f' r8 r16 d32 c b16 a g! e' r8
    
    r16 c32 b a16 g r d'32 c b16 a gis b32 gis e16 r r a[ r g]
    r g32 e c16 r r f[ r e] r e32 c a16 r r d[ r c]
    
    r4 r16 g32 a bes16 a32 g a16 b32 c d16 c32 b c16 d32 e f16 e32 d 
    b'16 f r f e d c b c d e f b,8. a16
    
    a8[ r16 d] b8[ r16 e] c8[ r16 f!] d8[ r16 g!]
    <<{ e16 } \\ { r }>> \sd c[ e] \su gis a[ c e] \sd g, f[ d f] \su a bes![ d f] \sd a,
    e \su gis[ b e] b[ a gis] \sd fis e \su gis[ b d] b[ a gis] \sd fis
    
    e \su gis[ a c] a[ g f!] \sd e d \su e[ f b] f[ e d] \sd c
    \sn s c d f d c b s8 b16 d f e d c b 
    c e32 c a16 r r d a' gis a e cis r r4
  }
  
  \repeat volta 2 {
    r16 a' c! e c a gis a r a c e c a gis a
    \repeat unfold 2 { r c,32 d e16 r r c e r }
    
    \repeat unfold 2 {
      r4 r16 d32 e f16 e32 d e16 r r fis32 gis a16 r r8 }
    
    \repeat unfold 2 {
      r8 r16 a c e c a gis b gis e r4 }
    r16 c e g! f r r8 r16 b, d f e r r8
    
    r16 a, c e d c b a gis e' b gis r4
    r8 r16 e' a b g! a f a32 g f16 e d e c d
    
    b r r d g a f g e r r g c d b c
    a c a e f r r f g c g d e r r e
    f c' f, d r b'32 c d16 f, e c' g e c d r8
    
    
    r16 f c' ees, d[ r d] r r e bes' d, c[ r c] r
    r d a' c, bes[ r bes] r r c g' bes, a[ r bes] r
    c r r8 c16[ r d] r ees r r8 ees16[ r f] r
    
    d r r f \voiceOne bes g d' r r8 r16 g, c a e'! r
    r8 r16 a, d bes f' r r8 r16 c e c g' bes,
    
    a c32 bes a16 bes32 c d16 r r a32 bes c16 r r g32 a bes16 r r f32 g
    \oneVoice a16 r r bes,32 c d16 bes g' bes, r bes e g f e d c
    
    r8 r16 f r8 f16 e f a32 f c16 r \cstl \voiceOne  r c32 a f16 r
    \cstr \oneVoice r c' fis c fis c a' c, bes g'32 d bes16 r r d32 bes g16 r
    r d' gis d gis d b' d, cis a'32 e cis16 r r e32 cis a16 r
    
    r32 a' g f e16 f32 g f16 e32 d cis16 d32 e r d c bes a16 bes32 c bes16 a32 g r8
    r16 bes'32 a g16 f! e g r8 r16 a32 g f16 e d f r8
    
    
    r16 g32 f e16 d \voiceOne r16 g e' g, f8[ r16 bes] e,8[ r16 a]
    d,8[ r16 fis] g8[ r16 bes] cis8[ r16 e] g e32 cis a16 cis32 e
    
    f16 a32 f d16 r r g[ r f] r f32 d bes16 r r e[ r d]
    r d32 bes g16 r r g[ r g] r8 e16 g bes! a32 g f16 e
    
    \oneVoice f r r8 r16 f e d32 cis d16 bes32 c d16 bes a r r8
    r32 a b cis d16 a g r r8 r32 f g a bes16 a r e' bes' r
    
    r32 d, e f g16 f \voiceOne r cis'32 d e16 r r32 a, b cis d8 r d16 cis!
    r8 c!16 a r8 b16 g r8 bes16 g r8 a16 fis!
    
    r8 a16 d, r8 d'16 g, r16 g e' d cis b a g
    f! a32 f d16 r r g d' cis d a f d \oneVoice r4
  }
}
 
left = \relative c {
  \global
  
  \repeat volta 2 {
    <d d'>4 r q r
    \repeat unfold 2 { d'8. a16 d8. cis16 }
    
    \repeat unfold 2 {
      d8 r r4 r8 d,16 e f8 a }
    
    s1*2 
    s4 g16 s8. s4 f16 s8.
    
    bes8 r bes, r a r a'16 bes g a
    fis8 r r16 g[ r f] e8 r r16 f[ r e]
    
    d8 r r16 e16[ r d] cis8 r r16 d[ r e]
    r f d f r8 r16 a gis8 r r16 d' c b
    r e, c e r8 r16 g! fis e' d c r4
    
    
    r16 d b d r4 r16 b gis b e r r8
    a, r r d16 e32 f g,!8 r r c16 d32 e
    
    f,8 r f'16 r r8 e16 r r d c[ r b] r
    a8 r16 bes a[ r g] r f8 r16 g f[ r e] r
    
    d16 e32 f g16 f32 e f16 r r8 f r a r
    r gis r4 
    <<\new Voice { \voiceOne a4 ~ a8 gis }
      \new Voice { \voiceTwo a8 d, e4 }>>
    
    r16 fis32 gis a16 r r gis32 a b16 r r a32 b c16 r r b32 c d16 r
    s1*3
    
    b16 s4. a16 gis s s4.
    r8 r16 e b' r r8 r r16 a a,4
  }
  
  \repeat volta 2 {
    a'4 r a r
    \repeat unfold 2 { a8. e16 a8. gis16 }
    
    \repeat unfold 2 {
      a16 b32 c d16 c32 b c16 r r 8 r16 c32 d e16 r r e32 d c16 b }
    
    \repeat unfold 2 {
      a16 c e r r4 r b16 d c b}
    a16 r r8 r16 c b a g! r r8 r16 b a g
    
    f r r8 r4 r e16 f d e
    c a'32 b c16 r16 r4 d,8 r r4
    
    g,16 g'32 a b16 r r4 c,16 c'32 d e16 r r4
    f,8 r r16 a c r e,8 r r16 g c r
    d,8 r g r c, r r bes'!16 c
    
    
    a8 r r16 bes[ r a] g8 r r16 a[ r g]
    f8 r r16 g[ r f] e8 r r16 f[ r g]
    r a f a r a[ r bes] r c a c r c[ r c]
    
    r bes d r \cstr \voiceTwo r8 r16 f e! c e r r8 r16 g
    f d f r r8 r16 a g e g r r4
    
    f8 r bes,16 e32 f g16 r a, d32 e f16 r g, c32 d e16 r
    \cstl \oneVoice r16 f,32 g a16 r bes,8 r c r r4
    
    bes'16 a32 g a16 r c, g' r8 f, r16 \voiceTwo bes' a r r ees
    \oneVoice d8 r r4 g,8 r16 a' g r r f!
    e8 r r4 a,8 r16 b' a r r g!
    
    f8 r r4 fis8 r r fis16 g32 a 
    g8 r r c16 d32 e f,!8 r r bes16 c32 d
    
    
    e,8 r \cstr \voiceTwo cis' r r16 d32 e f16 r r c32 d e16 r
    r bes32 c d16 r r e32 f g16 r r a32 b cis16 r a,8 r
    
    d r16 c'!16 bes![ r a] r g8 r16 a g[ r f] r
    e8 r16 d cis[ r b] r a cis r8 r4
    
    \cstl \oneVoice r16 cis d gis, a8 r bes, r r16 g' f e
    <<\new Voice { \voiceOne f8 r r16 f e d e r r8 }
      \new Voice { \voiceTwo a,8 r r4 g8 r }>>
    g'16 r r d'
    
    cis r r8 \cstr \voiceTwo e16 r r g f8 r16 f a, e' r8
    d16 fis r8 d16 g r8 cis,16 g' r8 c,16 fis! r8
    
    b,16 d r8 bes16 g' r8 a, r r4
    r8 r16 a e'4 \cstl \oneVoice d, d,
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
      \clef bass 
      <<
        \breaks
        \left 
      >>
    }
  >>
  \layout { indent = 0 }
}
