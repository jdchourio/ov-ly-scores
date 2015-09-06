\version "2.18.2"

\header {
  title = "K451"
  meter = "Allegro"
  tagline = ##f
}

global = {
  \key a \minor
  \time 3/4
}

right = \relative c'' {
  \global

  \repeat volta 2 {
    \repeat unfold 2 {
      r4 a e
      a4. c8 b e
      a,2 
      <<{ \once \stemDown e'4 ~ e d2 ~ d d4 } \\
        { s4 f,2. ~ f4 e }>>
      c'8 a' e c a e
      s2.
    }
    
    r4 \voiceOne c'4.-\prall c8
    \repeat unfold 2 { 
      b[ e a, f']
      \once \override Beam #'damping = #4
      b, b'
      c4 c,4. c8
    }
    b[ e a, fis'] 
    \once \override Beam #'damping = #4
    b, a' \oneVoice
    g[ b] \appoggiatura a16 g8 fis e d
    c[ c'] \appoggiatura b16 a8 g fis e
    
    \repeat unfold 2 {
      <<{ dis4 <b b'> q
          r < b b'> q } \\
        { \repeat unfold 2 { 
            a8 fis g e fis dis } 
      }>>
      r8 a'' b, fis' g e
      fis a g fis! e dis
    } \alternative {
      { e b' g fis e d
        c c' a g fis e }
      { e b' gis f! d b
        c e dis c! a fis }
    }
    
    \stemDown g b g e 
    \change Staff="left" \once \stemUp b 
    \change Staff="right" d
    \change Staff="left" \once \stemUp c
    \change Staff="right" a' g e fis dis
    e a gis c b e \stemNeutral
  }
  
  \repeat volta 2 {
    d4 d d
    g,!8 d' cis f e a
    g4 g g
    f8 d' a f d a
    
    <<{ b4 <g g'> q r q q } \\
      { \repeat unfold 2 { f8 d e c d 
          \change Staff="left" \once \stemUp
          b \change Staff="right" 
        } 
    }>>
    r8 g' g' f e d
    <<{ e[ f g a] bes a
        bes a g f e f
        <cis e>4 <a a'> q 
        r q q } \\
      { c8[ d e f] g f
        g f e d cis d
        \repeat unfold 2 {
          g, e f d e cis }
    }>>
    
    r8 a' a' g f e
    f d <<{ d'8 c b a } \\ { f e d c }>>
    <<{ gis' f e d c b
        a gis a b c d } \\ 
      { b a gis f! e d 
        c b c d e f }>>
    
    \repeat unfold 2 {
      <<{ r4 <e e'> q r q q } \\
        { \repeat unfold 2 { 
            d8 
            \change Staff="left" \voiceOne
            b 
            \change Staff="right" \voiceTwo 
            c 
            \change Staff="left" \voiceOne
            a b gis 
            \change Staff="right" \voiceTwo 
          }
      }>>
    } \alternative {
      { r8 e'' d b c a
        <<{ f'8 e d c b a } \\
          { a g f e d c }>> }
      { r8 e' d b }
    }
    
    <<{ a'8 g f d e c d b } \\
      { c4 ~ c8 b4 a gis8 }>>
    r8 c' f, e dis e
    <<{ d b' a gis a e
        f d e c d b } \\
      { d2 c4 ~ c8 b4 a gis8 }>>
    
    r8 c f, e dis e
    <<{ d![ d' b gis] a e
        f[ d e c] \once \stemDown d 
        \change Staff="left" b } \\ 
      { d2 c4 ~ c8 
        \change Staff="left" \voiceOne 
        b4 a \once \stemDown gis8 
        a2.
    }>>
  }
}
 
left = \relative c {
  \global

  \repeat volta 2 {
    a4 r r

    \repeat unfold 2 {
      r a' e
      c8 a c e a[ c]
      d a f d b gis
      e gis b e gis b
      a4 a,2
      \stemUp c'8 a e c a e \stemNeutral 
    } \alternative {
      { a,4 r r }
      { a2 }
    }
    
    \change Staff="right" \voiceTwo
    a'''4
    g8[ e f d] e gis
    a e c a a'4
    g8[ e f d] g \change Staff="left" \voiceOne g,

    c g e c \change Staff="right" \voiceTwo fis'4
    g8 e fis e dis \change Staff="left" \voiceOne b
    \oneVoice <e, e'>4 fis g
    a b c
    
    \repeat unfold 2 {
      b2. b 
      b,,2 e4
      a b b,
    } \alternative {
      { e' fis g a b c }
      { e,,2 e'4 }
    }
    
    a,2 b4
    e,2 g4
    a b b,
    e2.
  }

  \repeat volta 2 {
    e8 gis b e gis b
    a,4 a a
    a8 cis e a 
    \change Staff="right" cis e
    \change Staff="left" 
    d4 d,2
    
    g2. g
    g,, c g'
    a' a
    a,, d 
    e f
    
    \repeat unfold 2 {
      e' e e,2 a4 }
    \alternative {
      { d,2. }
      { d'4 e e, }
    }
    
    a2 a'4
    b2 c4
    d e e,
    a,2 b4
    gis e a
    d, e e
    a,2.
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
