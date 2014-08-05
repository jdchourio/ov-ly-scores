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
  \key b \minor
  \time 3/4
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
}

right = \relative c'' {
  \global
  
  \partial 2.*5/6
  \repeat volta 2 {
    <<{ s8 d b'4 ais8 } \\ { fis16 e d4 cis }>>
    <<{ b'4 b, e } \\ { b'8 g,16 fis e8 g cis, ais' }>>
    <<{ d8 b16 a cis8 b4 ais8 } \\ { \shiftOn s4 g4 \su fis8 \noBeam e }>>
    
    \cstr \sd b'16 \cstl \su b, \cstr \sd d \cstl \su b \cstr \sd fis' \cstl \su b, 
    \cstr \sd d \cstl \su b \cstr \sd b' \cstl \su b, \cstr \sd d \cstl \su b
    \cstr \sd a' \cstl \su a, cis a
    \cstr \sd fis' \cstl \su a, cis a
    \cstr \sd a' \cstl \su a, cis a
    \cstr \sd g' \cstl \su g, b g
    \cstr \sd e' \cstl \su g, b g
    \cstr \sd g' \cstl \su g, b g

    \cstr \sn 
    <<{ fis'8 ais b4. cis8 
        d dis e4. fis8
        s4 d!4. e8 } \\
      { s4 b8 d, e4
        fis e'8 g, a4
        g'8[ cis,] d[ fis,] g4
    }>>
    fis'8 g16 a b a g fis e d cis b
    
    \cstl \su a,,^"D" \repeat unfold 3 {
      \cstl \sd a'[ cis \cstr e] g e cis \cstl \su a 
      \cstr \sd fis' d \cstl \su a \cstr \sd d
      e cis \cstl \su a \cstr \sd cis g' e cis \cstl \su a 
      \cstr \sd fis' d \cstl \su a \cstr \sd d 
    } \alternative {
      { e16_"G" } { e16_"D" } { e16 }
    }
    
    \cstl \su a, cis \cstr \sd e a e cis \cstl \su a \cstr \sd a' fis d \cstl \su a
    \cstr \sd a' d, \cstl \su b \cstr \sd d g d \cstl \su b \cstr \sd d g cis, \cstl \su a \cstr \sd cis
    g' d \cstl \su a \cstr \sd d fis d \cstl \su a \cstr \sd d fis d \cstl \su a \cstr \sd d
    fis \cstl \su b, g b \cstr \sd e \cstl \su b g b \cstr \sd e \cstl \su a, g a
    
    \cstr \sd d \cstl \su a b cis \cstr \sn d e fis g a fis e d
    b' g fis e fis g a g fis e d cis
    <<{ d'4 g,16 d' cis b cis4 } \\ { d16 a g fis e4 cis'16 g fis e }>>
    <<{ fis cis' b a b4 e,16 b' a g } \\ { d4 b'16 fis e d cis4 }>>
    
    <<{ a'4 \once \override Beam #'positions = #'(3 . 3) d,16 a' g fis g8 fis16 e } \\ { a16 e d cis s4 g'16 e d cis }>>
    fis8[ a,] b[ cis] d[ e]
    fis16 d e fis g e a fis b g cis a
    d e fis g fis g a g fis e d cis
    
    d a' g fis fis fis e d d d cis b
    a a g fis fis fis e d d d \cstl \su cis b
    a a g fis fis fis e d d fis, g a 
    d,8
  }
  
  \repeat volta 2 {
    \cstr \sn
    <<{ s8 fis''8 d'4 cis8 } \\ { a16 g fis4 e }>>
    <<{ d'8 dis e4. fis8 } \\ { s8 fis, e'8[ g,] a4 }>>
    <<{ s4 g8 e'4 dis8 } \\ { g b,16 a g4 fis }>>
    <<{ e'8 eis fis4. gis8 } \\ { s8 gis, fis'8[ a,] b4 }>>
    
    a'16 gis fis e! d cis b a gis fis eis fis
    \repeat unfold 3 { \sd gis eis cis eis b' gis cis, gis' a fis cis }
    \alternative { {fis} {fis} {\cstl \su a,} }
    \cstr \sd a' fis d \cstl \su b \repeat unfold 2 { \cstr \sd gis' d \cstl \su b \cstr \sd d }
    \cstr \sd gis cis, \cstl \su a \cstr \sd cis \repeat unfold 2 { fis cis \cstl \su a \cstr \sd cis }
    
    fis d \cstl \su b \cstr \sd d gis d \cstl \su b \cstr \sd d gis \cstl \su cis, b cis
    \cstr \sd a' \cstl \su cis, \cstr \sd fis a cis fis, a cis fis cis a cis
    b g! b fis' e b g b e cis g cis
    
    \repeat unfold 2 { e cis fis, cis' } d b fis b
    g' a fis g e fis d e cis d b cis
    ais fis ais cis e cis fis, cis' d b fis b 
    cis ais fis ais e' cis fis, cis' d b fis b
    
    cis \su fis,[ ais cis] \sd e cis fis, cis' d b fis b 
    cis ais fis ais e' cis fis, cis' d b fis b
    cis \su fis,[ ais cis] \sd e cis fis, cis' d b fis b 
    cis fis, ais cis e cis fis, cis' d b fis b
      
    cis fis, ais cis e cis fis, cis' d b fis d
    d' b g e \repeat unfold 2 { cis' g e g }
    cis fis, d fis \repeat unfold 2 { b fis d fis }
    b g e g cis g e g cis fis, e fis
    
    d' b fis b fis' d b d b' fis d b
    g' e d cis d e fis e d cis b ais
    <<{ b'4 e,16 b' a g a4 } \\ { b16 fis e d cis4 a'16 e d cis }>>
    <<{ d a' g fis g4 cis,16 g' fis e } \\ { b4 g'16 d cis b a4 }>>
    
    <<{ fis'4 b,16 fis' e d e8 d16 cis } \\ { fis cis b ais g4 e'16  cis b ais }>>
    \su d8[ fis,] gis[ ais] b[ cis]
    d16 b cis d e cis fis d g e ais fis
    b e, d cis d e fis e d cis b ais
    
    \sd b fis' e d d d cis b b b a g
    \su fis fis e d d d \cstl cis b b b a g 
    fis fis e d d d cis b b d, e fis
    b,8
  }
}
 
left = \relative c {
  \global
  
  \partial 2.*5/6
  \repeat volta 2 {
    s8 s2 s2.
    <<{ s4 e8 \cstr \sd e' d cis } \\ { b4 e, fis }>>
    <<{ \cstr s4 b''^"G" s s a^"G" s s g^"G" s } \\ 
      { \cstl b,,, s b_"G" a s a_"G" g s g_"G" }>>
    
    <<{ fis8 fis'16 e d8 b'4 ais8
        s4 g8 e'4 dis8
        e4 fis,8 d'4 cis8
        d4 } \\
      { s4 d, cis
        b8 b'16 a! g4 fis
        e8 a16 g fis4 e
        d }>> g, g'
    
    <<{ \cstr s4 a''^"G" s s a^"G" s s a^"D" s s a^"D" s s a^"G" s s a^"G" s } \\
      { \cstl s4 s a,,,_"G" a s a_"G" s s a_"D" a s a_"D" a s a_"G" a s a_"G" }>>
    <<{ \cstr s a'''^"G" s s g^"G" s s fis^"G" s s e^"G" s } \\
      { \cstl a,,, s fis_"G" g s e_"G" fis s d_"G" e s cis }>>
    
    d4  d' fis,
    g a a'
    b s a
    s g s 
    
    fis b e,
    \cstr fis'16[ \cstl d,] e fis g e a fis b g cis a
    d8[ cis] b[ a] g4-\trill 
    fis8 g a4 a,
    d, s2 
    s2. s s8
  }
  
  \repeat volta 2 {
    s8 s2
    <<{ \cstr \sd d'''8 \cstl \su b,16 a g8 e'4 dis8 } \\ { s4 g, fis }>>
    e4 s2
    <<{ \cstr \sd e''8 \cstl \su cis,16 b a8 fis'4 eis8 } \\ { s4 a, gis }>>
    fis b d,
    
    <<{ \cstr \su \repeat unfold 3 { s4 cis''^"G" s } s b^"G" s s a^"G" s s b^"G" s } \\
      { \cstl \su \repeat unfold 2 { cis,,, s cis_"G" } 
        cis s a'_"G" b s gis_"G" a s fis_"G" gis s eis_"G" }>>
    fis fis' <a cis>
    <b d> <cis e> <b e>
    
    <ais e'> fis b
    e, e' e,
    <<{ \cstr \su s fis''^"G" s s fis^"G" s 
        s fis^"D" s s fis^"D" s 
        s fis^"G" s s fis^"G" s 
        s fis^"G" s s e^"G" s 
        s d^"G" s s e^"G" s } \\
      { \cstl \su fis,,, s fis_"G" fis s fis_"G" 
        fis s fis_"D" fis s fis_"D" 
        fis s fis_"G" fis s fis_"G"
        fis s d_"G" e s cis_"G" 
        d s b_"G" cis s ais_"G"
    }>>
    
    b b' d
    e fis fis, 
    g'' s fis
    s e s
    
    d s cis
    \cstr \sd d'16[ \cstl \su b,] \cstr \sd cis d e cis fis d gis! e ais! fis
    b8[ a!] g![ fis] e4_\trill
    d8 e fis4 \cstl fis,
    
    \su b, s2 
    s2. s2. s8
  }
}

\header {
  title = "K27"
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