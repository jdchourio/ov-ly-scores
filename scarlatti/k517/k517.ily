\version "2.18.2"

\header {
  title = "K517"
  meter = "Prestissimo"
  tagline = ##f
}

global = {
  \key c \major
  \time 2/2
  %\override Staff.NoteCollision #'merge-differently-dotted = ##t
}

cstl=\change Staff="left"
cstr=\change Staff="right"

right = \relative c'' {
  \global

  \repeat volta 2 {
     d8 f e d a' g f e
     d c bes a g bes a g
     a g f e d \cstl c bes a 
     g bes a g a g f e
     \cstr d'-\markup { \italic "M" } f e d a' g f e
     
     r2 d'
     <cis e> <d f>
     <bes g'>
     <<{ a'2 ~ a8 g f e d2 e } \\ 
       { cis2 d d8 c bes a g bes a g a g f e }>>
     f2 d' <cis e> <d f>
     
     <bes g'>
     <<{ a'2 ~ a8 g f e d c bes a
         bes d c bes c bes a g } \\ 
       { cis2 s d, ~ d e }>>
     <a c>2 <bes d>
     <g e'> <<{ f'2 ~ f8 d c bes a g f e } \\ { a2 g }>>
     a8 g f e f g a b
     
     <<{ c2 } \\ { r8 f, e d e g fis a }>>
     <<{ r8 c b a b d cis e } \\ { g,2 }>>
     <<{ d'2 } \\ { r8 g, fis e fis a gis b }>>
     <<{ r8 d c b c d e c } \\ { a2 }>>
     f'8 e d c b a gis fis
     e b' gis b e, c' a c
     e, d' b d e, e' c e
     
     <gis, b e>2 ~ <a c e>
     <gis b e>2 ~ <a c e>
     e8 b' gis b e, c' a c
     e, d' b d e, e' c e
     <gis, b e>2 ~ <a c e>
     <gis b e>2 ~ <a c e>
     f' e 
     d c
     
     b a
     b8 e, fis gis a b c a
     b f' e d c b a gis
     a e' d c b a gis fis
     \repeat unfold 2 {
       e b' gis b e, c' a c
       e, d' b d e, e' c e
       <gis, b e>2 ~ <a c e>
       <gis b e> ~ <a c e>
     }
     f'2 e d c b a
     
     b8 e, fis gis a b c a
     b f' e d c b a gis
     \repeat unfold 2 {
       <<{ s2 a' ~ \voiceTwo a8 f e d c b a gis } \\
         { a2 ~ a }>>
     }
     \grace { gis8 } a1 ~
  }
  
  \repeat volta 2 {
    a8 cis b a a' g f e
    d f e d g f e d
    \grace { d4 } cis2 \voiceOne r
    r d
    <<{ e8 g f e f e d c
        bes d c bes c bes a g } \\
      { e2 d ~ d e }>>
    
    \oneVoice <a c>2 <bes d>
    <c e> f8 e d c
    bes d c bes c bes a g
    a c bes a bes d c bes
    c g' f ees d c bes a
    d c bes a bes c d e
    
    <<{ f2 a,8 c b d } \\ { r8 bes a g d2 }>>
    <<{ r8 f' e d e g fis a } \\ { c,2 }>>
    <<{ g'2 b,8 d cis e } \\ { r8 c b a e2 }>>
    <<{ r8 g' f e f g a f } \\ { <d, d'>2 d }>>
    bes''8 a g f e d cis b

    \repeat unfold 2 { 
      a e' cis e a, f' d f
      a, g' e g a, a' f a \voiceOne 
      \repeat unfold 2 { <cis, e a>2 ~ <d f a> }
      \oneVoice 
    }
    
    \voiceOne bes'2 a g f e d c bes a g \oneVoice
    f8 d f a d c bes a
    bes bes' a g f e d cis
    
    d a' g f e d cis b
    \repeat unfold 2 {
      \oneVoice a e' cis e a, f' d f
      a, g' e g a, a' g a
      \voiceOne <cis, e a>2 ~ <d f a> 
    } \alternative {
      { <cis e a>2 ~ <d f a> }
      { <cis e a>2 <d f a> }
    } \oneVoice
    
    bes'2 a g f e d c bes a g
    f8 d g a d c bes a
    bes bes' a g f e d cis
    d2 d' ~
    d8 bes a g f e d cis
    <<{ d1 ~ \oneVoice d8 bes a g f e d cis } \\ { d'2 d, }>>
    \acciaccatura c8 d1
  }
}
 
left = \relative c {
  \global

  \repeat volta 2 {
    r1 r1 r1 s1
    d2 s
    
    d'8 c bes a g bes a g
    a g f e d c bes a
    g bes a g a g f e
    d2 d'' ~ 
    d cis
    d8 c! bes a g bes a g
    a g f e d c bes a

    g bes a g a g f e
    d2 s s1
    f''8 e d c bes d c bes 
    c bes a g f e d c
    bes2 c
    <f, f'> <d d'>
    
    <<{ c a' g e d b' a a d, d e e e e }
      { c' a' g e d b' a a d, d e e e e }>>
    
    e8 b' gis b e, c' a c
    e, d' b d e, e' c e
    e,,2 e
    e e
    e'8 b' gis b e, c' a c
    e, d' b d e, e' c e
    d, d' b d c, c' a c
    b, b' g b a, a' f a
    
    g, g' e g f, f' d f
    <<{ e2 c d e a }{ e, c d e a }>>
    r2 
    \repeat unfold 2 { 
      e e e e
      e'8 b' gis b e, c' a c
      e, d' b d e, e' c e
    }
    
    d, d' b d c, c' a c
    b, b' g b a, a' f a
    g, g' e g f, f' d f
    
    <<{ e2 c d e }{ e, c d e }>> 
    a8 a' c a f, f' a f
    d,2 <e e'>
    a8 a' c a f, f' a f
    <d, d'>2 <e e'>
    <a, a'>1 ~
  }

  \repeat volta 2 {
    q2 r
    R1
    a''8 cis b a \cstr \voiceTwo a' g f e
    d f e d g f e d
    \cstl \oneVoice cis2 s
    g1
    
    <<{ f'8 e d c bes d c bes } \\ { f2 }>>
    c'8 bes a g
    <<{ s2 g1 } \\ { f2 ~ f2 c }>>
    <<{ a'2 bes <b c>1 } \\ { f2 d ees f }>>
    
    <<{ bes g f } { bes, g f }>> d'
    <<{ c a g } { c' a g }>> e
    d d 
    <g , g'> q
    <a a'> a,
    
    \repeat unfold 2 {
      a a
      a''8 \cstr \voiceTwo e' cis e \cstl \oneVoice a, \cstr \voiceTwo f' d f
      \cstl \oneVoice a, \cstr \voiceTwo g' e g \cstl \oneVoice a, \cstr \voiceTwo a' f a\cstl \oneVoice 
    } \alternative { { a,,,2 a } {} }
    
    g''8 \cstr \voiceTwo g' e g \cstl \oneVoice f, \cstr \voiceTwo f' d f
    \cstl \oneVoice e, \cstr \voiceTwo e' c e \cstl \oneVoice d, \cstr \voiceTwo d' bes d 
    \cstl \oneVoice c, c' b c bes, g' bes g
    a, a' f a g, g' e g
    f, f' d f
    e, e' cis e
    <<{ d2 f g a d, } { d, f g a d, }>> r
    
    \repeat unfold 2 {
      a a a a
      \cstl \oneVoice a''8 \cstr \voiceTwo e' cis e \cstl \oneVoice a, \cstr \voiceTwo f' d f
      \cstl \oneVoice a, \cstr \voiceTwo g' e g \cstl \oneVoice a, \cstr \voiceTwo a' f a
      \cstl \oneVoice
    }
    
    \cstl \oneVoice g, \cstr \voiceTwo g' e g \cstl \oneVoice f, \cstr \voiceTwo f' d f
    \cstl \oneVoice e, \cstr \voiceTwo e' c e \cstl \oneVoice d, \cstr \voiceTwo d' bes d
    \cstl \oneVoice c, c' a c bes, g' bes g
    a, a' f a g, g' e g
    f, f' d f e, e' cis e
    
    <<{ d2 f g a } { d,, f g a }>>
    d8 d' f d bes, bes' d bes
    g,2 a
    d,8 d' f d bes, bes' d bes
    g,2 a
    d1
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
