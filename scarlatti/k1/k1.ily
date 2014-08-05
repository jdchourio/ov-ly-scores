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
  \key d \minor
  \time 4/4
}

right = \relative c'' {
  \global
 
  \repeat volta 2 {
    \tieUp
    d16 e f g a a, cis a \su d4. e8
    f16 d g e a f e d cis8 a' a4-\trill ~
    
    a16 g f e d c bes a bes8 g' g4-\trill ~
    g16 f e d c bes a g a8 f' f4-\trill ~
    f16 e d c bes a g f g8 e' e4-\trill ~
    
    e16 d cis b a g f e f d g e a f e d
    cis \cstl a \cstr d \cstl b \cstr e \cstl cis \cstr f d g e a f b g cis a
    
    d b e cis f d g e a4 g-\trill
    a g-\trill a g-\trill
    f16 d g e a f e d cis a d b e g, f e
    
    << { f d g e } \\ { d16 } >> a' f e d cis \cstl a \cstr d \cstl b \cstr e \cstl cis \cstr f d
    g g f e f8 g16.-\trill f64 g a16 e f d e cis! d8
    e d cis16 \cstl e, cis e a,4-\trill r-\fermata
  }
  
  \repeat volta 2 {
    \cstr \sd a''16 b cis d e cis f d e4. \su a,8
    b16 g cis a d b e cis <<{ fis d g e } \\ {d}>> a' c, bes a
    <<{ bes g c a } \\ {g}>> d' bes a g <<{ fis d g e } \\ {d}>> \sd a' \cstl \su c, bes a
    
    bes g c a \cstr d \cstl bes \cstr e \cstl c \cstr f d g e a f bes g
    c4 bes-\trill c bes-\trill
    <<{ c8[ a'] bes,[ g'] } \\ { s8 f s e }>> a,16 f c' a f' c a' f
    
    e g c, e g, c bes a bes g d' bes g' d bes' g
    f a d, f a, d c b c a e' c a' e c' a
    gis b e, gis \once \override Beam #'positions = #'(5 . 5) b, d cis b cis8 a' a4-\trill ~
    
    a16 g f e d c bes a bes8 g' g4-\trill ~
    g16 f e d c bes a g a8 f' f4-\trill ~ 
    f16 e d c bes a g f g8 e' e4-\trill ~ 
    
    e16 d cis b a g f e \repeat unfold 3 { <<{ \shiftOn f d g e } \\ {\su d'4}>> a16 f bes g }
    \repeat unfold 3 { <<{ a8[ f'] g,[ e'] } \\ { s d s cis }>> }
    <<{ d8 } \\ { d, } \\ 
      { \once \override Beam #'positions = #'(2 . 2) f16 d g e a f b g }>>
    
    \sd cis a d e f d e cis \su d a bes g a f bes8 
    a g f16 s8. s2
  }
}
 
left = \relative c' {
  \global
  
  \repeat volta 2 {
    s2 \cstr \sd d16 e f g a \cstl \su a, cis a
    \cstr \sd d8 e f g a a a a
    
    <f a> q q f \cstl \su g, \cstr \sd <g' bes> q q
    <e g> q q e \cstl \su f, \cstr \sd <f' a> q q
    <d f> q q d \cstl \su e, \cstr \sd <e' g> q q
    
    <<{ \sd e e e s d } \\ { \cstl \sd a a a a d, e f g }>>
    \cstl a s8 cis8[ \cstr d] e[ f] g[ a]
    
    b[ cis] d[ e] f16 d bes g e' cis a cis
    f d bes g e' cis a cis f d bes g e' cis a cis
    <<{ \sd d } \\ { d,8 e f g }>> <<{ \sd a16 } \\ { \cstl a,8 b cis a }>>
    
    \cstl d, e f g a[ b] cis[ \cstr d] 
    \cstl \su e,16 \cstr \sd e' d cis 
    \once \override Beam #'positions = #'(-11 . -11) 
    d8 \cstl bes \su a,4 s8 \cstr \sd d'16 \cstl \su b
    cis a b gis a s8. s2 
  }
  
  \repeat volta 2 {
    s2 \sd a16 b cis \cstr d e cis f d
    g8[ a] b[ cis] d,8 e fis d
    \cstl g, a bes c d, e fis d
    
    g8[ a] bes[ c] \cstr d[ e] f[ g]
    \repeat unfold 3 { a16 f d \cstl \su bes \cstr \sd g' e c e }
    f8 \cstl \su f, f f,
    
    c' c' c \cstr \sd fis g \cstl \su g, g g,
    d' \cstr \sd d' d gis a \cstl \su a, a a,
    e' e, e e a \cstr \sd a'' a a
    
    \cstl \su f,, \cstr \sd <f'' a> q f \cstl \su g,, \cstr \sd <g'' bes> q q
    \cstl \su e,, \cstr \sd <e'' g> q e \cstl \su f,, \cstr \sd <f'' a> q q 
    \cstl \su d,, \cstr \sd <d'' f> q d \cstl \su e,, \cstr \sd <e'' g> q q 
    
    <<{ s8 \sd e e s } \\ { \cstl a,, a' a a }>> 
    \repeat unfold 3 { d[ e] f[ g] }
    \repeat unfold 3 { f16 d \cstl bes g \cstr e' cis \cstl a \cstr cis }
    
    \cstl d,8 e f g
    a g a a, d4 s8 \cstr g'16 e
    f d e cis d \cstl \su a f a d,4-\trill r-\fermata
  }
}

\header {
  title = "K1"
  meter = "Allegro"
  tagline = ##f
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
      \clef bass \left 
      \breaks
      >>
    }
  >>
  \layout { indent = 0 }
}