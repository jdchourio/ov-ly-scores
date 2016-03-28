\version "2.18.2"

\header {
  title = "K60"
  tagline = ##f
}

global = {
  \key f \major
  \time 3/4
  %\override Staff.NoteCollision #'merge-differently-dotted = ##t
}

cstl=\change Staff="left"
cstr=\change Staff="right"

right = \relative c''' {
  \global

  \repeat volta 2 {
    g4 g,8 f' ees c
    d bes c a bes[ g]
    fis g a4 
    <<{ s4 s8 c bes4. a8 } \\ { d,4 ~ d8 a' g4. fis8 }>>
    bes8 g ees'4. f,8
    d' bes f'4. g,8

    ees' c g'4. a,8
    f' d a'4. d,8
    cis d e4
    <<{ s4 s8 g f4. e8 } \\ { \once \stemUp a,4 ~ a8\noBeam e' d4. cis8 }>>
    <<{ f4. f8 ees4 } \\ { d4. d8 c4 }>>
    <<{ d4 } \\ { b8[ g] aes[ f] d'[ g,] }>>
    <<{ ees'4. ees8 d4 } \\ { c4. c8 bes[ g] }>>
    <<{ c4 bes a } \\ { a8[ d,] g[ d] g[ e] }>>

    fis8 g a4
    \repeat unfold 2 {
      <<{ s4 s8 c bes4 ees d } \\ 
        { \stemUp d,4 ~ d8\noBeam \stemDown a' g4. a16 g fis8 g a4 }>> }
    <<{ r8 d ~ d c bes4 bes8.\trill a32 bes } \\ { d,4 }>>	
    <<{ a'8 g16 a bes8 fis bes4 } \\ { s2 g8 e }>>

    <<{ a'4 g fis } \\ { fis8[ d] ees[ c] d[ a] }>>
    <<{ g'4 fis g } \\ { bes,8[ g] c[ a] bes[ g] }>>
    <<{ <d' fis a>4 q } \\ { a a }>> r
  }
  
  \repeat volta 2 {
    bes'4 bes,8 a' g ees
    f d ees c d bes
    a bes c4 
    <<{ s4 s8 ees d4. c8 } \\ { \once \stemUp f,4 ~ f8 c' bes4. a8 }>>
    <<{ d8 e! f4. ees8 } \\ { s4. c8 bes4 }>>

    f'8[ c] des[ bes] c[ g]
    aes8.\trill g16 f4 
    <<{ s4 s8 f'8 ees4. d8 } \\ { c4 ~ c8 d c4. b8 }>>
    <<{ ees4 d c } \\ { c }>>
    <<{ s4 s ees } \\ { d8^\trill c16 d ees8[ b] c[ a] }>>
    <<{ d4 c b } \\ { b8[ g] aes[ f] g[ d] }>>
    <<{ <g c>4 <g b> <g c> } \\ { ees8[ c] f[ d] ees[ c] }>>

    <<{ <g' b d>4 q } \\ { d d }>> g' 
    f ees d
    c d c
    <<{ s4 s ees } \\ { bes8^\trill a16 bes c8 bes a g }>>
    <<{ d'4 s \once \stemDown c ~ c8 bes a g cis4 } \\ 
      { fis,8 g a bes s4 d, s fis8 e }>>
    <<{ bes'2 } \\ { d,8 fis16 g a4 }>> g ~

    g8 fis16 g a4 g ~
    g8 a16 bes <<{ <a c>4 <g bes> ~ q8 } \\ { fis4 d ~ d8 }>>
    a'16 bes <<{ <g c>4 <g bes> } \\ { fis d }>>
    <<{ r8 a''4 g fis8 } \\ { <c e>4 <bes d> <a c> }>>
    <<{ g'2 ~ g8 a } \\ { bes, a16 bes c8 d e fis }>>
    <<{ d8 a16 bes c8 d e fis }\\ { g,2 ~ g8 a }>>

    <<{ g'2. } \\ { bes,4 g c ~ c8 bes16 c d8 }>>
    g,4 fis8
    r8 g' d bes g fis'
    <<{ <bes, d g>4 q } \\ { g g }>> r
    
  }
}
 
left = \relative c {
  \global

  \repeat volta 2 {
    g2 g'4
    fis4. fis8 g4
    d' d,8 c' bes g
    a fis g c, d d,
    g4. g'8 a f
    bes4 r8 a b g

    c4 r8 b cis a
    d4. c8 bes4
    a a,8 g' f d
    e cis d g a a,
    d d' b g c c,
    g'4 f b,
    c8 c' a f bes4
    fis g cis,

    d4 d,8 c' bes g
    a fis' g, g' c,4
    d d,8 c' bes g'
    a, fis' g, g' c,4
    d d,8 c' bes g'
    a, fis' <<{ g4 g } \\ { g, cis }>>
    <d, d'>4 r r

    q r r
    q q q
    q4. c'8 bes a
  }

  \repeat volta 2 {
    bes2 bes'4
    a4. a8 bes4
    f'4 f,8 ees' d bes
    c a bes ees, f f,
    bes4. aes'8 <<{ bes4 } \\ { g }>>

    <<{ c4 s c } \\ { aes bes e,! }>>
    c'4 r8 f ees c
    d b c f, g g,
    c[ aes'] bes,[ g'] aes,[ f']
    g,4 r r
    g r r
    g g g

    g4. f'8 ees c'
    d,[ b'] c,[ a'] bes,[ g']
    a,[ fis'] bes,[ g'] a,[ fis']
    g,4 c <c c'> ~ 
    c'8 bes a g fis e
    d,4 d d
    d r8 d' ees c

    d,4 r8 d' g g,
    d4 r8 d' g g,
    d4 r8 d' g g,
    c4 d d,
    g r r
    g r r

    g8 a16 bes c8 d e fis
    g a bes c d d,
    g,4 g g
    g r r
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
