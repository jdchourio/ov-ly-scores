\version "2.18.2"

\header {
  title = "K462"
  meter = "Andante"
  tagline = ##f
}

global = {
  \key c \minor
  \time 3/4
}

cstl=\change Staff="left"
cstr=\change Staff="right"

right = \relative c'' {
  \global

  \repeat volta 2 {
    f2.
    e8( f2) \voiceOne r8
    aes( g2) r8 \oneVoice
    <<{ r8 c aes f c8[ aes] } \\ { f4 f f }>>
    <<{ des'8 f e g bes,[ g] } \\ { f4 s e }>>

    <<{ aes8 c' aes f c[ aes] } \\ { f4 }>>
    des'8 f e g bes,[ g]
    aes f' c aes f[ c]
    \voiceTwo des \cstl \voiceOne bes aes \cstr \voiceTwo f' \cstl \voiceOne g, \cstr \voiceTwo e'
    r f[ \cstl \voiceOne c aes] f s \cstr 
    \voiceOne r4 \oneVoice aes''16 g f8 c'4 ~

    c16 bes aes8 g f4 ees8
    r4 f16 ees des8 aes'4 ~
    aes16 g f8 ees des4 c8
    r4 des16 c bes8 
    <<{ bes'4 ~ bes8 bes aes16 g f8 ~ f16 ees d8 } \\ { des4 c2 b4 }>>

    r4 ees16 d c8
    <<{ c'4 ~ c8 c b16 aes g8 f16 ees d8 ~ d ees f16 ees d8 c16\prall b c8 } \\
      { ees4 d g, g g f f }>>
    \voiceOne \acciaccatura c'8 d4 d r \oneVoice
    r8 bes' aes\prall g f\prall e

    <<{ f4 f f } \\ { r8 bes, aes g f e }>>
    r8 <<{ aes' g f ees d c4 c c } \\ { f8 ees d c b r aes g f ees d }>>
    r8 g' f ees d c
    <<{ d f ees d c b } \\ { d aes g f ees d }>>
    c'8 \grace { g'16 aes } bes8 aes g f e
    <<{ f4 f f } \\ { r8 \grace { g,16 aes } bes8 aes g f e }>>

    r8 <<{ \grace { f'16 g } aes8 g f ees d c4 c c } \\ 
         { f8 ees d c b r \grace { f16 g } aes8 g f ees d }>>
    r8 \grace { ees'16 f } g8 f ees d c
    <<{ d f ees d c b } \\ { d aes g f ees d }>>
    <<{ c' g ees f g aes } \\ { c,8 }>>
    <<{ g' c b c d b } \\ { g ees d ees f d }>>

    <<{ c'8 g ees\prall f g aes } \\ { ees8 }>>
    <<{ g8 ees' d ees f d } \\ { s c b c d b }>>
    <<{ ees8 } \\ { c g ees^\prall f g aes }>>
    <<{ s c' b c d b } \\ { g, ees' d ees f d }>>
    <<{ c' bes aes g f ees } \\ { ees d c bes aes g }>>
    <<{ d'16 ees f8 ees d c b c2. } \\ { f,4 g8 f ees d c2. }>>
  }
  
  \repeat volta 2 {
    r8 \appoggiatura { c'16 des } ees8 des c bes aes
    g aes g aes g aes
    r ees' des c bes aes
    a bes a bes a bes
    r \appoggiatura { des16 ees } f8 ees des c bes
    b c b c b c

    r ees des\prall c des ees
    f aes g aes bes aes
    g f ees des c bes
    aes\prall g aes bes c d
    <g, ees'>4 r r
    s2.

    <<{ r8 ees' des\prall c des ees } \\ { aes,4 aes aes }>>
    <<{ f'8 g aes bes a g } \\ { f bes, c des c bes }>>
    <<{ aes' ees des\prall c des ees } \\ { c4 }>>
    <<{ f8 g aes bes a g } \\ { f bes, c des c bes }>>
    <<{ c' bes aes g f ees } \\ { ees des c bes as g }>>
    <<{ ees' des des c c bes } \\ { aes4 aes g }>>

    <<{ r8 ees' d ees f ees
    	d2. ~ 
	d8 f e f g f
	e2.
	f2 bes,4 } \\
      { aes2. ~
        aes8 aes g aes bes aes
	g2. ~
	g8 c bes c des c
	bes aes g f e f }>>
    <e g c>4 r r
    r8 ees' des c bes a

    bes4 bes bes
    r8 <<{ des c bes aes g } \\ { bes aes g f e }>>
    f4 f f
    r8 c' bes aes g f
    <<{ f'2 e4 } \\ { f8 des c bes aes g }>>
    f' \grace { c16 des } ees8 des c bes a

    bes4 bes bes
    r8 <<{ des c bes aes g } \\ { bes aes g f e }>>
    f4 f f
    r8 \grace { aes16 bes } c8 bes aes g f
    <<{ f'2 e4 } \\ { f8 des c bes aes g }>>
    f' c aes bes c des

    <<{ c f e f g e } \\ { c aes g aes bes g }>>
    <<{ f' c aes bes c des } \\ { aes }>>
    <<{ c aes' g aes bes g } \\ { s f e f g e }>>
    <<{ aes } \\ { f c aes bes c des }>>
    <<{ s f' ees des c bes } \\ { c, aes' g f e des }>>
    <<{ aes' g f e f c } \\ { c bes aes g f4 }>>
    <<{ des'8 bes c4 } \\ { f,4 aes8 f g e }>>
    f2.
  }
}
 
left = \relative c {
  \global

  \repeat volta 2 {
    r4 f aes
    r bes \cstr des
    r8 e g des \cstl bes g
    aes4 aes aes
    aes c s 

    s f, aes
    bes c e,
    f g aes
    \stemDown bes, c \stemNeutral c,
    f2 ~ f8 \cstr e''^\markup { \italic "M" }
    \voiceTwo f \cstl \oneVoice f,4 g8 aes b

    c4 c, c'
    des8 des,4 ees8 f g
    aes4 aes, aes'
    bes8 bes,4 c8 des e
    f4 f' g,

    c8 c,4 d8 ees fis
    g4 g g
    aes aes aes
    \cstr \voiceTwo r8 g' d \cstl \voiceOne b g d
    \oneVoice g,4 r r

    s2. 
    f4 f f
    s2.
    ees4 ees ees
    f g g
    c, r r
    s2.

    f4 f f
    s2.
    ees4 ees ees
    f g g 
    c,8 g'' ees f g aes
    g4 g, g

    c,8 g'' ees f g aes
    g4 g, g
    c,8 g''ees f g aes
    g4 g, g
    c d ees
    f g g,
    c2.
  }

  \repeat volta 2 {
    <c' ees>4 q q
    <des f> q q
    <c ees> q q
    <des f> q q
    <g, des' ees> q q
    <aes ees'> q q

    <c, aes'> q q
    <des aes' bes> q q
    <ees bes'> q <ees ees'>
    <f ees'> <f d'> <f d' f>
    r8 <<{ ees^\markup { \italic "M" } ees f g aes 
    	   \change Staff="right" bes c des ees f g } \\
	 { ees,, ees f g aes bes c d ees f g }>>

    aes4 aes aes
    <des, des'> <ees ees'> q
    <aes, aes'> <c aes'> q
    <des des'> <ees c'> <ees bes'>
    <aes, aes'> <bes bes'> <c c'>
    <des des'> <ees ees'> q

    <f aes> q q
    <bes, aes'> q q
    <b g'> q q
    <c c'> q q
    <des c'> <des bes'> q
    c8 c' g e c g
    c,4 r r

    r8 ees''^\markup { \italic "M" } des c bes a
    bes,,4 bes bes
    r8 des''^\markup { \italic "M" } c bes aes g
    aes,,4 aes aes
    bes c c 
    f r r

    r8 \grace { c''16 des } ees8 des c bes a
    bes,,4 bes bes
    r8 \grace { bes''16 c } des8 c bes aes g
    aes,,4 aes aes
    bes c c 
    
    \repeat unfold 3 { 
      \once \stemUp f8 c'' aes bes c des
      c4 c,, c
    }
    f g aes
    bes c c,
    f2. 
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
