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
  \key c \minor
  \time 4/4
}

right = \relative c'' {
  \global
 
  \repeat volta 2 {
    c8 c, c c c' c, c c
    c'8.-\trill b16 c d ees d c bes aes g f aes g f
    ees8.-\trill d32 ees c4 \su <c ees g> r
    
    <ees g c> r <c' ees g> r
    <ees g c> r r8 <<{ ees d16 ees f d ees4 } \\ { c8 b4 c }>>
    r r8 <<{ c' b4 c } \\ { ees,8 d16 ees f d ees4 }>>
    
    r r8 <<{ ees d16 ees f d ees4 } \\ { c8 b4 c }>>
    r \repeat unfold 2 { r16 \sd g' ees c \su g ees c ees' d4 r }
    
    r16 \sn c, ees g c ees g c
    aes4 f\rest r16 bes f d bes f d bes
    g'4 ees'\rest r16
    <<{ s16 \repeat unfold 2 { s8 r16 f ees d ees8 } 
        \repeat unfold 2 { s8 r16 bes' aes g aes8 }
        \repeat unfold 2 { s8 r16 aes g f } \alternative { {g8} {g16 f f ees} }
      } \\
      { \repeat unfold 2 { g16 g, g' a,8 b c16 } 
        \repeat unfold 2 { c' c, c' d,8 e f16 }
        \repeat unfold 2 { bes bes, bes' c,8 d ees16 }
    }>>
    
    \su ees d d c
    c bes bes a a g fis g \appoggiatura g fis4-\trill  r8 \sn d'
    ees16 d ees f g ees d cis cis d d ees f d c b
    b c c d ees c bes a a bes bes c d bes aes g
    g aes aes b b c c d d ees ees fis fis g g a
    
    a bes bes c c bes bes a a g g f f ees ees d
    d c c bes <<{ s8 ees d16 g, c a bes8 a } \\ { bes16 a g fis g s s8 g fis }>>
    <g bes d>4 r <bes d g> r
    
    r8 <<{ bes'8 a16 bes c a bes4 } \\ { g8 fis4 g }>> r
    r8 <<{ g fis16 g a fis g4 } \\ { bes,8 a4 bes }>> r
    r8 <<{ bes8 a16 bes c a d fis, g c, bes g' a, fis' } \\ { g8 fis4 }>>
    
    \cstl \su g,16 d bes' g \cstr \sn d' bes g' d bes' g d' bes g' d bes d
    g,4 r r2
    R1
  }
  
  \repeat volta 2 {
    g8 g, g g g'8.-\trill fis16 g a bes a
    g f ees d c ees d c bes8.-\trill a32 bes g4
    bes'8 bes, bes bes bes'8.-\trill a16 bes c d c
    bes a g f ees g f ees d8.-\trill c32 d bes4
    
    <<{ <d' f>4 } \\ { bes }>>
    \repeat unfold 2 { r4 r8 <<{ a16 bes c d ees c <bes d>4 } \\ { f8 f f f4 }>> }
    \repeat unfold 2 { bes\rest r8 <<{ b16 c d ees f d <c ees>4 } \\ { g8 g g g4 }>> }
    bes\rest r8 <<{ b16 c d ees f d } \\ { g,8 g g }>>
    
    \sd e'16 f e d c bes aes g 
    \repeat unfold 2 {
      \repeat unfold 2 { aes g aes f' }
      \repeat unfold 2 { g, f g e' }
    } aes, g aes f' g, f g ees'
    
    \su \repeat unfold 2 { f, ees f d' } \repeat unfold 2 { g, f g ees' }
    \repeat unfold 3 { f, ees f d' } ees, d ees c' \sn
    <<{ r8 b } \\ { ees, d }>> r g' aes16 g aes bes c aes g fis
    
    fis g g a bes g f e e fis fis g aes fis ees d
    d ees ees fis g ees d c c des des e e f f ees
    ees d d c c b b c <<{ d8 c4 b8 c4 } \\ { r16 f, ees d ees f ees d ees4 }>>
    
    \su r <g c ees> r <c ees g> r r8
    <<{ c'8 b4 c8 ees, d16 ees f d ees8 c4 b8-\trill } \\ 
      { ees d16 ees f d ees8 c b4 }>>
    
    <<{ c8 r g f ees } \\ { g16 c, f d ees c d b c g ees' c g' ees c' g }>>
    \sd ees' c g' ees c' g ees g c,4 r
    R1
  }
}
 
left = \relative c' {
  \global
  
  \repeat volta 2 {
    c8 c, c c c' c, c c
    c'8.-\trill b16 c d ees d c bes aes g f aes g f
    ees8.-\trill d32 ees c4
    
    \repeat unfold 4 { \cstl r16 c ees g c \cstr ees g c }
    \cstl c,,4 r 
    \repeat unfold 2 { 
      \cstl r16 c ees g c \cstr ees g c \cstl c,,4 g'8 g,
    } r16 c ees g c \cstr ees g c \cstl c,,4 r
    
    \repeat unfold 2 { \cstr \sd r16 g'' d b \cstl \sn g d g, f' ees4 r }
    r16 f aes c \cstr \sd f aes f d \cstl \sn bes,4 r
    
    r16 ees g bes \cstr \sd ees g ees bes \cstl ees,8[ ees'] d[ g,]
    c[ ees] d[ g,] \clef treble \sn c[ aes'] g[ c,]
    
    f[ aes] g[ c,] f[ g] aes[ bes]
    ees,[ g] aes[ bes] ees,[ d] c[ bes]
    ees d c ees d4 \clef bass d,
    
    \clef treble r8 g' g g fis f f f
    e ees ees ees d[ d] bes[ bes]
    c[ d] ees[ f] g[ a] bes[ c]
    d[ ees] ees[ d] c[ bes] a[ g]
    f[ ees] d[ c] bes[ ees] d[ \clef bass d,]
    
    r16 g, bes d g bes d g \repeat unfold 2 {
      r16 g,, bes d g bes d g g,,4 d'8 d, }
    r16 g bes d g bes d g
    g,,4 r8 d' bes ees d d,
    \once \sd g4 r r2
    \clef treble r16 g''' d g bes, d g, bes d, g bes, d \clef bass g, bes d, g
    g,4 r r2
  }
  
  \repeat volta 2 {
    g'8 g, g g g'8.-\trill fis16 g a bes a
    g f ees d c ees d c bes8.-\trill a32 bes g4
    bes'8 bes, bes bes bes'8.-\trill a16 bes c d c
    bes a g f ees g f ees d8.-\trill c32 d bes4
    
    \repeat unfold 3 { \cstl r16 bes d f bes \cstr d f bes \cstl }
    \alternative { {f,,4 r} {f r} {g r} }
    \repeat unfold 2 { \cstl r16 c ees g \cstr \sd c ees g c \cstl \sn g,,4 r }
    
    \clef treble 
    <<{ s2 \repeat unfold 2 { b''8\rest f f f f e e e }
        b'8\rest f f ees
        ees d d d b'8\rest ees, ees ees 
        ees d d d d d c c 
      } \\
      { c8\rest \repeat unfold 23 { c }
        \repeat unfold 12 { bes } 
        aes aes aes aes
    }>>
    
    \clef bass g, g' r4 \clef treble r8 c' c c
    b bes bes bes a aes aes aes 
    g g ees ees f g aes g
    f ees d c \clef bass b[ c] g[ g,]
    
    \repeat unfold 3 { \cstl r16 c ees g c \cstr ees g c }
    \cstl c,,4 g'8 g,
    c16 ees g c g,8 g c16 ees g c g8 f
    
    ees[ aes] g[ g,] c4 r
    r2 \clef treble r16 c''' g c ees, g c, ees
    g, c ees, g \clef bass c, ees g, c c,,4 r
  }
}

\header {
  title = "K37"
  meter = "Allegro"
  tagline = ##f
}