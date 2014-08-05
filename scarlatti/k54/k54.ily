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
  title = "K54"
  meter = "Allegro"
  tagline = ##f
}

global = {
  \key a \minor
  \time 12/8
  \override ParenthesesItem #'font-size = #+2
}

right = \relative c''' {
  \global
 
  \repeat volta 2 {
    a8 e c a b gis' a e c a b gis'
    a e c a b d c4 \once \su b8 a4 <d f>8
    <c e>4. ~ <c e>4 <b d>8 <b d>4. <c e>4 <b d>8
    
    <b d>4. <c e>4 <b d>8 c4-\trill \once \su b8 a4.
    gis'8 a g f e dis fis g f e d cis
    e f e d c b dis e d c b a
     
    cis d c bes a gis b c b a gis a
    b c d c-\trill b c <a c>4. <gis b>-\trill
    \su e4._"D" ~ e8 fis gis a b c \appoggiatura b32 a8 g f
    
    e4. ~ e8 fis gis a b c \appoggiatura b32 a8 gis a
    b,4. ~ b8 cis dis e fis g \appoggiatura fis32 e8 d c
    b4. ~ b8 cis dis e fis g e8 d c
    
    
    b8 b' fis dis b dis e4 fis8 g4 a8
    b, b' fis dis b dis e4 fis8 g4 a8
    b, b' fis dis b dis e4 fis8 g4 a8
    
    << {b,8 b' a g fis g a g fis e fis dis} \\ {s4 dis8 e dis e c4. b4 a8} >>
    e'8 b' g e b dis e4 fis8 g4 a8
    b, b' fis dis b dis e4 fis8 g4 a8
    
    b, b' fis dis b dis e4 fis8 g4 a8
    << {b,8 b' a g fis g a g fis e fis dis} \\ {s4 dis8 e dis e c4. b4 a8} >>

    \sn
    r8 << {e'8 fis g4. ~ g8 fis gis a4. ~
           a8 g! a b a b c b a g fis e
           fis e fis g4. ~ g8 fis gis a4. ~
           a8 g! a b a b c b a g a fis}
          {e'8 fis g4. ~ g8 fis gis a4. ~
           a8 g! a b a b c b a g fis e
           fis e fis g4. ~ g8 fis gis a4. ~
           a8 g! a b a b c b a g a fis} >>
       
    <e e,>4. 
    << {g8 fis g a g fis e fis dis
        dis4 e8 g, fis g a gis fis e fis dis
        e gis b d b gis e f' e d c b} \\
       {e8 dis e c4. b4 a8 ~ 
        a4. e8 dis e c4. b4 a8
        s2. s8 d'8 c b a gis} >>        
  }
  
  \repeat volta 2 {
    << {e8 gis b d f e d c b c4 d8} \\ {s4. s8 d c b a gis a g f} >>
    << {e'4. r8 f e d c b c4 d8} \\ {e,8 gis b d d c b a gis a g f} >>
    
    << {e'4. ~ e8 e b \appoggiatura b32 c2. ~
        c4. ~ c8 d a \appoggiatura a32 b2. ~
        b4. ~ b8 c g a g f e d c} \\
       {e2. ~ e4. ~ e8 a e
        \appoggiatura  e32 f2. ~ f4. ~ f8 g d
        \appoggiatura d32 e4.} 
    >>
    g8 d b g g' b, c4 d8 e4 fis8
    
    g8 d b g g' b, c4 d8 e4 fis8
    g8 d b g g' cis, d4 e8 f4 g8
    a e cis a a' cis, d4 e8 f4 g8
    
    a e cis a cis e cis' d c bes-\trill a gis
    b! c b a-\trill gis a cis d c bes-\parenthesize-\trill a g
    b! c b a-\trill gis a e' f e d-\parenthesize-\trill c b
    
    dis e d c-\trill b a e' f e d-\parenthesize-\trill c b
    dis e d c-\parenthesize-\trill b a <a f'> <g e'> <f d'> 
    << {<e c'> <d b'> <c a'> ~ a' b gis} \\  {s4. b,} >>
    \su e8 e' gis, a b gis a b c
    
    
    \sd b e b \su gis e gis a b gis a b c
    \sd b e b \su gis e gis a b gis a b c \sn
    <<{ \sn b e d \once \su \once \td \appoggiatura d32 c8 b c ~ \su c d c b a b ~
        b c b a gis \once \td  a ~ a b a gis fis e} \\
      { s2. f e } >>
    
    a8 e' d c-\trill b a << { d c b a b gis } \\ { f4. e4 d8 } >>
    <<{ \sn a' e' d c8 b c ~ \su c d c b a b ~
        b c b a gis \once \td a ~ a b a gis fis e} \\
      { s2. f e } >>
    
    a8 e' d c-\parenthesize-\trill b a << { d c b a b gis } \\ { f4. e4 d8 } >>
    r8 << { a' b c4. ~ c8 b a g4. ~ g8 f e d4. ~ d8 c d e d e }
      { a' b c4. ~ c8 b a g4. ~ g8 f e d4. ~ d8 c d e d e } >>
    
    << { f e d c b a } { f e d c b a } >> r8 
    << { a' b c4. ~ c8 b a } { a' b c4. ~ c8 b a } >>
    << { g4. ~ g8 f e d4. ~ d8 c d e d e f e d c d b } 
       { g4. ~ g8 f e d4. ~ d8 c d e d e f e d c d b } >>
     
     <a a'>4. << { c'8 b c d c b a b gis } \\ { a gis a a4. } >>
     a4. << { c,8 b c d e f e d e } \\ { a, gis a a4. gis } >>
     a4. r4.-\fermata r2.
  }
}
 
left = \relative c'' {
  \global
  
  \repeat volta 2 {
    R1.
    R1.
    \su \clef treble a8 e c a b gis' a e c a b gis'
    
    a e c a b gis' a4. a,
    << {a'4. a g! g} {c c b b} >>
    << {f f e e} {a a g g} >>
    
    << {d d c c} {f f e e} >>
    <b d e gis> <a e' a> \clef bass e e,
    \clef treble \sn b''''8^"G" gis e b' c d c b a s4.
    
    b8 gis e b' c d c b a s4.
    a8 fis dis a' g fis g fis e s4.
    a8 fis dis a' g fis g fis e g4 a8
    
    
    b4. ~ b4 b8 c b a g-\trill fis e
    \clef bass b,,4._"G" ~ b4 \clef treble b'''8 c b a g-\trill fis e
    \clef bass b,,4. ~ b4 \clef treble b'''8 c b a g-\trill fis e
    
    \clef bass  b,,4. e a, b
    <e, e'>4. ~ <e e'>4 \clef treble b''''8 c b a g-\trill fis e
    \clef bass b,,,4. ~ b4 \clef treble b''''8 c b a g-\trill fis e
    
    \clef bass b,,,4. ~ b4 \clef treble b''''8 c b a g-\trill fis e
    \clef bass b,,,4. e <a, a'> b
    e r8 \sd << {b'8 cis d4. ~ d8 cis dis} {b'8 cis d4. ~ d8 cis dis} >>
    
    << {e,4. g, a c} {e' g, a c} >>
    << {b4. ~ b8 b cis d4. ~ d8 cis dis} {b,4. ~ b8 b cis d4. ~ d8 cis dis} >>
    << {e4. g, a b} {e'4. g, a b}  >>
    
    \sn <e,, e'> <c'' e> <a e'> b
    e, c a b
    e, s4. s2.
  }
  
  \repeat volta 2 {
    e4. s s2.
    s1.
    e8 e' gis b gis e a, a' c e c a
    
    d,, d' f a f d g, g' b d b g
    c,, c' e g e c f,4. f'
    g, ~ g4 \clef treble g'''8 a g f e-\trill d c
    
    \clef bass g,,4. ~ g4 \clef treble g'''8 a g f e-\trill d c
    \clef bass g,,4. ~ g4 \clef treble a'''8 bes a g f-\trill e d
    \clef bass a,,4. ~ a4 \clef treble a'''8 bes a g f-\trill e d
    
    \clef bass a,,4. ~ a4 r8 \clef treble <d' f>4. <d f>
    <c e> <c e> <d f> <d f> 
    <c e> <c e> <b d e gis> <b d e gis>
    
    <a e' a> <a e' a> <b d e gis> <b d e gis>
    <a e' a> <a e' a> \clef bass <d,, d'> <d d'>
    <e e'> s4 \clef treble e'''8 f e d c d e
    
    
    \clef bass e,,4. ~ e4 \clef treble e''8 f e d c d e
    \clef bass e,,4. ~ e4 \clef treble e''8 f e d c d e
    \clef bass e,,4. \clef treble a'' \clef bass <d,,,, d'> \clef treble g'''
    
    \clef bass <c,,,, c'> \clef treble f''' \clef bass <b,,,, b'> \clef treble e'''
    \clef bass <a,,,, a'> <c c'> <d d'> <e e'>
    <a, a'> \clef treble a'''' \clef bass <d,,,, d'> \clef treble g'''
    
    \clef bass <c,,,, c'> \clef treble f''' \clef bass <b,,,, b'> \clef treble e'''
    \clef bass <a,,,, a'> <c c'> <d d'> <e e'>
    a r8 << {e' fis g4. ~ g8 b, cis} {e' fis g4. ~ g8 b, cis} >>
    
    << {d4. ~ d8 fis, gis a4. c, d f e} 
       {d4. ~ d8 fis, gis a4. c, d f e} >>
    r8 << {e'8 fis g4. ~ g8 b, cis d4. ~ d8 fis, gis} 
          {e''8 fis g4. ~ g8 b, cis d4. ~ d8 fis, gis} >>
        
    << {a4. c, d e} {a, c, d e} >>
    <a a,> f'' <d f> e
    a, f d e
    a,4. r4.-\fermata r2.
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