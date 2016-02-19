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
  title = "K56"
  meter = "Con spirito"
  tagline = ##f
}

global = {
  \key c \minor
  \time 12/8
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \override ParenthesesItem #'font-size = #+2
}

right = \relative c {
  \global
 
  \repeat volta 2 {
    \cstl c8 \cstr c''16 d ees f32 g aes8 g d ees d g, aes g d
    ees d \cstl g,_"G" aes g g, c, \cstr c'''16 d ees f d8 c b
    
    g' c,16 d ees f d8 c b g' c,16 d ees f d8 c b
    c4. ~ c4 <g b d f>8 ~ <g c ees> <b d> c ~ c4 <g b d f>8 ~ 
    
    <g c ees> <b d> c ~ c4 <g b d f>8 <<{ ees' f g ~ g f16 ees d c } \\ { <g c>4. aes }>>
    <<{ b8 g d' f ees d <c ees>4. ~ ees8 d c } \\ { s4. g ~ g2. }>>
    <<{ d'8 g, d' <d f> <c ees> <b d> <c ees>4. ~ ees8 d c } \\ { s4. g ~ g2. } >>
    
    <<{ d'8 g, d' <d f> <c ees> <b d> <c ees>4. ~ ees8 d c } \\ { s4. g ~ g2. } >>
    <<{ d'8 bes! d, <bes' d> <a c> <g bes> <a c>4. ~ c8 bes a } \\ { s4. d, ~ d2. }>>
    <<{ bes'8 g d <bes' d> <a c> <g bes> <a c>4. ~ c8 bes a } \\ { s4. d, ~ d2. }>>
    
    ees8 g bes c, fis a bes, d g a, f' a
    g, bes d s2. s4.
    \cstl g,,8 \cstr bes'''^"D" fis g f d <<{ s4. cis } \\ { ees8 d bes ~ bes a g }>>
    
    \repeat unfold 2 {
      <<{ s2. s4. cis } \\ { fis,8 bes' fis g f d ees d bes ~ bes a g } >> }
    \su d fis a c bes a
    
    \repeat unfold 2 {
      <<{ d, g bes d c bes
          d, fis a c bes a d, g bes d c bes
          d, fis a c bes a } \\ { d,2. ~ d ~ d ~ d }>>
      \sn bes'8 g' d ees g a, bes d g, a c fis, }
    
    \repeat unfold 2 {
      g8 <bes bes'>4. <c c'>4 ~
      <c c'>8 <a a'>4. <fis fis'> \once \sd <ees! ees'!>4 ~ ees'8 d c
      bes a <g bes> <a c> <g bes> <fis a> }
    
    <<{ g4. ~ g8 a c } \\ { g4 d8 ~ d4. }>>
    \repeat unfold 2 { <<{ bes'8-\trill a g~ g a c } \\ { s4. d, }>> }
    << { g8 fis g a g fis } { bes a bes c bes a }>> g4 g'8 ~ g a c,
    
    \repeat unfold 2 { << { bes4 g'8 ~ g a c, } \\ { bes8_\trill a bes } >> } 
    bes-\trill a <g bes> <a c> <g bes> <fis a>
  }
  \alternative {
    { g4. r4 r8 }
    { s2. g8 g' ees d g c, }
  }
  
  \repeat volta 2 {
    b8 g' aes,! g <d' f> <c ees> <b d>4. ~ q8 q4 ~ 
    q8 <c ees>4. <d f> q <ees g>4 ~
    q8 q4. <c ees c'> <c aes' c> q4 ~
    
    q8 <aes' c> <g bes> <<{ f ees d ees g f ees d c } { aes' g f g bes aes g f ees }>>
    \repeat unfold 2 { \sd f,8 bes d f ees d g, bes ees g f ees }
    
    \sn \repeat unfold 2 { g, e' g bes, aes g aes c f aes, g f }
    \repeat unfold 2 { a fis' a c, bes a } 
    \alternative { { bes d g bes, a g } {} }
    
    \repeat unfold 2 {
      g <<{ b c d c b } { d ees f ees d }>>
      g, <<{ ees' d c b c } { g' f ees d ees }>> 
    } g, <<{ b c d c b } { d ees f ees d }>>
    
    g,8 \repeat unfold 2 {
      g' f ees d ees c-\trill b c <<{ aes'4. } \\ { c,8 b c }>> b }
    \repeat unfold 2 {
      aes' g f d ees d b c b c8.-\trill b32 c ~ }
    \alternative { {d8} {c4.} }
    
    \repeat unfold 2 {
      d16[( c32*10/9 b a g f ees d c b]) 
      \once \override Stem.details.beamed-lengths = #'(11) \cstl \su c8 \cstr 
      <<{ g' f ees d ees } { ees' d c b c ~ }>> c4. 
    } d16[( c32*10/9 b a g f ees d c b])
    
    r8 \sn \repeat unfold 2 {
      <<{ ees4. e4 ~ e8 \once \su f4. aes b4 ~ b8 c b } 
        { ees4. e4 ~ e8 \once \su f4. aes b4 ~ b8 c b }>>
      <<{ c8 g f ~ \tweak Stem.transparent ##t f } \\ 
        { c4. ~ <c f>8 <c ees> <b d> }>> }
    \alternative { {c8} {} }
    
    <<{ \sd c4. ~ \su c8 d f } \\ { s4. g, }>>
    \repeat unfold 2 { <<{ ees'8-\trill d c~ c d f } \\ { s4. g, }>> }
    <<{ c8 b c d c b} { ees d ees f ees d }>> c4. ~ c8 \sd d f, \sn
    
    \repeat unfold 2 { <<{ s4 c'8 ~ c d f, } \\ { ees_\trill d ees }>> }
    ees-\parenthesize-\trill d <c ees> <d f> <c ees> <b d> c ees g c ees c'
    \clef bass c,,,,4._"D" r4 r8 
  }
  \alternative { { \clef treble r g'''' ees d g c, } {} }
}
 
left = \relative c' {
  \global
  
  \repeat volta 2 {
    s1. s2. s4. f8 ees d
    ees d c f ees d ees d c f ees d
    ees c aes f d g, r c' aes f d g,
    
    r c' aes f d g, c'4. f,
    <g, g'>4. \clef treble b'''4.^"G" c8 a fis c' b a
    b2. c8 a fis c' b a
    
    b2. c8 a fis c' bes a
    bes4. ~ bes8 a g a fis d a' g fis
    g2. a8 fis d a' g fis
    
    g4. <c, fis> <d g> <c a'>
    <d bes'> g8^"G" d bes g d bes \clef bass g d bes
    <<{ s4. g'2. } \\ { g,4. bes4. c ees }>>
    
    \repeat unfold 2 {
      d4. <<{ g2. } \\ { bes,4. c ees }>> }
    d4. \clef treble a'''^"G" \clef bass g,,, \clef treble bes'''
    
    \repeat unfold 2 {
      \clef bass d,,,,4. \clef treble a'''' \clef bass g,,, \clef treble bes'''
      \clef bass d,,,,4. \clef treble a'''' \clef bass g,,, c
      d d,
    } \alternative { 
      { g \clef treble bes''' }
      { g,,,4 }
    }
    
    \repeat unfold 2 {
      <f'! f'!>8 <ees ees'>4 <d d'>8 
      <c c'>4 <bes bes'>8 <a a'>4 <g g'>8 <fis fis'>4 <ees ees'>8 <d d'>4 fis'8
      g4 ees'8 c4 d8 } 
    \alternative { {g,4 } {} }
    
    \repeat unfold 2 {
      \repeat unfold 3 { g,8 g' bes d,, d' fis }
      g,4 ees'8 c4 d8 
    }
  }
  \alternative {
    { g,4. g'16 f! ees d c b }
    { s2. g4 r8 r4 r8}
  }
  
  \repeat volta 2 {
    r2. r8 aes''8 g f4 ees8
    d4 c8 b4 aes8 g4 f'8 ees4 d8
    c4 bes8 aes4 g8 f4 ees8 d4 c8
    
    bes4. bes bes bes
    
    <<{ \sn 
        s \clef treble bes'''^"G" s \clef treble bes s \clef treble bes s \clef treble bes
        s \clef treble bes        s \clef treble c   s \clef treble bes s \clef treble c
        s \clef treble c          s \clef treble d   s \clef treble c   s \clef treble b
        s \clef treble c          s \clef treble b   s \clef treble c   s \clef treble b } \\ 
      { \sn
        \clef bass bes,,, s \clef bass ees,_"G" s \clef bass bes' s \clef bass ees, s
        \clef bass c      s \clef bass f        s \clef bass c    s \clef bass f    s 
        \clef bass d      s \clef bass g        s \clef bass d    s \clef bass g    s
        \clef bass c,     s \clef bass g'       s \clef bass c,   s \clef bass g'   s 
    }>>
    
    \clef bass c, \clef treble c''' aes! f
    g c aes f
    \clef bass \repeat unfold 2 { 
      <<{ r4 r8 aes4 g8 f4 ees8 d4 c8 } \\ { g1. } >> }
    
    g2. c g c g \repeat unfold 2 {
      <<{ c,4 bes!8 aes4 g8 f4 ees'!8 d4 c8 b4 aes8 \once \sd g4 f8 ees4 f8 g4 g8 }
        { c'4 bes!8 aes4 g8 f4 ees'!8 d4 c8 b4 aes8 \once \sd g4 f8 ees4 f8 g4 g8 }>> }
    
    \repeat unfold 3 { c, c' ees g,, g' b }
    c,4 aes'8 f4 g8
    \repeat unfold 3 { c,, c' ees g, g' b }
    c4 aes8 f4 g8 c,,4. r4 r8
    R1.
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