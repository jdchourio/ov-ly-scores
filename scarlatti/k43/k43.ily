\version "2.18.2"

\header {
  title = "K43"
  meter = "Allegro assai"
  tagline = ##f
}

global = {
  \key d \minor
  \time 12/8
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
}

cstl=\change Staff="left"
cstr=\change Staff="right"

right = \relative c'' {
  \global

  \partial 8
  \repeat volta 2 {
    r32 d( ees f)
    \repeat unfold 3 {
      <<{ s4. a } \\ { g,4. ~ g4 fis8 } \\ { g'8 ees d c[ bes a] }>>
    }
    <<{ \appoggiatura { \once \slurDown a32 } bes4. } \\ { g }>>
    <<{ \cstr g'8 f ees d c bes bes\trill a g d4 d8 } \\ 
      { g fis ees d c \cstl bes bes a g d4 d8 }>>
    <<{ \cstr g''8 f ees d c bes bes\trill a g d4. } \\ 
      { g8 f ees d c \cstl bes bes a g d4. }>>
    bes'''8 g d

    ees4.\trill a8 c, a bes4.\trill d8 g, d
    e!4.\trill c'8 a fis g4. bes'8 g d
    f4( ees8) a c, a c4( bes8) d g, d
    f4 e!8 c' a fis

    \voiceOne g4. ~ g8 a16 bes c d 
    ees8 d c c bes a bes4. ~ bes8 a16 bes c d 
    ees8 d c c bes a bes4. ~ bes8 c16 d ees f
    g8 f ees ees\trill d c

    d4. ~ d8 ees16 f g a
    bes8 a g g f ees d4. ~ d8 e16 f g a32 bes
    c8 a f e f g gis4 a8 g a bes
    a f d cis d e

    e4 f8 a4. ~
    a8 bes g cis,4. ~ cis8 a' f d4. ~
    d8 bes' g cis,4. ~ cis8 a' f d4. ~
    <<{ d8 g f e d e } \\ { s e d cis bes cis }>> 
    \oneVoice f cis d \voiceOne a'4. ~

    a8 bes g cis,4. ~ cis8 a' f d4. ~
    d8 bes' g cis,4. ~ cis8 a' f d4. ~
    <<{ d8 g f } \\ { s e d }>> e d cis \oneVoice d4. <<{ a'8 d, a } \\ { d,4. }>>

    <<{ b'4.\trill g'8 e cis } \\ { <d, e>4. e }>> d' a8 f d
    bes' g e a d, cis d4. s4
  }
  
  \partial 2.
  \repeat volta 2 {
    d16 e fis g a bes32 c d4. ~
    \voiceOne d16( e fis g a bes) c4. ~ c bes8 a g
    \oneVoice f ees d ees4.\trill d \voiceOne f8 e d
    \oneVoice c bes a bes a g f4 f8 \voiceOne f'8 ees d

    d bes a bes a g f4. ~ f8. g32( a b c d e)
    <<{ f8 ees d c\trill b c b4.\trill c8\trill b c } \\
      { f,4. <c ees> <d f> <c ees> }>>
    <<{ d'8 ees f ees\trill d ees } \\ { <d, f>4. <c ees> }>> 
    \voiceOne d'4. ~ d16 g,32*10/7( a bes c d ees f)

    <<{ g8 f e d\trill cis d cis4.\trill d8\trill cis d } \\ 
      { g,4. <d f> <e g> <d f> }>>
    <<{ e'8 f g f\trill e f } \\ { <cis, e g>4. <d f> }>> 
    e'4. ~ e8 cis16 d e f32 g
    a4 g8 fis4. ~ fis8 g16 a bes c d4 c8

    bes4 a8 g f ees d c bes a bes c
    \oneVoice bes a g d'4. ~ d8 ees c fis,4. ~ 
    fis8 d' bes g4. ~ g8 ees' c fis,4. ~ 
    fis8 d' bes g4. ~ <<{ g8 c bes a g a } \\ { s a g fis e fis }>>

    bes a g d'4. ~ d8 ees c fis,4. ~
    fis8 d' bes g4. ~ g8 ees' c fis,4. ~
    fis8 d' bes g4. ~ <<{ g8 c bes a g fis } \\ { s a g }>>

    g8 a16( bes c32 d e fis) g4. ~ \voiceOne g8 bes a g f <ees fis>
    <<{ g4 s8 c,8 bes a s4. s4 fis!8 } \\ { d' c bes a g fis g bes a g fis ees }>>
    <<{ g4 s8 c, bes a \cstl g4. } \\ { \cstr d'8 c bes \cstl a g fis }>>
  }
}
 
left = \relative c {
  \global

  \partial 8
  \repeat volta 2 {
    s8 s1.*3 s2. s4.
    <bes g'>4.
    \repeat unfold 3 { <c g' bes> <d a'> <g, g'> <bes g'> }
    <c g' bes> <d a'>

    \cstr g'32*3/2 \cstl g, a bes c \cstr \voiceTwo d e fis g4. ~
    <c, g'> <d fis> bes'32*3/2 \cstl g, a bes c \cstr d e fis g4. ~
    <c, g'> <d fis> bes'32*3/2 \cstl g, a bes c \cstr d e fis g4. ~
    <ees g> <f a>

    d'32*3/2 bes, c d ees f g a bes4. ~
    <ees, bes'> <f a> d'32*3/2 bes, c d ees f g a bes4.
    <a c> <g bes> <f a> <g bes> 
    <f a> <e g>

    \cstl \oneVoice d,4. 
    \repeat unfold 2 {
      \cstr \voiceTwo a''8 f d
      \repeat unfold 2 { \cstl \oneVoice g,,4. \cstr \voiceTwo g''8 e cis \cstl \oneVoice f,,4. \cstr \voiceTwo a''8 f d }
      \cstl \oneVoice g,,4. a d,
    }

    f' g a d, <f a>
    <g, g'> <a a'> <d, d'> s4
  }

  \partial 2.
  \repeat volta 2 {
    d'4. ~ d16( e fis g a bes32 c)
    \cstr \voiceTwo d4. ~ d16( e fis g a bes) c8 bes a g f ees
    \cstl \oneVoice d c bes c a f bes,4. \cstr \voiceTwo f''8 ees d
    \cstl \oneVoice c bes a bes a g f4 f8 \cstr \voiceTwo f'8 ees d
    
    \cstl \voiceTwo c bes a bes a g f8*3/2 g32 a bes \cstr c d e f4.
    \cstl \oneVoice g,4. g g g
    <g b> \voiceTwo g ~ g8*3/2 a32 b c \cstr d e fis s16 g4.*5/6

    \cstl \oneVoice a,4. a a a
    a \voiceTwo a ~ a16 c!32*10/6 \cstr cis! d e f g a4 g8
    fis a e d16 e32*10/6 fis g a bes c d4 c8 bes d a

    g bes f ees d c \cstl \oneVoice bes a g fis e d 
    g,4. d''8 bes g c,,4. c''8 a fis
    bes,,4. d''8 bes g c,,4. c''8 a fis
    bes,,4. d''8 bes g c,,4. d

    g d''8 bes g c,,4. c''8 a fis
    bes,,4. d''8 bes g c,,4. c''8 a fis
    bes,,4. d''8 bes g c,,4. d

    g ~ g8 a16( bes c32 d e fis) g8 \cstr \voiceTwo g' f ees d c
    \cstl \oneVoice bes a g c,4 d8 g, g' f ees d c 
    bes a g \voiceTwo c,4 d8 g4.

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
