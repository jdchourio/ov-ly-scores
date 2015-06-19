\version "2.18.2"

\header {
  title = "K343"
  meter = "Allegro"
  tagline = ##f
}

global = {
  \key a \major
  \time 2/2
}

right = \relative c'' {
  \global
 
  \repeat volta 2 {
    cis8-\prall b cis d e cis a e
    fis d' gis, e' a, b'4 d,8
    cis-\parenthesize-\prall b cis d e cis a e
    
    fis d' gis, e' a, b'4 d,8
    \repeat unfold 2 { cis4 b8 a b b'4 d,8 }
    <<{ a'4. gis8 fis4. e8 } \\ { cis d e4 fis,8 gis a4 }>>
    
    <<{ d4. cis8 b4. a8 } \\ { d, e fis4 b,8 cis dis4 }>>
    gis8 a b4 e,8 e' d b
    cis4 b a8 a' gis e 
    
    <<{ s fis4. ~ fis8 e dis cis
        dis fis4. ~ fis8 e dis cis 
        dis b' a fis gis4 ais
        b8 b a fis gis4 ais
        b2 ~ b8 b a fis
        gis4 fis8 dis } \\
      { fis8 b, a fis gis4 ais
        dis8 b a fis gis4 ais
        b2 ~ b8 e dis cis
        dis4 b ~ b8 e dis cis
        dis e fis4 b,2 b }>>
    e4 dis8 cis
    cis dis e a, gis fis e dis
    
    <<{ \repeat unfold 2 { r4 b''4. a8 g fis }
        e d c b a g fis e } \\
      { e e' d b c2
        <b e>8 e d b c2
        b4 }>>
    b2 ~ b8 e dis e
    \repeat unfold 2 { <b b'>2 ~ b'8 e, dis e }
    <<{ b'2 ~ b8 b a fis } \\ { b,8 s4. b2 }>>

    \repeat unfold 2 {
      <<{ gis'4 fis8 b } \\ { b,2 }>> e4 dis8 gis
      cis,4 b8 e a,4 gis
      fis8 fis gis a
      <<{ b2 ~ b8 cis b a gis fis e dis } \\
        { b'8 b, cis dis e2 }>> }
    
    e8 b''4 <dis, fis>8 <e gis> b4 <dis, fis>8
    <e gis>8 b''4 <dis, fis>8 <e gis> b4 dis,8
    
    \set Score.repeatCommands = #'((volta ""))
    e1
    \set Score.repeatCommands = #'((volta #f))
  }

  \repeat volta 2 {
    \set Score.repeatCommands = #'((volta ""))
    e4 r 
    \set Score.repeatCommands = #'((volta #f))
    r8 
    <<{ e' d b cis4 } \\ { e,8 fis gis a }>>
    b4 r8 
    <<{ a' g e
        fis4 e d cis
        b a g8 d' cis e } \\
      { a,8 b cis
        d fis, gis ais b d, e fis
        g b, cis dis e4 }>>
    
    ais2 b8 e fis g
    <ais, cis>2 ~ cis8 e fis g
    ais, g' fis e
    <<{ dis fis4. ~ fis8 g fis e fis fis4. ~
        fis8 e dis e fis fis4. ~
        fis8 g e d cis e4. ~
        e8 d cis d e e4. ~
        e8 d cis d } \\
      { dis8 b a fis
        g4 a fis'8 b, a fis
        g4 a fis'8 b, a fis
        g4 s cis8 a g e
        fis4 g e'8 a, g e
        fis4 g }>>
    e' r
    
    r8 <<{ a g e fis4 } \\ { a,8 b cis d }>> 
    e4 d cis
    <<{ fis4 e ~ 
        e8 d4 cis8 b b'4. ~
        b8 c b a b4 b ~
        b8 a gis a b } \\
      { r8 b,4 a8
        gis4 a gis8 e' d b
        \repeat unfold 2 { 
          c4 d4. e8 d b } 
    }>>
    
    c4.-\prall b16 a
    <<{ b8 b4. ~
        b8 a gis a b b4. ~
        b8 a gis a } \\ 
      { b8 e, d b
        c4 d b'8 e, d b
        c4 d }>> b'4 r
    
    r8 <<{ e d b cis4 } \\ { e,8 fis gis a }>> b e
    a,4-\prall gis8 cis fis, fis' e d
    cis b a gis a cis' b b, 
    a a' gis gis, fis fis' e e,
    d d' cis a b4 r
    
    r8 <<{ e d b cis4 } \\ { e,8 fis gis a }>> b e
    a,4-\parenthesize-\prall gis8 cis fis, fis' e d
    cis b a gis a <e' a cis>4 <e gis b>8
    <e a cis> <cis e a>4 <b d gis>8 <cis e a> <a cis e>4 <gis b>8
    <a cis> <cis, e a>4 <b d e gis>8 <cis e a>2
  }
}
 
left = \relative c' {
  \global
  
  \repeat volta 2 {
    \clef treble
    a2. cis4
    d e fis gis
    a2. cis,4
    
    d e fis gis
    a,8 a' gis fis gis4 e
    a,8 a' gis fis gis4 e
    \clef bass a, cis d cis
    
    b a gis fis
    e8 e' d b cis4 b
    a8 a' gis e fis4 e
    d dis e cis
    
    \repeat unfold 3 { b dis e cis }
    \clef treble b8 b' a fis gis, gis' fis dis
    
    \clef bass e, e' dis b e, cis' b gis
    a,4 a' b b,
    e e'2 fis4
    g e2 fis4
    g e c2
    
    \clef treble
    <<{ b8 g' fis g a2 ~
        a8 g fis g a2 ~
        a8 g fis g a2 } \\
      { \repeat unfold 3 {  
          b,2 ~ b8 c b a } }>>

    b8 b' a fis gis4 fis \clef bass
    \repeat unfold 2 { 
      e,8 e' dis b e, cis' b gis
      a, a' gis e fis, fis' e, e'
      b4 b'2 a4
      gis a b b, }
    \repeat unfold 4 { e4 b  }
    e,1
  }
  
  \repeat volta 2 {
    e'8 e' d b cis4 b
    a8 a' g e fis4 e
    d cis b a
    g fis e e'
    
    \repeat unfold 2 { fis,8 fis' g fis e g, fis e }
    fis4 ais b dis
    e c b dis
    e c b dis
    e g, a cis
    d b a cis
    d b a8 \clef treble a' g e
    
    fis4 e d8 d' cis a
    b gis a a, d4 cis
    b a e' gis
    
    a f e gis
    a f e \clef bass gis,
    a f e gis
    a f e gis
    a f e8 e' d b
    cis4 b a,8 a' gis e
    fis, fis' e cis d,4 d'
    
    e e, a gis''
    fis e d cis
    b a e8 e' d b
    cis4 b a,8 a' gis e
    
    fis,8 fis' e cis d,4 d'
    e e, a e'
    a e a, e'
    a, e a2
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
