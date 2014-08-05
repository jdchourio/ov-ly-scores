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
  title = "K61"
  tagline = ##f
}

global = {
  \key a \minor
  \time 2/4
  \override ParenthesesItem #'font-size = #+2
}

right = \relative c'' {
  \global
 
  \repeat unfold 2 {
    a4. a8 
    \once \su b e,4 b'8
    c a d b
    e4 d
  } \alternative {
    { d8-\trill b16 c d d b a
      gis8 b e,4 }
    { c'8-\trill b16 a b8 gis
      a[ e c a] }
  }
  
  \repeat unfold 2 {
    a'16 e c' e, a e c' e, 
    b' e, d' e, b' e, d' e, 
    c' e, a e d' e, b' e, 
    e' e, c' e, d' e, b' e,
  } \alternative {
    { c'8-\trill b16 c d c b a
      gis e gis b e8 gis, }
    { c16 b c a b a b gis
      a8[ e c a] }
  } \bar "||"
  
  \repeat unfold 2 {
    a'4. a8
    b4. b8
    c a d b
    c d e d
  } \alternative {
    { c8-\trill b16 c d c b a
      gis8 b e,4 }
    { c'16  b c a b a b gis 
      a4 r }
  } \bar "||"
  
  \repeat unfold 2 {
    e'8 a ~ a16 c, b a
    b gis' b8 ~ b16 d, c b
    c e a a, d gis b b,
    e a e c d b' d, b
  } \alternative {
    { c8-\trill b16 c d c b a
      gis a b gis e4 }
    { c'16 b c a b a b gis
      a8[ c e a] }
  } \bar "||"
  
  \repeat unfold 2 {
    a,16 e' d e c e d e
    b e d e b e d e
    c a' gis a d, a' gis a
    e a gis a d, a' gis a
  } \alternative {
    { c,8-\trill b16 c d c b a
      gis b a b e,4 }
    { c'16 b c a b a b gis
      a8[ c e a] }
  }

  \repeat unfold 2 {
    <a, c e>4 r8 q
    <gis b d>4 r8 q
    <a c e>4 <gis b d>
    c8-\trill b16 
  } \alternative {
    { c d e f a,
      gis e gis b e4 }
    { a,16 <<{ <a c>8 <gis b> <a c>4 } 
        \\ { e8 e e4 }>> r4 }
  }
  
  \repeat unfold 2 {
    a'16 g f e d c b a
    b' a gis fis e d c b
    c'b a c b a gis b
  } \alternative {
    { a g! f e d c b a
      gis a b gis e4 }
    { a'16 a, d b <<{ <a c>8 <gis b> } \\ { e8 e }>>
      a4 r }
  }
  
  \repeat unfold 2 {
    c16*2/3[ b a] e'[ d c] a'8 a,
    d16*2/3[ c b] d c b b'8 b,
    e16*2/3[ d c] e[ d c] d[ c b] d[ c b]
  } \alternative {
    { c8-\trill b16 c d c b a
      gis16*2/3[ fis e] a[ gis fis] b[ a gis] d'[ c b] }
    { c[ d e] f[ e d] <a c>8 <gis b>
      a4 r }
  } \bar "||"
  
  \repeat unfold 2 {
    <<{ c4. c8 d4. d8 } \\ { r8 e, a4 ~ a8 gis b4 }>>
    e16 a, gis a d b a b
  } \alternative {
    { c8-\trill b16 c d c b a
      gis16*2/3[ fis e] b'[ a gis] d'[ c d] b[ c d] }
    { c16 e a a, b8-\parenthesize-\trill a16 gis
      a8[ c e a] }
  }
  
  \repeat unfold 2 { \sd 
    \repeat unfold 2 { e16 c b a }
    \repeat unfold 2 { f' b, a gis }
    e' c b a d b a gis \sn
  } \alternative {
    { c e d c b a gis a
      gis8.-\parenthesize-\trill fis16 e4 }
    { c'16 d e a, b8-\trill a16 gis
      a4 r }
  } \bar "||"
  
  \repeat unfold 2 {
    a16 c c e e a a c,
    b d d gis gis b b d,
    e c' c e, d b' b d,
  } \alternative {
    { c a' a c, b f' f a,
      gis b e b e,4 }
    { c'16 e a c, b8-\trill a16 gis
      a4 r }
  }
  
  \repeat unfold 2 { 
    a32*4/3[ b c] c[ d e] e[ d c] c[ b a]
    gis[ a b] b[ c d] d[ c b] b[ a gis]
    a[ b c] c[ b a] b[ c d] d[ c b]
  } \alternative {
    { c[ d e] e[ d c] b[ c d] c[ b a]
      gis[ a b] b[ c d] e,4-\trill }
    { c'32*4/3[ e d] c[ b a] b[ d c] b[ a gis]
      a4 r }
  }
  
  \repeat unfold 2 {
    \sd <c e>8 <a c> <gis b> <a c>
    <b d> <gis b> q <b d>
    <a c> \sn
  } \alternative {
    { <a e'> <gis d'> <gis f'>
      <a e'> <c e> <b d> <a c>
      q <gis b>16 <fis a> <gis b>4 }
    { <c e>8 d32*4/3[ c b] b[ c d]
      e[ a g] f[ e d] <a c>8 <gis b>
      a4 r }
  }
  
  a16 e fis gis a b c d
  <c e>4 r
  d16 d, e fis gis a b c
  <b d>4 r
  <c e>4 a'4
  <b, d> q
  
  c8-\trill b16 c d c b a
  gis e fis gis a b c d
  e d c b a g f e
  d' c b a gis fis e d
  c' b a g! f! e d c
  
  b' e d e a, d c d
  gis,8 a b c
  d e f gis
  a16 a, d b <a c>8 <gis b>
  <c, e a>4 r \bar "|."
}
 
left = \relative c' {
  \global

  \repeat unfold 2 {
    \repeat unfold 2 {
      <a c>4 q
      <e gis b> q
      <a c> <b d>
      <<{ e4 d } \\ { c8 a b gis }>>
    } \alternative {
      { <a c>4 <d, d'>
        <e e'> <<{ r16 d' c b } \\ { e,4 }>> }
      { a8 a, e' e,
        a4 r }
    }
  }
  
  \repeat unfold 2 {
    a'16 e' c e a, e' c e
    gis, e' fis, e' gis, e' e, e'
    a, e' c e b e gis, e'
    a, e' fis, e' gis, e' e, e'
  } \alternative {
    { <a, c>4 <d, d'>
      <e e'> <<{ r16 d' c b } \\ { e,4 }>> }
    { a8 a, e' e,
      a[ c e a] }
  } \bar "||"
  
  \once \sd <a, e'>4 <a a'>
  <gis' b> <e gis b>
  <a, e' a> <b d gis>
  <<{ <e a>4 } \\ { c8 a }>> b gis
  <a e' a>4 <d a'>
  < e gis b e> ~ e'16 d c b
  
  <c e>4 <a c e>
  <a b d> <gis b d>
  <a c e> <b d>
  <<{ e4 } \\ { c8 a }>> b gis
  a a, e' e,
  a4 r \bar "||"
   
  \repeat unfold 2 {
    <a e' a>4 q
    <e' gis b> q
    <a, e' a> <b d gis>
    <c e a>
  } \alternative {
    { <b d gis b>
      <a e' a> <d f a>
      <e b'> e'16 d c b }
    { <b, d gis>4
      a'8 a, e' e,
      a4 r }
  }
  
  \repeat unfold 2 {
    \repeat unfold 2 { a16 a' gis a }
    \repeat unfold 2 { b, a' gis a }
    c, a' gis a b, a' gis a
  } \alternative {
    { a,4 <d a'>
      e e'16 d c b }
    { a,8 d e e,
      a8[ c e a] }
  }
  
  \repeat unfold 2 {
    a,4 a' ~
    a gis 
    <a, e' a> <b d gis>
  } \alternative {
    { <c e a> <d f a>
      \once \td <e b'> ~ \sd e16 d c b \sn }
    { <<{ a'4 } \\ { c,8 d }>> e e,
      a[ c e a] }
  }
  
  a,4 \repeat unfold 2 {
    r8 a'
    b gis <<{ s gis } \\ { e d }>> 
    c a' b, gis'
  } \alternative {
    { <a, e' a>4 <d a'>
      <e, e'> r <a e' a>4 }
    { a'8 d, e e,
      a[ c e a] }
  }
  
  \repeat unfold 2 {
    a,4 r8 a
    b4 r8 b'
    c a b gis
  } \alternative {
    { a4 d, e r }
    { a8[ c, d e] a,4 r }
  }
  
  <a a'>4 r8 q
  <d a'>4 r8 d 
  c a' b, e
  a,4 \once \su d
  e8 e, e'16 d c b
  
  a4 r8 a
  d4 r8 d
  c a' b, e
  a, c d e
  a,[ c e a] \bar "||"
  
  \repeat unfold 2 {
    a,4 r8 a
    <b d gis>4 r8 
    <<{ gis'8 a4 b8 gis } \\ { b, c a b4 }>>
  } \alternative {
    { <a a'>4 <d a'>
      e e16 d c b }
    { <<{ a'4 } \\ { a,8 c d e }>>
      a,8[ c e a] }
  }
  
  \repeat unfold 2 {
    a,4 r8 a
    b4 r8 b
    c a' gis e
  } \alternative {
    { a a, d a 
      e '4 e16 d c b }
    { a'8 c, d e
      a,[ c e a] }
  }
  
  \repeat unfold 2 {
    a32*4/3[ b c] c[ d e] e[ d c] c[ b a]
    gis[ a b] b[ c d] d[ c b] b[ a gis]
    a[ b c] c[ b a] b[ c d] d[ c b]
  } \alternative {
    { c[ b a] a[ b c] d[ c d] b[ c d]
      e8 e, e'16 d c b }
    { c8 d e e,
      a[ e c a] }
  }
  
  <a a'> 4 r
  a16 b c d e fis gis a
  b,4 r
  b16 c d e fis gis a b
  c, c' b c c, c' b a
  b, b' a b b, b' a gis
  
  a4 d, e4. d8
  c16 d e f g a b c
  b, c d e fis gis a b
  a, b c d e fis gis a
  
  \su g, g' f g f, f' e f
  e, e' fis, fis' gis, gis' a, a'
  \sd b, b' c, c' d, d' c b
  c8 d e e,
  <a, e' a>4 r \bar "|."
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