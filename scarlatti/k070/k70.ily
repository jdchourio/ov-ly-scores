\version "2.18.2"

\header {
  title = "K70"
  tagline = ##f
}

global = {
  \key f \major
  \time 4/4
}

cstl=\change Staff="left"
cstr=\change Staff="right"

right = \relative c'' {
  \global

  \repeat volta 2 {
    bes16 f bes c d bes d ees f4 r8 bes,
    a16 c bes d c ees d f ees f c ees d f a, c

    bes d f, a g bes d, f ees' g bes, d c f a, c
    bes d f, a g bes a c bes f bes c d bes d ees

    f4 r8 bes, a16 c bes d c ees d f
    ees f c ees d f e g f a g bes a, c bes d

    c8[ c'] c,[ bes'] c,[ a'] c,[ g']
    f-! e-! d-! c bes' a g f

    e16 g c, b c g' c, b c g' c, b c g' c, bes
    bes g' bes, a bes g' bes, a bes g' bes, a bes g' a, g
    a f' a, g a f' a, g a f' a, g \stemDown a f' f, e

    g e' g, f g e' g, f g e' g, \stemNeutral f g d' c bes
    a f' d bes a g' g, e' f c a f g' c c, e

    f c a f g g' e c f c a f <<{ s8 d' } \\ { a16 f bes g }>>
    <<{ f'8[ d] f[ g] f[ g] a[ g] } \\ { a,16 f bes g a f bes g a f bes g c a bes g }>>
    <<{ f'8[ g] f[ e] f4 } \\ { a,16 f bes g a f bes g a4 }>> r4
  }
  
  \repeat volta 2 {
    f16 d f g a f a bes c4 r8 f,
    ees16 c ees f g c, g' a bes4 r8 g
    f16 d f g a f a b cis a cis d e cis e f

    g a e g f a cis, e d f a, c bes d f, a
    g bes e, g f a cis, e d' f a, c bes cis d e

    a, g' f e f d e cis d a d e fis d fis g
    a4 r16 fis g a d,8[ d'] d,[ c'] 
    d,[ bes'] bes,[ a'] bes,16 d fis, a g g' a, bes

    bes f' c ees d f e g f c' f, e f c' f, e
    f c' f, e f c' ees, d ees c' ees, d ees c' ees, d

    ees c' ees, d ees c' d, c d bes' d, c d bes' d, c
    d bes' d, c d bes' d, c c a' c, bes c a' c, bes

    c a' c, bes c g' f ees d bes' g ees d c' c, a'
    bes f d bes c f f, a bes' f d bes c f f, a
    
    bes d, c' ees, bes' d, a' c, bes' d, c' ees, d' f, c' ees,
    bes' d, c' ees, bes' d, a' d, <d f bes>4
  }
}
 
left = \relative c {
  \global

  \repeat volta 2 {
    bes4 r bes16 f bes c d bes d ees
    f8[ g] a f g a bes f

    g d ees bes c' g a f
    g[ d] ees[ f] bes,4 r

    bes16 f bes c d bes c ees f8 g a f
    g[ a] bes,[ c]

    d e! f g
    a16 c f, a g bes e, g f a d, f e g c, e
    a c g bes f a e g d f c e bes d c bes

    c4-\p c c r
    c-\f c c r
    c-\p c c r

    e, e e r8 e'
    f[ bes] c[ c,] f[ f,] c'[ c,]

    f4 c f r8 c
    f[ c] f[ c] f4 r8 c
    f[ c] f[ c] f4 r
  }

  \repeat volta 2 {
    r2 f'16 c f g a f a b
    c4 r g16 d g a bes g bes cis
    d4 r a16 e a bes cis a cis d

    e8[ cis] d[ a] bes[ f] g[ d]
    e[ cis] d[ a] bes[ f] g[ g]

    cis[ d] a'[ a,] d4 d16 a d e
    fis d fis g a c bes a bes d g, bes a c fis, a
    g bes e, g fis a d, fis g8[ d] ees[ f]

    g[ a] bes[ c] f,4-\p f
    f r f-\f f

    f r f-\p f
    f r f, f

    f r8 a' bes[ ees,] f[ f,]
    bes4 r8 f' bes,4 r8 f

    bes4 r8 f bes[ f] bes[ f]
    bes[ f] bes[ f] bes4
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
