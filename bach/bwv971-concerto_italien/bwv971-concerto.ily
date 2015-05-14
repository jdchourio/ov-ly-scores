\version "2.18.2"

cstr = \change Staff = "right"
cstl = \change Staff = "left"

\header {
  piece = "Concerto"
}

global = {
  \key f \major
  \time 2/4
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
}

right = \relative c'' {
  \global

  <<{ r8 f[ a, bes]
      c4^\markup { \musicglyph #"scripts.segno" } d
      c8 f4 ees16 d
      <bes d>8 <a c> } \\
    { r4 f8 g
      a4 bes
      f2
      f4 } \\
    { s2 s2 a4 bes } >> r4
  
  <<{ r8 c'[ e, f]
      g4 a
      g8 c4 bes16 a
      <f a>8 < e g> } \\
    { r4 c8 d
      e4 f
      c2 c4 } \\
    { s2 s2 e4 f }>> r16 c bes a
  
  bes8 g' ~ g16 bes, a g
  a g f g a bes c d 
  ees8 c' ~ c16 ees, d c
  d c bes c d e! f g
  aes g32 f g8 ~ g16 f32 e f8 ~
  f16 e32 d e8 ~ e16 g e c
  
  \repeat unfold 2 { bes-. g'( e c) bes-. g'( e c) }
  a-. a'( f des) c-. a'( f des)
  c-. a'( f des) c-. a'( f ees)
  d!-. b'( aes f) d-. b'( aes f)
  d-. b'( aes f) d-. b'( aes f)
  
  e c' g e c e d f
  e g e c g bes a c
  bes d bes g e g f a
  g bes g e c bes' a g
  a f g a bes c d e
  f e d c
  <<{ c'8 <c, f>
      q4 <c e> ~ 
      e16 f8. r4
      r16 c f8 ~ f <c e> 
      <a c f>4^\markup { \italic "fine" } } \\
    { r8 a 
      a4 g
      \once \override NoteColumn.force-hshift = #-1.1 \shiftOn f s
      a8. a16 g4
      f
    } \new Voice
    { \voiceTwo s4 s \once \stemUp c' ~ 
      c8 b ~ b16 d c bes
      \voiceThree s4 c8\rest bes
  }>>
  
  r8 c^\markup { \italic "forte" }
  d16c d8 ~ d16 f ees d
  c e! f8 ~ f16 e d c
  bes a bes d g8 bes,
  bes\prall a r a
  
  g16( bes) bes( a) a( f') f( e)
  e( d) d( c) c( bes) bes( a)
  g bes c32( bes a16) a( f') g32( f e16)
  f32( e d16) e32( d c16) d32( c bes16) c32( bes a16)
  
  bes32 a g16 a8 ~ a16 c bes a
  g b c8 ~ c16 b! a g
  f e f a d8 f,
  f\prall e r16 c'd e
  
  a, e( f a d) d e f
  b, fis( g b! e) e f g
  c, gis( a c fis) fis g a
  g\prall fis g8 ~ g16 g, b d
  f! e f8 ~ f16 g, b d
  e d e8 ~ e16 g, c d
  
  ees-. c( b c) fis c a' c,
  b-. f!( e f) b! f d' f,
  e g c g' f e d c
  c4 r
  
  <<{ r8 c[^\markup { \italic "forte" } e, f]
      g4 a
      g16 a bes4 a16 g
      a4 r
      r8 f'[ a, bes]
      c4 d
      c16 d ees4 d16 c
      d4 r } \\
    { r4 c,8 d
      e4 f
      e2
      r16 f e d c r r8
      r4 f8 g
      a4 bes
      a2
      r16 bes a g f r r8 }>>
  
  r16 d'( cis d) bes'8 d, ~
  d16 cis( b cis) a'8 c, ~
  c16 b( a b) g'8 bes,
  bes\prall a r4
  
  r16 d bes g a d g, e
  f d' g, e f d' e, cis
  d d'[-\markup { \italic "piano" } bes32 a g16] a d g,32 f e16
  f d' g,32 f e16 f d' e,32 d cis16
  
  <<{ r8 a''[-\markup { \italic "forte" } bes a]
      r g[ a g]
      r f[ g f]
      r f[ g f] ~ \oneVoice \once \hideNotes f16 } \\
    { d,8 f'[ g f]
      e,[ e' f e]
      f,[ d' e d]
      g,[ d' e d] 
      \oneVoice f16 e32 d e8 ~ e16 d32 cis d8 ~
      d16 cis32 b cis8 ~ cis16 e cis a
  }>>
  
  g-. e'( cis a) g-. e'( cis a)
  g-. e'( cis a) g-. e'( cis a)
  f-. f'( d bes!) a-. f'( d bes)
  a-. f'( d bes) a-. f'( d c)
  b-. gis'( f! d) b-. gis'( f d)
  b-. gis'( f! d) b-. gis'( f d)
  
  cis a' e cis a cis b d
  cis e cis a e g f a
  g bes g e cis e d f
  e g e cis a g' f e
  f d e f g a b cis
  d cis b a

  <<{ a'8 d,
      <d f>4 e ~
      e16 d8. r4 } \\ 
    { r8 a
      a4 g
      \once \override NoteColumn.force-hshift = #-1.3 \shiftOn
      f s } \\
    { s4 s \voiceTwo 
      cis'4 ~ cis16 d gis,8 ~ gis16 bes! a g? }>>
  
  <<{ r16 a d8 ~ d <a cis>
      <f a d>4 } \\ 
    { f8. f16 e4 d } \\
    { s4 \stemUp a'8\rest g }>>
  
  r8 a-\markup { \italic "forte" }
  a16-\prall gis a8 a16-\prall gis a8 ~
  a16 b cis d e8 a,
  a16-\prall gis a8 a16-\prall gis a8 ~
  a16 cis d e f8 a,
  
  a16-\prall gis a8 a16-\prall gis a8 ~
  a16 cis e f g8 a, ~
  a16 g' f e32 d bes'8 g, ~
  g16 f' e d32 c a'8 f, ~
  
  f16 ees' d c32 bes g'16 d c bes32 a
  f'16 c bes a32 g ees'16 bes a g32 f
  d'16 a bes d ees, d' c bes
  a g a c f, ees' d c
  
  <<{ c8[ bes' d, ees]
      f4 g
      f8 bes4 aes16 g
      <ees g>8 <d f> } \\
    { r4 bes8 c
      d4 ees
      bes2 ~ 
      bes4 } \\
    { s2 s2 d4 ees }>>
  
  <<{ r8 <d f> q <c ees> r q
      q <bes d> r q
      q <a c> r q
      q <g bes> } \\
    { g4 ~ g f ~ f ees ~ ees d ~ d }>>
  
  <<{ bes''4 ~ bes8 a16 g } \\
    { r16 d g f ees4 }>>
  a16 fis g a
  d,2-\upprall ~ d ~ d ~
  d8[ g, bes d]
  c2-\upprall ~ c ~ c ~
  c8[ f, a c]
  
  f f,
  <<{ bes4 ~ bes a ~ a ~
      a16 a g f
      e g e d c4 } \\
    { r8 d e16 g e c r8 c
      d16 f d c bes4 ~ 
      bes ~ bes16 bes a g }>>
  
  a c f e d c bes a
  bes e g f e d c bes
  c f a g f e d c
  d f bes a g f e d
  e c e g bes c e g
  
  a8 d, e16 d cis d ~
  d g d b c b c e
  f8 bes, c16 bes a bes ~
  bes ees bes g a g a c
  d8 g, a16 g fis g ~
  
  g c g e f! e f a
  bes2-\upprall ~
  bes16 g' e c bes g' e c
  bes2-\upprall ~
  bes16 g' e c bes g' e c
  
  <<{ a8 f'[ a, bes]
      c4 d ~ 
      d8 c16 d ees8 d16 c
      d4 } \\
    { r4 f,8 g
      a4 bes ~
      bes8 a4.
      bes4 }>> r
  
  <<{ r8 g'[ b, c]
      d4 e ~
      e8 d16 e f8 e16 d
      e4 } \\
    { r4 g,8 a
      b4 c ~
      c8 b4.
      c4 }>>
  
  r8 c-\markup { \italic "forte" }
  c16-\prall b c8 c16-\prall b c8 ~
  c16 d e f g8 c,
  c16-\prall b c8 c16-\prall b c8 ~
  c16 e f g a8 c,
  c16-\prall b c8 c16-\prall b c8 ~
  c16 e g a bes8 c, ~
  
  c16 bes' a g32 f c'8 ees, ~
  ees16 d32 c d16 c32 bes g'8 bes, ~
  bes16 a32 g a16 g32 f d'8 f,
  f-\prall e r bes''
  
  a16 bes c f, a g f e
  f c d f bes, a bes d
  f bes, c f a, g a c
  f a, b f' g, f g f'
  e f g f e d c bes
  a bes c f, a g f e
  
  <<{ f8[^\markup { \bold "D.C"} f' a, bes] } \\ { r4 f8 g } >>
  \bar "||"
  <<{ <a c f>2-\fermata^\markup { \italic "fine" } } \\ { f }>> \bar "|."
}

left = \relative c {
  \global
  <<{ <a c f>4 } \\ { f }>> r
  r8 f''[ d bes]
  r f[ d bes]
  <<{ f'4 } \\ { f8 f, }>> r4
  
  <<{ <e' g c> } \\ { c } >> r
  \clef treble r8 c''8[ a f]
  \clef bass r8 c[ a f]
  <<{ c'4 } \\ { c8 c, }>> r4

  <<{ <g' c>4 <e g c> ~
      c'8[ a c f]
      \clef treble <c f>4 <a c f> ~
      f'8[ d f bes]
      <f b>4 <d g>
      <b d> <g c> } \\
    { e4 c
      \once \override NoteColumn.force-hshift = #1 f r
      a f
      \once \override NoteColumn.force-hshift = #1 bes r
      d b
      \clef bass g c,
    } \\
    { s2 f4 s s2 bes4 }>>
 
  \clef treble r8 c16 d e8 g
  e c \clef bass c,4
  \clef treble r16 c' d e f8 a
  f c \clef bass c,4
  
  r8 d'16 e f8 d16 e
  f8[ d g, b]
  c c,16 d e8 g
  c c,16 d e8 f
  g c,16 e g8 a
  bes c,16 d e8 c
  
  f16 a g f e d c bes
  a c d e f g a bes
  c4 c,
  d r8 e
  f[ a, bes c]
  
  <<{ r8 \clef treble a''[^\markup { \italic "piano" } a a]
      bes[ bes bes bes]
      bes[ bes a a]
      g[ g g g]
      g f r f } \\
    { f,,[ f'' f f]
      f[ f f f]
      f[ f f f]
      f[ f e e]
      f f,16 g a8 f }>>
  
  <<{ f'[ e f a]
      g[ f e f]
      f[ e f a]
      g[ f e g]
      f[ f f f]
      f[ f e e]
      d[ d d d]
      \clef bass d c r4 } \\
    { \repeat unfold 6 { c8[ c c c] }
      c[ c b b]
      c c,16 d e8 c }>>
  
  <<{ r16 g' a c f8 r
      r16 a, b d g8 r
      r16 b, c e a8 c,
      d[ b d f]
      d[ b d f]
      g16 f e d c8 r } \\
    { f,4 r8 d
      g4 r8 e
      a4 r8 a
      b[ g b d]
      b[ g b d]
      c4 ~ c16 b a g }>>
  
  fis e d c b a g fis
  <<{ r8 d' g4 ~
      g8 c,4 b8
      c16 c'[_\markup { \italic "forte" } b a] g f e d
      c r r8 r4 } \\
    { g4 r8 b
      c[ e, f g]
      c16 r r8 r4
      r16 c b a g f e d }>>
  
  <<{ r8 c''[ a f]
      c2 ~
      c8 r r16 bes' a g
      f r r8 r4
      r8 f'[ d bes]
      f2 ~
      f8 r r16 ees' d c } \\
    { c,,8 r8 r4
      r8 g'[ e c]
      f r r4
      r16 f' e d c bes a g
      f8 r r4
      r8 c'[ a f]
      bes r r4 }>>
  
  bes'8 g' ~ g16 bes, a g
  a8 f' ~ f16 a, g f
  g8 e' ~ e16 d cis d
  g, d'( cis e) a, g f e
  
  f8[ g f e]
  d[ bes' a g]
  f8 g[-\markup { \italic "piano" } f e]
  d[ bes' a g]
  
  f16 cis'[(-\markup { \italic "forte" } d e] d cis d) f,-.
  g-. cis( d e d cis d) g,-.
  a-. cis( d e d cis d) a-.
  bes!-. cis( d e d cis d) f-.
  
  <<{ <d gis>4 <b e>
      <gis b> <e a> } \\
    { b' gis
      e a, }>>
  
  r8 a'16 b cis8 e
  cis a a,4
  r16 a' b cis d8 f
  d a a,4
  
  r8 b'16 cis d8 b16 cis
  d8[ b e, gis]
  a a,16 b cis8 e
  a a,16 b cis8 d
  e a,16 cis e8 f
  g a,16 b cis8 a
  
  d16 f e d cis b a g
  f a b cis d e f g
  a4 a,
  bes r8 cis
  d[ f, g a]
  
  d, d'16[-\markup { \italic "piano" } e] f g a b
  <<{ e8 r f r
      e r r4
      f8 r e r
      f16 g f e d e f d
      g8 r f r
      e16 r r8 r4 } \\
    { cis8[ a d a]
      cis a16 b cis d e cis
      d8[ a cis a]
      d r r4
      e8[ a, d a]
      cis16 d cis b a g f e }>>
  
  d d' e f g, f' e d
  c, c' d e f, ees' d c
  bes, bes' c d ees,8 a
  d,[ g c, f]
  bes,[ d g ees]
  f[ c a f]
  bes bes, r4
  
  \clef treble r8 bes'''[-\markup { \italic "[forte]" } g ees]
  \clef bass r bes[ g ees]
  bes'16 c d c bes a bes g
  c, g' c bes a g a f
  bes, f' bes a g f g ees
  a, c a' g fis e! fis d
  g, d' g a g f ees d
  
  c g' c d c bes a g
  fis d' cis d d, fis e g
  fis a d, fis g bes d, g
  a c a fis d c' bes a
  bes d bes g d f e d
  
  e c' b c c, e d f
  e g c, e f a c, f
  g bes g e c bes' a g
  a c a f c ees d c
  d f d bes g bes a g
  
  c e c a f a g f
  bes8[ c d bes]
  c[ d e c]
  c,[ a' bes d]
  c,[ bes' c e]
  c,[ c' d f]
  c,[ d' e g]
  c,,4 r
  
  \clef treble r8 <<{ a'''8[-\markup { \italic "piano" } a a]
      g[ g g g] } \\ { f[ f f] e[ e e e] }>>
  r8 <<{ f[ f f] ees[ ees ees ees] } \\
    { d[ d d] c[ c c c] }>>
  \clef bass r8 <<{ d[ d d] c[ c c c] } \\
    { bes[ bes bes] a[ a a a] }>>
  
  r16 d e f g, e' f, d'
  e, g c8 r4
  r16 g f e c' e, d' d,
  e'8 c, r4
  
  r16 f'16-\markup { \italic "forte" } e d c bes a g
  f f ees d c bes a g
  f f' c a f f' ees f
  bes, d f a bes \clef treble d f a
  
  g g f e d \clef bass c b a
  g g f e d c b a
  g g' d b g g' f g
  c, g'[-\markup { \italic "piano" } a b] c g c d
  
  <<{ \clef treble g8 r a r
      g r r4
      a8 r g r
      a16 bes a g f g a f
      bes8 r a r
      g16 f e d c8 r } \\
    { e8[ c f c]
      e c16 d e f g e
      f8[ c e c] 
      f r r4
      g8[ c, f c]
      e r r16 bes a g }>>
  
  \clef bass f g f ees d c bes a
  bes f' bes8 ~ bes16 g f e
  f a c8 ~ c16 b a b
  c g c d e c d e
  
  f8[ a, bes c]
  d[ bes f d']
  c[ a f c']
  b[ d b g]
  c[ c, d e]
  f[ a, bes c]
  
  <<{ <a c f>4 } \\ { f }>> r
  \bar "||"
  f2-\fermata \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        \breaks
        \new Voice = "right" { \right }
      >>
    }
    \new Staff = "left" { 
      <<
        \breaks 
        \new Voice { \clef bass \left }
      >>
    }
  >>
  \layout { indent = 0 }
}
