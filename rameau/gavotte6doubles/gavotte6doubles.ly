\version "2.18.2"

\include "../../tagline.ily"

breaks = {}

#(set-global-staff-size 15)

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  oddFooterMarkup = \gitTagline
  evenFooterMarkup = \gitTagline
 
  %print-all-headers = ##t
}


\include "../side-ornementations.ily"

cstr = \change Staff = "right"
cstl = \change Staff = "left"


global = {
  \key a \minor
  \time 2/4
}

gavotteRight = \relative c'' {
  \global
  \slurDown
  
  \repeat volta 2 {
    \para a4 a32( b c4*3/4)
    << { \voiceOne b4\prall a
        a gis\prall }
      \new Voice { \voiceTwo f2 e4 r}
    >> \oneVoice \stemUp
    \para \parb a e8 r
    a4 b\prall
    \para \parb c4. c8
    b4\prall a
    << { e'2:8 } \\ { <e, gis b> } >>
   }

  \repeat volta 2 {
    \oneVoice e'4 \parb c
    a\prall a
    \para f' \parb d
    b2\prall 
    g'4 \voiceOne \parb e
    \parb c \parb a8. c16
    \parb \para d4 b\prallup
    c2
    
    << { c'4. } \new Voice { \voiceThree g4 g8\rest }>> c8
    c4 b
    \appoggiatura {b16} \once \override Staff.NoteCollision.prefer-dotted-right = ##f e,4. a8
    gis4\prall gis8 r
    \para a4. c8
    fis,4 gis8 a
    a4 gis\prall
    \parb a2:8
  }
}

gavotteMiddle = \relative c' {
  \global
  %\voiceOne 
  \stemUp
  \slurDown
  
  \repeat volta 2 {
    \para c4 c32( d e4*3/4)
    d4 c
    c b8\prall d
    \once \slurUp d( c4.\prall) a8 \cstr \stemDown e' \cstl \stemUp gis, \cstr \stemDown \once \tieDown e' ~
    e4 e
    \cstl \stemUp g,8 \cstr \stemDown e' \cstl \stemUp f, \cstr \stemDown f'
    \cstl \stemUp b,4 \stemDown e,,
   }

  \repeat volta 2 {
    \voiceOne 
    s4. \once \hideNotes c''4*1/2 ~
    c2
    s4. \once \hideNotes d4*1/2 ~ d2
    s2 s2 \voiceTwo g,2
    \cstr r8 \once \tieUp g'8 ~ <e g>4
    
    e'4. e8
    \parb d4 d
    d c
    b2
    e4. e8
    e4 d8 c
    \parb b4 d
    <a c e>2
  }
}

gavotteLeft = \relative c' {
  \global
  \voiceTwo
  
  \repeat volta 2 {
    a2
    d,
    e
    a
    a4 gis
    a4. a8
    g4 f
    e ~ \once\stemUp e
  }

  \repeat volta 2 {
    \oneVoice c8[( e g c])
    f,[ g e f]
    d[ f a d]
    g,[ a f g]
    e[ g \cstr c e]
    \cstl f,[ a \cstr c \voiceTwo f] ~ 
    f8[ e d f]
    \cstl << {c2} \\ {r4 r8 c, }>>
      
    \clef treble \oneVoice c'8.[ d16 \para \parb e8. c16]
    \para g'4 gis\prallup
    a a,
    e' d
    << { a'2 a4 r } \\ { c, a d e8 f }>>
    d4\prallup e
    \clef bass <<{ a,2 } \\ { r4 a, }>>
  }
}

doubleOneRight = \relative c''' {
  \global
  \voiceOne
  
  \repeat volta 2 {
    r16 a g f e f d e
    f g e f d e c d
    b d c d e f b, d
    c d b c a b a b
    c d b c d e c d
    
    e d \para e f e f d e
    f g e f d e c d
  } \alternative {
    { b e d c b c d b }
    { b2\prall \oneVoice
      e16 d c b a g f e }
  }

  \repeat volta 2 {
    a g f e \once \override Beam #'positions = #'(1.5 . 0.5) d c \cstl b a
    \cstr f'' e d c b a g f
    b a g f e d c b
    g'' f e d c b a g
    a g f e \once \override Beam #'positions = #'(1.5 . 0.5) d c \cstl b a
    
    \voiceOne g f e d c b a g
    \para c4 r \cstr \oneVoice
    c'''16 b a g f e d c
    b' a g f e d c b
    a' g f e d c b a
    b a gis fis \voiceOne \once \override Beam #'positions = #'(1.5 . 1) e d \cstl c b
    
    \once \override Beam #'damping = #5 a b \oneVoice \cstr c d e fis g a
    fis a gis a a8 \para f'! ~
    f e16 d c b a gis
  } \alternative {
    { \para \parb a2 
      e'16 d c b a g f e }
    { \para \parb a2 }
  } \bar "|."
}

