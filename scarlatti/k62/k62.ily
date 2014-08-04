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
  \key a \major
  \time 3/8
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \override ParenthesesItem #'font-size = #+2
}

right = \relative c''' {
  \global
 
  \repeat volta 2 {
    \sd a16 gis a e cis a
    e' dis e b gis e
    cis'4.-\trill 
    b-\trill
    
    \repeat unfold 4 {
      cis16 e a, cis e, a }
    R4.
    <gis b d f>8 e' d
    c-\trill  b a
    
    <gis b d f>8 e' d
    c-\trill  b c ~
    c a' c,
    c-\trill b gis' ~
    gis a c,
    c-\parenthesize-\trill b fis' ~
    
    fis g bes,
    bes-\trill a fis' ~ 
    fis g bes,
    bes-\parenthesize-\trill a e' ~
    e f a,
    \su a-\trill gis a
    
    a-\parenthesize-\trill gis a
    \appoggiatura a16 b4
    e8
    f,-\trill e d'
    f,-\trill e c'
    f,-\trill e b'
    f-\parenthesize-\trill e e'
    
    a, gis a
    \appoggiatura a16 b4.
    \repeat unfold 3 {
      <a c>8 <g b> <a c> 
      b4. }
    b a-\trill g-\trill fis-\trill
    e-\trill dis-\parenthesize-\trill 
    e-\parenthesize-\trill
    
    R4. r4 <dis fis a>8
    <<{ gis!8 e a } \\ { <b, e>4 <cis e>8 }>>
    <<{ gis' a fis } \\ { e4 dis8 }>>
    \su e64*24/16[ e' dis cis b a gis fis] e[ b' a gis fis e dis cis]
    b64*24/17[ e dis cis \cstl b a gis fis] e[ b' a gis fis e dis cis b]
    e4.
    
    s4.*6 \cstr \sn
    <gis' b d f>8 e' d
    c-\trill b a
    <gis b d f>8 e' d
    c-\parenthesize-\trill b a
    g e' g,
    g-\parenthesize-\trill f d' ~
    
    d e g,
    g-\trill fis! d' ~
    d ees c
    c-\trill b d ~
    d ees c
    c-\trill b g' ~
    
    g aes f
    f-\trill e g ~
    g aes f 
    f-\trill e c' ~
    c b d, ~
    d c f ~
    
    f e a,
    a-\trill gis4
    \repeat unfold 3 { 
      <d' f>8 <c e> <d fis> e4. }
    e d-\trill c-\trill b-\trill a-\trill
    gis-\trill a-\trill R
    
    r4 <e gis b d>8
    <<{ <a cis!> a <a d> } \\ { e4 <d fis>8 }>>
    <<{ <a' cis> d <gis, b> } \\ { e4 e8 }>>
    
    \repeat unfold 3 {
      \sd cis'16 e a, cis e, a }
    <<{ cis4.-\trill } \\ { cis16 b a g fis e }>>
    \repeat unfold 4 {
      fis'16 a d, fis a, d }
    
    fis a d, fis a, fis'
    e a cis, e a, e'
    d a' gis fis e d
    cis fis e d cis b
    cis e a cis, b gis'
    
    \sd a,64*24/9[( a' gis fis e d cis b a] \bar ""
    \su e'64*24/8[ d cis b a gis fis e] \bar ""
    a64*24/8[ gis fis e d cis b a] \bar ""
    e'64*24/8[ d \cstl cis b a gis fis e])
    a4.-\fermata
  }
  
  \repeat volta 2 {
  }
}
 
left = \relative c'' {
  \global
  
  \repeat volta 2 {
    R4.*2
    a16 gis a e cis a
    e' dis e b gis e
    a,4.
    
    a' a-\trill a-\trill 
    a4 r8
    \repeat unfold 2 {
      <gis d' f>4.
      <a c e> }
    
    \clef treble <dis fis a>
    <e gis>
    <dis fis a>
    <e gis>4 d!8
    
    \repeat unfold 2 {
      <cis g'>4. <d g> }
    <c e a>
    \clef bass \repeat unfold 2 {
      <b d>4 <c e>8 }
    
    e,,4.
    \repeat unfold 4 {
      \grace dis'16 <e, e'>4. }
    <e f'>
    \grace dis'16 <e, e'>4.
    
    \clef treble \repeat unfold 3 {
      <dis'' fis>
      <e g>8 <dis fis> <e g> }
    <d! fis> <cis e> <d fis>
    <c e> <b d> <c e>
    
    \clef bass <b d> <a cis> <b d>
    <a c> <g b> <a c>
    <g b> <fis a> <g b>
    <fis a> <e g> <fis a>
    <e g> <dis fis> <e g>
    
    <<{ r8 dis e fis a b } \\ { d,4. ~ d }>>
    <e, e'>4 <a e' a>8
    <b e b'>4 <b fis' a>8
    e,4 e8
    r \sd e ~ \noBeam e 
    e4.
  }
  
  \repeat volta 2 {
    << { e'16 s gis s b } \\ { s e, s gis s b }>>
    \cstr << { e16 s gis s b } \\ { s e, s gis s b }>>
    \sd e[ gis] b,[ e] \su gis,[ b]
    e,[ gis] \cstl b,[ \cstr \sd e] \cstl gis,[ b]
    e,[ gis] \su b,[ e] gis,[ b]
    
    e,4. \sn
    \repeat unfold 2 {
      <gis' d' f>4.
      <a c e> }
    
    \repeat unfold 2 {
      <cis, g' a d e>
      <d g a d> }
    
    \repeat unfold 2 {
      <<{ d'4 ees8 ~ ees d4 } \\ 
        { <fis, c'>4. ~ <g c> }>> }
    
    \clef treble \repeat unfold 2 {
      <<{ g'4 aes8 ~ aes g4 } \\ { <b, f'>4. ~ <c f> }>> }
    <gis'! b>4. a
    
    \clef bass <d,, a' d>
    <e b' e> \clef treble 
    \repeat unfold 3 {
      <gis' b> 4. <a c>8 <gis b> <a c> }
    
    <g b> <fis a> <g b>
    <f a> <e g> <f a>
    <e g> <f a> <e g>
    <d f> <c e> <d f>
    <c e> <b d> <c e>
    \clef bass
    
    <b d> <a c> <b d>
    <a c> <gis b> <a c>
    <<{ r8 gis a b } \\ { e,4. ~ e8 }>> d' b
    <a, a'>4 <d a'>8
    <e a cis>4 <e b' d>8
    
    a,4. a' a a d d
    d d d cis b4 e8
    <a,, a'>4 <d a'>8
    <e a cis>4 <e b'>8
    \sd \td a,1. ~ a4.
  }
}

breaks = {
  \repeat volta 2 {
    s4.*5 \break s4.*6 \break s4.*6 \break s4.*6 \pageBreak
    s4.*6 \break s4.*6 \break s4.*6 \break s4.*6 \break s4.*4 \pageBreak
  }
  \repeat volta 2 {
    s4.*5 \break s4.*7 \break s4.*6 \break s4.*6 \break s4.*7 \pageBreak
    s4.*6 \break s4.*6 \break s4.*6 \break s4.*6 \break s4.*6 \pageBreak
  }
}

\header {
  title = "K62"
  meter = "Allegro"
  tagline = ##f
}