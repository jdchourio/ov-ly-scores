\version "2.18.2"

\header {
  title = "K57"
  meter = "Allegro"
  tagline = ##f
}

global = {
  \key f \major
  \time 3/8
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
}

cstl=\change Staff="left"
cstr=\change Staff="right"

right = \relative c' {
  \global

  \repeat volta 2 {
    f8 \stemUp bes4
    s8 d4
    s8 f4
    f8 \stemNeutral bes4
    \cstl bes,,,,8 \cstr bes''''16 f d bes
    \stemDown f d \cstl \stemUp bes f d bes
    \stemNeutral ees,8 \cstr g''' f ~ f ees8.\trill d32 ees
    d8 bes'16 f d bes
    \stemDown f d \cstl \stemUp bes f d bes
    \stemNeutral ees,8 \cstr g'' f ~ f ees8.\trill d32 ees
    
    ees8 d4
    <<{ f8 g16 a bes8 ~
        bes a16 bes c8 ~
        c bes16 c d8 ~
        d c16 d ees8 ~
        ees d16 e f8 ~ 
        f e16 f g8 ~
        g f16 g a8 ~
        a16 g bes a g f 
      } \\ {
        s4 bes,16 d,
        c4 ~ c16 ees
        d4 ~ d16 f
        ees4 ~ ees16 a
        bes4 ~ bes16 a
        g4 ~ g16 bes
        a4 ~ a16 c
        d8 
    }>>
    e8.\trill d16 c8
    c'4.
    a,8 s4
    c'4.^"D"
    e,,8 s4
    
    c''4.^"D"
    a,8 s4
    \voiceOne f'4.^"D"
    d8 s4
    f4.^"D"
    c8 s4
    f4.^"D"
    bes,8 s4
    f'4.^"D"
    a,8 s4
    \oneVoice r16 cis8*1/2 d8. cis16
    d cis d4 ~
    d16 cis d cis d cis
    
    d4 e32 f g16
    f8.\trill e16 d8
    r16 fis g4 ~
    g16 fis g4 ~ 
    g16 fis g fis g fis
    g4 a32 bes c16
    bes8. a16 g8
    R4.^\markup { \musicglyph #"scripts.ufermata" }
    r8 \repeat unfold 2 {
      <<{ aes4 ~ aes8 g32[ f ees16] f32[ ees d16] c8 } \\ { b4 c }>>
    }
    
    \repeat unfold 2 {
      <<{ g'4 ~ g8 f32[ ees d16] ees32[ d c16] } \\ { a4 bes }>>
    } \alternative { { bes8 } {} }
    bes'8. a16 g f
    e!4\trill \repeat unfold 3 { f8 ~ 
    f e f16.\trill e32*1/2 f ~
    f8 } \alternative { {g} {g} {} }
    g4 ~ g16 f e d c bes
    
    <<{ bes8\trill a \voiceOne 
          f'8 ~ f g s s s
          \repeat unfold 2 { f8^"D" ~ f g s s s }
          s4. s4.
          f8^"D" ~ f g s s s
          \repeat unfold 2 { f8^"D" ~ f g s s s }
          s s4.
      }
      \new Voice { \cstl s4.
        \repeat unfold 2 {
          \repeat unfold 2 { s4 bes,,,8^"D" a f s }
          s s bes^"D"
          a f a 
          bes c c, 
        } \alternative {
          { f a s } {}
        }
    }>>
    
    \cstl f16 a c f a^"D" c
    g bes a f g e
    f a \cstr \oneVoice c f a c
    g bes a f g e
    
    <<{ f16 gis' a gis a8\noBeam ~
        a16 e f e f8\noBeam ~
        f16 cis d cis d8 ~
        d16[ c] bes8.\trill a32 g } \\
      { f16 e' f e f8\noBeam ~
        f16 cis d cis d8\noBeam ~
        d16 a bes a bes8 ~
        bes16[ a] g8
    }>>
    
    <<{ f16 gis' a gis a8\noBeam ~
        a16 e f e f8\noBeam ~
        f16 cis d cis d c } \\
      { f,16 e' f e f8\noBeam ~
        f16 cis d cis d8\noBeam ~
        d16 a bes a bes8
    }>>
    
    bes32[ a g16] a32[ g f16] g32[ f e16]
    a g f e d c
    \cstl \voiceOne bes32[ a g16] a32[ g f16] g32[ f e16]
    f4.
  }
  
  \repeat volta 2 {
    \cstr \voiceOne
    c''8 f4
    s8 a4
    s8 c4 ~
    c4. ~
    \oneVoice c16 a f c a f ~
    f c'' gis a e f
    cis d a bes f bes
    a8\noBeam g16.*2/1\trill f32 g
    a16 c' gis a e f
    cis d a bes e, g 
    cis, d \cstl \voiceOne a bes f bes
    a8\noBeam g16.*2/1\trill f32 g ~ 
    g8 a4

    \cstr \oneVoice
    R4.^\markup { \musicglyph #"scripts.ufermata" }
    r8 <c' a'>4 ~
    q8 q4 ~
    q8 q4 ~
    a'8 gis16 f e d ~ 
    d8 f32[ e d16] a'8 ~
    a gis16 f e d ~ 
    d8 f32[ e d16] a'8 ~
    a cis, bes' ~
    bes[ a32 g f16] a8 ~ 
    a cis, bes' ~
    bes[ bes32 a g16] g8 ~
    g[ a32 g fis16] a8 ~
    
    a[ bes32 a g16] g8 ~
    g16*2/1[ a32 g fis16] fis8 ~
    fis a8.\trill[ g32 a]
    s4.
    r8 a8.[ g32 a]
    s4.
    r8 bes4^"D" ~
    bes8 bes4 ~
    bes16 a gis g fis f
    f8\trill e4
    r8 g8. f32 g
    
    s4.
    r8 g8.[^"D" f32 g]
    s4.
    r8 a4^"D" ~
    a8 a4 ~
    a16 g fis f e ees
    ees8 d4 ~
    d16[ a'] ees8 d ~
    d16[ bes'] ees,8 d ~
    d16[ c'] ees,8 d ~
    d16[ aes'] ees8 d ~
    
    d16[ f] ees8 d ~
    d16[ f] ees8 d
    \grace { ees32( f) } g8 f16 ees d c
    \grace { d32 ( e) } f8 ees16 d c bes
    \grace { c32( d) } ees8 d16 c bes a
    bes32[ c d ees] f16 g a bes
    d,8 c16 d ees f
    ees8\trill d16 a' bes c
    d,8 c16 d ees f
    
    ees8 d16 a' bes c
    d,8 c f ~
    \voiceOne f[ c'] \cstl \voiceTwo ees,,,8_"D" 
    d[ bes] \cstr \voiceOne f'''8^"D" ~ 
    f8[ c'] \cstl \voiceTwo ees,,,8_"D" 
    d[ bes] \cstr \voiceOne f'''8^"D" ~ 
    f8[ c'] \cstl \voiceTwo ees,,,8_"D"
    \voiceTwo d16[ bes d f] \cstr \voiceOne bes d
    c ees \cstl bes \cstr d c \cstl a
    \cstr \voiceOne s4 f''8 ~
    
    f8[ c'] \cstl \voiceTwo ees,,,8_"D" 
    d[ bes] \cstr \voiceOne f'''8^"D" ~ 
    f8[ c'] \cstl \voiceTwo ees,,,8_"D"
    d[ bes] \cstr \voiceOne f'''8^"D" ~ 
    f8[ c'] \cstl \voiceTwo ees,,,8_"D"
    \voiceTwo d16[ bes d f] \cstr \voiceOne bes d
    c ees \cstl bes \cstr d c \cstl a
    \oneVoice bes bes \cstr d f bes d
    c ees bes d c a \voiceOne 
    bes\noBeam <cis e> <d f> <c e> <d f>8\noBeam ~
    q16 <d fis> <ees g> <d fis> 
    
    <<{ g8 ~ g16 a bes a bes8 ~ 
        bes16 a32 g f16 ees d c } \\
      { \once \stemUp ees8 ~ ees16 fis g fis g8 ~
        g16 ees d c bes a }>>
    <bes d>16 <cis e> <d f> <c e> <d f>8 ~
    q16 <d fis> <ees g> <d fis>
    <<{ g8 ~ g16 a bes a bes f } \\ 
      { \once \stemUp ees8 ~ ees16 c d c bes8\noBeam }>>
    \oneVoice g'16 ees d c bes a
    bes f' d bes f[ d]
    c ees d bes c a
    bes4.
  }
}
 
left = \relative c' {
  \global

  \repeat volta 2 {
    s8 d bes
    \cstr bes' \cstl bes, f
    \cstr d'' \cstl f,, d
    bes f d
    s4.
    d4.
    \once \stemDown ees
    f 
    bes,
    d
    \once \stemDown ees
    f
    
    bes4 bes'8
    bes,4.
    f'
    bes,
    c
    d
    e
    f
    bes
    c
    
    \voiceTwo \cstr c16 e d f e g
    f \cstl c^"D" a f \once \stemUp f,8\noBeam 
    \cstr f''16 a e g d f
    \cstl c g^"D" e c \once \stemUp c,8\noBeam 
    
    \cstr c''16 e d f e g
    f \cstl c^"D" a f \once \stemUp f,8\noBeam 
    \cstr f''16 a g bes a c
    bes f^"D" d \cstl bes \once \stemUp bes,8\noBeam
    \cstr bes''16 d a c g bes
    a \cstl c,^"D" a f \once \stemUp a,8\noBeam
    \stemDown \cstr a''16 c g bes f a
    g \cstl bes,^"D" g e \once \stemUp g,8\noBeam
    \cstr g''16 bes f a e g
    f \cstl c^"D" a f \once \stemUp f,8\noBeam
    \clef treble \oneVoice \repeat unfold 3 { <f'' a>8 q <g bes> }
    
    <<{ a8 g4 } \\ { f8 e a, }>>
    \clef bass d,4.
    \clef treble \repeat unfold 2 { <ees' c'>8 q <d bes'> }
    <c a'> q <bes g'>
    <c a'> <bes g'> <a fis'>
    g8 g'4
    R4.^\markup { \musicglyph #"scripts.ufermata" }
    \repeat unfold 2 {
      r8 f f
      <<{ g g g } \\ { ees ees ees }>>
    }

    \repeat unfold 2 { r8 <<{ f f f f f } \\ { ees ees d d d }>> }
    <<{ f f <f bes> } \\ { d d d }>>
    <<{ bes' bes aes } \\ { c, c c }>>
    \repeat unfold 2 { <<{ <g' bes> q <f aes> <e g> q <f aes> } \\ { c c c c c c }>> }
    <<{ <g' bes> q <f aes> <e g> q f g4 g8 } \\ { c, c c c c d e c e }>>
    
    \clef bass f,4 s8 \cstr \voiceTwo
    \repeat unfold 2 {
      \repeat unfold 3 { 
        e'16 g c, g' e g
        f a f a f a }
      g bes a f g e
    } \alternative {
      { f a f a f a } {}
    }
    
    \cstl s4 a,,8 
    bes c c,
    f4 \oneVoice f'8
    bes c c,

    \repeat unfold 2 {
      f f' e
      d, d' c
      bes, bes' a
      bes c c,
    }
    f, g a
    \voiceTwo bes c c,
    f4.
  }

  \repeat volta 2 {
    \cstr s8 a'' f
    f' f, c
    a'' \voiceOne c,, \cstl a
    \oneVoice f c a
    f4.
    <a f'>
    <<{ <bes f'> ~ f'8 e4 } \\ { s4. c }>>
    <f, f'>
    <a f'>
    <<{ \voiceTwo s4 s16 \once \hideNotes \once \tieUp f'16 ~ f8 e4 } \\ 
      { \voiceFour s4. c }>>
    f,4 f'8
  
    R4.^\markup { \musicglyph #"scripts.ufermata" }
    \clef treble r8
    <<{ a' a
        a a a
        a a a
        bes bes bes
        a a a
        bes bes bes
        a a a
        <g bes> g g
        a a a
        g g g
        <g c!> q q
        <g bes> a a
      } \\ {
        f f
        e e e
        dis dis dis
        e e e
        f f f
        e e e
        f f f
        e e e
        f f f
        e e e
        ees ees ees
        d d d
      } \\ {
        s4 s4.*7
        bes'4.
    }>>
    
    <<{ <g c>8 q q <g bes> a a <a c>4. } \\
      { e8 e e d d d fis4 d8 }>>
    <<{ <g bes d>4. 
        <<{ <a d>4. } \\ { fis4 d8 }>>
        <g bes d>4.
        <g bes d>4
        <<{ c8 d4 c8 d4 d8 } \\ { a8 bes g a bes4 b8 }>>
      } \new Staff \with { \remove "Time_signature_engraver" }
      { \clef bass \key f \major
        r16 d,^"D"[ bes g] g,8 \noBreak
        s4. \noBreak
        r16 d''^"D"[ bes g] g,8 \noBreak
    }>>
    <<{ c''4. } \\ { c8 c, d }>>
    <<{ <g c>4. } \\ { e4 c8 }>>
    
    <<{ <<{ <a' c>4 q8 <g c>4. <a c> } \\
          { f4 f8 e4 c8 f4. }>>
      } \new Staff \with { \remove "Time_signature_engraver" }
      { \clef bass \key f \major
        r16 d^"D"[ bes g] g,8 \noBreak
        s4. \noBreak
        r16 d''^"D"[ bes g] g,8 \noBreak
    }>>
    <<{ a''4 bes8 c4 bes8 c4 c8 } \\
      { f,4 g8 a f g a4 a8 }>>
    bes4 bes8
    <<{ <a c>4 q8 bes4 bes8 <a c>4 q8 <g b>4 <g c>8 } \\
      { fis4 fis8 g4 g8 fis4 fis8 f!4 f8 }>>

    <<{ <g b>4 q8 
        q4 q8 
        c4. bes
        a f8 
        bes4 ~ bes8 
        a4 } \\
      { f4 f8
        f4 f8 
        <ees g>4 q8
        <d f>4 q8
        <c ees>4 q8
        d4 ees8
        f4. }>>
    <<{ bes4*3/2 ~ bes8 a4 } \\ 
      { s4 ees8 f4. }>>
    
    <<{ bes4*3/2 ~ bes8 a4 } \\
      { s4 ees8 f8. ees16 d c }>>
    \clef bass
    bes \cstr d \cstl a \cstr c \cstl f, \cstr c'
    \cstl bes \cstr f' d f \cstl bes, \cstr f'
    \cstl bes, \cstr d \cstl a \cstr f' \cstl f, \cstr f'
    \cstl bes, \cstr f' d f \cstl bes, \cstr f'
    \cstl bes, \cstr d \cstl a \cstr f' \cstl f, \cstr f'
    \cstl \voiceOne bes,8 s \voiceTwo d,_"M"
    ees f f, \oneVoice
    bes'16-"M" \cstr f' d f \cstl bes, \cstr f'
    
    \cstl bes, \cstr d \cstl a \cstr f' \cstl f, \cstr f'
    \cstl bes, \cstr f' d f \cstl bes, \cstr f'
    \cstl bes, \cstr d \cstl a \cstr f' \cstl f, \cstr f'
    \cstl bes, \cstr f' d f \cstl bes, \cstr f'
    \cstl bes, \cstr d \cstl a \cstr f' \cstl f, \cstr f'
    \cstl \voiceOne bes,8 s \voiceTwo d,_"M"
    ees f f,
    bes4 \oneVoice <d bes'>8
    <ees c'> <f bes d> <f c' ees>
    bes,8 \cstr bes'' a
    \cstl g, \cstr g' f
    
    \cstl ees, ees' d
    ees f d,
    bes \cstr bes'' a
    \cstl g, \cstr g' f
    \cstl ees, ees' d
    ees f f,
    bes bes, d
    s4.
    bes
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