doubleOneLeft = \relative c'' {
  \global
  \voiceTwo \cstr
  
  \repeat volta 2 {
    <a c>4 q
    <d, b'> <d a'>
    <e a> <e gis>\prall
    a8[ e \cstl \once \stemUp a, \cstr e']
    a4 <g b>
    
    <c, c'> q
    <d b'> <d a'>
  } \alternative {
    { <e gis>2 }
    { <e gis>16 a gis fis \oneVoice e d \cstl c b 
      c8[ c, e c] }
  }

  \repeat volta 2 {
    \voiceTwo 
    f,[ f' a f]
    d,[ d' f d]
    g,[ g' b g]
    e,[ e' g e]
    f,[ f' a f]
    
    g,4 g,
    c8 d16 e f g a b
    c8[ d e c]
    g' g, <<{ gis8 e' r c[ e a] } \\ { gis,4 a2 }>>
    \oneVoice e4 \voiceTwo e'8 d\prall
    
    <<{ r8 e a4 } \\ { c,4. a8 }>>
    d[ e f d]^\prallup
    <<{ e2 } \\ { r4 e, }>>
  } \alternative {
    { a16 c' b a g f e d
      c8[ c e c] }
    { <<{ \para a2 } \\ { r4 a, }>> }
  } \bar "|."
}

doubleTwoRight = \relative c'' {
  \global
  \voiceOne
  
  \repeat volta 2 {
    <a c>4 q
    b a
    a gis\prall
    <e a>2
    a4 b\prall
    
    \parb c c
    b\prall a 
    e'2
  }

  \repeat volta 2 {
    \oneVoice e4 c
    a\prall a
    \voiceOne f' d
    b2\prall
    \oneVoice g'4 \parb e
    c\prall \parb a8. c16
    \para \parb d4 b\prallup
    
    \voiceOne c2 
    c'4 c
    c b
    e, a
    gis2\prall
    
    a4 c
    fis,8 gis a4
    a gis\prallup
  } \alternative {
    { c2:8 }
    { c2:8 }
  } \bar "|."
}

doubleTwoMiddle = \relative c' {
  \global
  \voiceTwo
  
  \repeat volta 2 {
    e4 e
    f f
    e d8 r
    c2
    e4 r
    
    e e
    f r
    <e gis b>2
  }

  \repeat volta 2 {
    s2 s2
    a4 f
    d8 r r4
    s2 s2 s2
    
    <e g>
    e'4 e
    d d
    d c
    b2
    
    e4 e
    e8 d c4
    b d
  } \alternative {
    { <c e g>2 }
    { q }
  } \bar "|."
}

doubleTwoLeft = \relative c {
  \global
  
  \repeat volta 2 {
    a16 b c d e fis gis a
    d, e f g a b c d
    e, fis gis a b c d e
    a,8( g16\prall) f e d c b
    a e' a, e' gis, e' gis, e'
    
    a, b c d e fis gis a
    d,, e f g a b c d
    e, fis gis a b c d e
  }

  \repeat volta 2 {
    c d e f g a b c
    f, g a b c d e f
    
    d, e f g a b c d
    g, a b c d e f g
    e, f g a b c d e
    f, g a b c d e f
    g, a b c d e f g
    
    c,8( b16\prall) a g f e d
    c d e f g a b c
    g f e d c b a gis
    a b c d e f g a
    e fis gis a b c d e
    
    c, d e f g a b c
    d, e d e f e f c
    d c d b e d e e,
  } \alternative {
    { a c' b a g f e d }
    { <<{ \para a2 } \\ { r4 a, }>> }
  } \bar "|."
}

doubleThreeRightUp = \relative c'' {
  \global
  \voiceOne
  
  \repeat volta 2 {
    c4 c b a
    a gis
    a2
    a4 b
    
    c c 
    b a 
    gis2
  }

  \repeat volta 2 {
    e'4 c
    a2
    
    f'4. e8
    d4 r
    g e
    c a16 b c8
    c4 b
    
    c2
    c'4 ~ c16 c8[ c16] ~ 
    c c b a b4 ~
    b16 e, fis gis a4 ~
    a16 a gis fis gis4
    
    r16 a b c a b g a
    fis a gis b a4
    a gis
   } \alternative {
    { a2 }
    { a2 }
  } \bar "|."
}

doubleThreeRightDown = \relative c'' {
  \global
  \voiceTwo
  
  \repeat volta 2 {
    r16 a g f e f d e
    f g e f d e c d
    b d c d e f d e
    c d b c a e' d e
    f e d e f g d f
    
    e a gis a e g f e
    f g e f d e c d
    b2
  }

  \repeat volta 2 {
    r16 c' b a g f e d 
    c e d e f g f g
    
    a c b c d g, e' a,
    b g a b c d e f
    g f e d c b a g
    a g f e f8. e16
    d f e f g a f g
    
    e f d e c4
    r16 e' f g e8 c
    d4 ~ d16 f e d
    c4 ~ c16 e d c
    b4 ~ b16 b c d
    
    e4. e8
    e d c16 f e f
    b, d c d e f d e
   } \alternative {
    { c d b c a4 }
    { c16 d b c a4}
  } \bar "|."
}

doubleThreeLeftUp = \relative c' {
  \global
  \voiceOne
  
  \repeat volta 2 {
    r4 a
    d,2
    r4 e
    a,2
    r4 d
    
    r a'
    d,2
    s2
  }

  \repeat volta 2 {
    s2*4
    e2
    r4 f
    g2
    
    s
    c
    s
    a
    s
    
    s
    s
    e
  } \alternative {
    { s }
    { s }
  } \bar "|."
}

doubleThreeLeftDown = \relative c {
  \global
  \voiceTwo
  
  \repeat volta 2 {
    a2
    r4 d,
    e2
    r4 a,
    d2
    
    a'
    r4 d,
    e16 a' gis fis e d c b
  }

  \repeat volta 2 {
    \oneVoice
    c4 e
    f4. e8
    
    d4 b8 c
    g4 g'8 f
    \voiceTwo r4 e,
    f2
    r4 g
    
    \oneVoice c r16 g' a b
    \voiceTwo r4 c,
    \oneVoice g' gis \prallup
    \voiceTwo r4 a,
    \oneVoice e' e'8 d
    
    c4. c,8
    d8[ e f d]
    \voiceTwo r4 e,
   } \alternative {
    { \oneVoice a r16 gis' a b}
    { a,2 }
  } \bar "|."
}

doubleFourRight= \relative c'' {
  \global
  \stemUp
  \override Beam #'damping = #4
  
  \repeat volta 2 {
    \para a8 s16 e s a s c ~
    c8 s16 f, s a s b ~
    b8 s16 \cstl b, \cstr s e s gis ~
    gis8.\noBeam a8\noBeam e\noBeam c16 ~
    c a' s e s b' s e, ~
    
    e c' s e, s c' s e, ~
    e b' s e, s a s d,
    <gis b e>2
  }

  \repeat volta 2 {
    \para e'8 s16 g, s c s e ~
    e8 s16 a, s c s f ~
    
    f8 s16 a, s d s f ~
    f8 s16 b, s d s g ~
    g8 e16[^\markup { \italic "g" } e]^\markup { \italic "d" } g[ g] e[ e]
    a,[ a] b[ b] c[ c] g[ <g c>]
    a[ <a c>] f[ <f a c>] d[ <g c>] d[ <f g b>]
    
    <e g c>16 c s e s g s c ~
    c e, s g s c s c ~
    c8\noBeam s16 d, s b' s b ~
    b8\noBeam s16 c, s e s a ~
    a8\noBeam s16 \cstl b, s \cstr e s gis ~
    
    gis8\noBeam s16 e s a s c
    fis,16[^\markup { \italic "g" }  fis]^\markup { \italic "d" }  gis[ gis] a[ a] e[ <e a>]
    f[ <f a>] d[ <d f a>] s <e a> s <d e gis>
   } \alternative {
     { <<{ <e a>\noBeam e s a s c s e } \\ { c, s e s a s c s }>> }
     { <<{ <e, a>4 } \\ { c }>> r }
  } \bar "|."
}

doubleFourLeft= \relative c {
  \global
  \stemDown
  
  \repeat volta 2 {
    \once \stemUp a8\noBeam \cstr e''16 s a s c s
    \cstl d,,8\noBeam \cstr f'16 s a s b s
    \cstl e,,8\noBeam b'16 s \cstr e s gis s
    \cstl a,,8[ e' a c]
    a16 s \cstr e' s \cstl gis, s \cstr e' s
    
    \cstl a,8\noBeam \cstr e'16 s a s \cstl a, s
    g8\noBeam  \cstr e'16 s \cstl f, s \cstr d' s
    \cstl \stemUp e, \cstr \stemDown e' \cstl \stemUp b gis e b e, e'
    \stemDown 
  }

  \repeat volta 2 {
    \once \stemUp c8\noBeam \cstr g''16 s c s e s
    f,8\noBeam a16 s c s f s
    
    d,8\noBeam a'16 s d s f s
    g,8\noBeam b16 s d s g s
    e,8\noBeam c'16[ c] e[ e] c[ c]
    f,[ f] g[ g] a[ a] e[ e]
    f[ f] d[ d] \cstl g,\noBeam \cstr d'\noBeam \cstl g,\noBeam \cstr d'\noBeam
    
    \cstl \once \stemUp c,8\noBeam \cstr c'16 s e s g s
    c,8\noBeam e16 s g s c s
    \cstl g,8\noBeam \cstr d'16 s \cstl gis, s \cstr b' s
    \cstl a,8\noBeam \cstr c16 s e s a s
    \cstl e,8\noBeam b'16 s \cstr e s gis s
    
    c,8\noBeam e16 s a s c s
    d,[ d] e[ e] f[ f] c[ c]
    d[ d] \cstl <<{ s b b[ b] b[ b] } \\ { b s e, s e s}>>
  } \alternative {
    { <<{ a } \\ { a, }>> s s4. }
    { <<{ a'4 <c, e a> } \\ { a <a a,> }>> }
  } \bar "|."
}

doubleFiveRight = \relative c' {
  \global
  \override Beam #'damping = #4
  
  \repeat volta 2 {
    e16 c' c a' c, c e, c'
    f, b b f' b, b d, a'
    b, a' a e' a, a b, gis'
    <<{ \para a2 } \\ { c, }>>   
    e16 a a c e, b' b d
    
    e, c' c a' c, c e, c'
    f, b b f' b, b d, a'
    <<{ gis2\prall } \\ { b,8 r r4 }>>
  }

  \repeat volta 2 {
    g'16 e' e c' e, e g, e'
    a, c c a' c, c a c
    
    f, d' d f d d f, c'
    d, b' b g' b, b d, d'
    g, c c g' c, c g c
    a8 b\prallup c e,
    d16 c' c g' c, c d, b'
    
    <<{ \parb c2 } \\ { e, }>>
    e16 c' c c' c, c e, c'
    d, b' b b' b, b d, b'
    c, a' a a' a, a c, a'
    <<{ gis2\prall } \\ { b,8 r }>>
    
    e16 a a e' a, a e a
    fis8 gis\prallup a c,
    b16 a' a e' a, a b, gis'
  } \alternative {
    { <<{ a2 } \\ { c,8 r r4 }>> }
    { <<{ a'2 } \\ { c, }>> }
  } \bar "|."
}

doubleFiveLeftUp = \relative c' {
  \global
  \voiceOne
  
  \repeat volta 2 {
    r4 a
    d,2
    r4 e
    s2
    \once \override Beam #'positions = #'(2 . 2.5) a,,8 a' 
    \once \override Beam #'positions = #'(3 . 3.5) gis e'
    
    s2
    d2
    s2
  }

  \repeat volta 2 {
    r4 c
    r f
    
    r d
    s s
    r e
    s2
    r4 g
    
    s2
    c,,4 \once \override Beam #'positions = #'(4 . 4.5) c'8 g' ~
    g d4 e8 ~
    e4 \once \override Beam #'positions = #'(3.5 . 3) e8 a,
    s2
    
    r4 c
    s2
    r4 e
  } \alternative {
    { s2 }
    { s2 }
  } \bar "|."
}

doubleFiveLeftDown = \relative c {
  \global
  \override Beam #'damping = #5
  \voiceTwo
  
  \repeat volta 2 {
    a2
    r4 d,
    e2
    a16 e' e a e e a, a
    s4 gis
    
    \oneVoice a a'8 a, \voiceTwo
    r4 d,
    e16 e' e b' \oneVoice e, e e, e' \voiceTwo
  }

  \repeat volta 2 {
    c,2
    f
    
    d
    \oneVoice g4 g'8 f, \voiceTwo
    e2
    \oneVoice f16 f' g, g' a, a' f, f' \voiceTwo
    g,2 
    
    \oneVoice c16 g' g c g g c, c \voiceTwo
    c,4 c'
    g gis
    a e'
    \oneVoice e,16 e' e e' e, e e, e' \voiceTwo 
    
    c,2
    \oneVoice d16 d' e, e' f, f' d, d' \voiceTwo
    e,2 \oneVoice 
  } \alternative {
    { a16 a' a e' a, a a, a }
    { <a a,>2 }
  } \bar "|."
}

doubleSixRight = \relative c' {
  \global
  
  \repeat volta 2 {
    <e a c>4 q
    <d f b> <c f a>
    <b e a> <b d e gis>
    <c e a>2
    <c e a>4 <e gis b>
    
    <e a c> q
    <d f b> <c f a>
    <b e gis>8 r r4
  }

  \repeat volta 2 {
    <e g e'>4 <e g c>
    <c g' a> <c f a>
    
    <f a f'> <f a d>
    <<{ <g b>2\prall } \\ { f }>>
    <g c g'>4 <g c e>
    <<{ c4. c8 } \\ { a8[ g f e] }>>
    <d c'>4 < f g b>
    
    <e g c>2
    <e' g c>4 q
    <d c'> <d b'>
    <d e> <c a'>
    <b gis'>2\prall
    
    <e \para a>4 <e c'>
    <<{ fis8 gis a4 } \\ { e8 d c f }>>
    <b, a'>4 <d gis>\prall
  } \alternative {
    { <c e a>2 }
    { q }
  } \bar "|."
}

doubleSixLeft = \relative c {
  \global
  \override Beam #'damping = #4
  
  \repeat volta 2 {
    a16 a' a c a a a, a'
    d,, d' d f d d d, d'
    e, e' e b' e, e e, e'
    a,, a' a e' a, a a, a'
    a e' e a gis, e' e b'
    
    a, a' a e' a, a a, a'
    d,, d' d f d d d, d'
    e, e' e b' e, e e, e'
  }

  \repeat volta 2 {
    c, c' c g' c, c e, c'
    f, f' f a f f f, f'
    
    d, d' d f d d d, d'
    g, g' g d' g, g g, g'
    e, e' e g e e e, e'
    f, f' f a f f f, f'
    g, g' g d' g, g g, g'
    
    c,, c' c c' c, c c, c'
    c c' c g' c, c c, c'
    g, g' g d' g, g gis, e'
    a, a' a e' a, a a, a'
    e, e' e b' e, e e, e'
    
    c, c' c e c c c, c'
    d, d' e, e' f, f' d, d'
    e, e' e b' e, e e, e'
  } \alternative {
    { a,, a' a a' a, a a, a' }
    { <a a,>2 }
  } \bar "|."
}

\score {
  %\header { title = "Gavotte" }
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Gavotte"
    \new Staff = "right" {
      << 
        \breaks
        \new Voice { \gavotteRight }
      >>
    }
    \new Staff = "left" { 
      <<
        \breaks 
        \new Voice { \clef bass \gavotteLeft }
        \new Voice { \gavotteMiddle }
      >>
    }
  >>
  \layout {
    \context {
      \Score
      \override NonMusicalPaperColumn.page-break-permission = ##f
    }
  }
  %\layout { indent = 0 }
}
\noPageBreak

\score {
  %\header { title = "1er Double de la gavotte" }
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"1er Double"
    \new Staff = "right" {
      << 
        \breaks
        \new Voice { \doubleOneRight }
      >>
    }
    \new Staff = "left" { 
      <<
        \breaks 
        \new Voice { \clef bass \doubleOneLeft }
      >>
    }
  >>
  \layout {
    \context {
      \Score
      \override NonMusicalPaperColumn.page-break-permission = ##f
    }
  }
  %\layout { indent = 0 }
}
\noPageBreak

\score {
  %\header { title = "2eme Double" }
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"2e Double"
    \new Staff = "right" {
      << 
        \breaks
        \new Voice { \doubleTwoRight }
        \new Voice { \doubleTwoMiddle }
      >>
    }
    \new Staff = "left" { 
      <<
        \breaks 
        \new Voice { \clef bass \doubleTwoLeft }
      >>
    }
  >>
  \layout {
    \context {
      \Score
      \override NonMusicalPaperColumn.page-break-permission = ##f
    }
  }
  %\layout { indent = 0 }
}

\pageBreak

\score {
  %\header { title = "3eme Double" }
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"3e Double"
    \new Staff = "right" {
      << 
        \breaks
        \new Voice { \doubleThreeRightUp }
        \new Voice { \doubleThreeRightDown }
      >>
    }
    \new Staff = "left" { 
      <<
        \breaks 
        \new Voice { \clef bass \doubleThreeLeftUp }
        \new Voice { \clef bass \doubleThreeLeftDown }
      >>
    }
  >>
  \layout {
    \context {
      \Score
      \override NonMusicalPaperColumn.page-break-permission = ##f
    }
  }
  %\layout { indent = 0 }
}

\noPageBreak

\score {
  %\header { title = "4eme Double" }
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"4e Double"
    \new Staff = "right" {
      << 
        \breaks
        \new Voice { \doubleFourRight }
      >>
    }
    \new Staff = "left" { 
      <<
        \breaks 
        \new Voice { \clef bass \doubleFourLeft}
      >>
    }
  >>
  \layout {
    \context {
      \Score
      \override NonMusicalPaperColumn.page-break-permission = ##f
    }
  }
  %\layout { indent = 0 }
}

\pageBreak

\score {
  %\header { title = "5eme Double" }
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"5e Double"
    \new Staff = "right" {
      << 
        \breaks
        \new Voice { \doubleFiveRight }
      >>
    }
    \new Staff = "left" { 
      <<
        \breaks 
        \new Voice { \clef bass \doubleFiveLeftUp }
        \new Voice { \clef bass \doubleFiveLeftDown }
      >>
    }
  >>
  \layout {
    \context {
      \Score
      \override NonMusicalPaperColumn.page-break-permission = ##f
    }
  }
  %\layout { indent = 0 }
}

\noPageBreak

\score {
  %\header { title = "6eme Double" }
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"6e Double"
    \new Staff = "right" {
      << 
        \breaks
        \new Voice { \doubleSixRight }
      >>
    }
    \new Staff = "left" { 
      <<
        \breaks 
        \new Voice { \clef bass \doubleSixLeft }
      >>
    }
  >>
  \layout {
    \context {
      \Score
      \override NonMusicalPaperColumn.page-break-permission = ##f
    }
  }
  %\layout { indent = 0 }
}
