\version "2.16.2"

\header {
  title = "K93"
  meter = "FUGA"
}

global = {
  \key g \minor
  \time 4/4
}

rightOne = \relative c' {
  \global
  
  R1*3 | d2 g | f4 d bes2-\trill | a8 b cis d e f g e | f2 e4 fis | g2 d' |
  bes4 g ees2-\trill | d8 e fis g a bes c a | bes2 a-\trill | g8 a bes c d ees f d | 
  <c ees>2 <bes g'> | <a f'>4 d bes2-\trill | a8 b cis d << { e4 s } \\ { e8 g, f e } >> |
  << { d'8 a d c bes a bes g } \\ { f4 s2. } >> |
  a8 g f e d e f g | a4. b8 cis d e cis | d4 c bes8 c d e | f4 ees d8 ees f d |

  c bes a g f ees d c | bes c d ees f2 | ees8 f g a bes2 | f' d4 bes |
  g2-\trill f8 g a bes | c d ees c << { d2 c ees } \\ { bes2 a c } >> |
  d8 c bes a g f << { g4 a8 bes c a bes c d bes } \\ { ees, d c d e fis g4 s }>> |
  a8 g fis e << { d'8 c bes a } \\ { d,4 s }>> | g8 bes a g fis g a bes |
  << { c2 bes8 c d e f2 } \\ { c,8 d e fis g4 s  a2 }>> e'8 d cis b |
  a g f e d'2 | g f4 d  | bes2-\trill a8 b cis d | << { e4 s2. } \\ { e8 g, f e f a d c } >> |
  << { bes2 } \\ { r8 cis, d e } >> a g f e | d e f g a2 | g8 a b cis d4 c |
  << {g'4 f ees d f ees } \\ { g8 b, c d c4 bes f'8 a, bes c} >> d ees f g |
  c, d ees f << { g4 f ees8 d c ees d c b a } \\ { g'8 b, c d g,4 s2.} >> |

  << { g'8 f ees d } \\ { g,4 s } >> c8 ees d c  | b c d4 ~ d8 c b d | c2 g' | ees4 c a2-\trill |
  bes f' | d4 bes g2-\trill | a8 bes c a bes c d g, | fis a d c bes d bes g | 
  << { a'8 g f e } \\ { a,4 s } >> d8 f e d | cis d e4 ~ e8 d cis e |
  d e << { f2 g4 a a g2} \\ { f8[ e d c] bes4 c f e2 } >> | 
  << { bes'2 a8 g f e } \\ { g2 f4 s } >> | << { d2. cis4 } \\ { d8 c bes a g f e g } >> |
  << { d'4 a4 d8 c bes a } \\ { fis8[ g] } >> |
  << { g'8 f ees d s4 c4 ~ c d8[ c bes a] g4 ~ g a bes8 c d bes } \\ 
  { g4 s c8 bes a g fis e d4 s g8[ f ees d] c4 d s } >> | a'8 g fis e d c bes a |
  g a bes c d4 e | fis8 g a fis g a bes c | d4 c b8 c d ees | f, g a b c d ees f |
  g4. f8 e des c bes |

  << { f'4. ees8 } \\ { aes,8 g f4 } >> des'8 c bes aes |
  << { c4. bes8 f'4. ees8 } \\ { g,8 f e4 aes8 g f4 } >> |
  d'8 c bes aes << { g'2 f aes g bes } \\ { ees, d f ees g } >> |
  a8 g fis ees d c bes a | g fis g4. <a c>8 <g bes> <fis a> |
  \override Beam #'auto-knee-gap = #12
  \change Staff = "left" \once \override Beam #'positions = #'(13 . 12) g,
  \change Staff = "right" <g' bes> <f a> <e g> 
  \change Staff = "left"\once \override Beam #'positions = #'(13 . 12) f, 
  \change Staff = "right"  <f' a> <e g> <d f> |
  \change Staff = "left" \once \override Beam #'positions = #'(13 . 12) e,
  \change Staff = "right" <e' g> <d f> <cis e> << { f a d4 ~ d8 cis d e } \\ { d,4. a'8 bes2 } >> a4 a'  |
  << { g8 f e d cis d e f } \\ { bes, a g f e4 s } >> |
  << { g'2 f8 e d c16 bes } \\ { g8 a b cis d4 s } >> |
  a4 g << { d'2 } \\ { fis,8 g a bes } >> |
  << { ees2 d4 g ~ g fis g8 f ees d } \\ { c8 bes c a bes a bes g c ees d c bes a g f } >> |
  << { c' bes a g fis4 g8 a } { ees8 d c bes a4 bes8 c } >> |
  << { bes'4 c8 d ees4 f8 g } { d,4 ees8 f g4 a8 bes } >> |
  << { a'4 bes8 a bes a g f } { c4 d8 c d c bes a } >> |
  << { ees'8 d c bes a4 b8 c } { g8 f ees d c4 d8 ees } >> |
  << {d'8 c4 b8 c4 } { f,8 ees4 d8 c4 } >> d'8 ees |
  << { f8 ees4 d8 } { d8 c4 b8 } >> << { ees8 d c bes } \\ { c4 s } >> |
  << { f4. e8 d4 } \\ { a8 g f2 } >> << { cis'8 d } { e, f } >> |
  << { e'8 d4 cis8 d4 } { g,8 f4 e8 d4 } >> e'8 f |
  << { g8 f4 e8 fis4 g8 a } { e8 d4 cis8 d4 e8 fis } >> |

  bes8 a g f << { c'4. bes8 } \\ { ees,8 d c4 } >> | 
  a'8 g f ees << { bes'4. a8 } \\ { d,8 c bes4 } >> | 
  g'8 f ees d << { a'4. g8 } \\ { c,8 bes a4 } >> | 
  fis'8 ees d c << { g'4. f8 } \\ { bes,8 a g4 } >> | 
  
  << { ees'8 d c bes a4 d8 c } \\ { c8 bes a g fis e d4 } >> | 
  bes'8 a g bes << { a8 c bes a } \\ { a4 g8 fis } >> | 
  << { g'2 fis8 a g fis } \\ { bes,8 a g bes a c bes a } >> | 
  g2 d' | 
  
  bes4 g ees2-\trill | 
  << { d8 e fis g a bes c a } { s8 s d, e fis g a fis } >> | 
  << { bes c d e fis g a fis } { g, a bes g a bes c a } >> | 
  << { g' a bes g a bes c a } { bes, c d e fis g a fis } >> | 
  
  << { bes a g bes a g fis a } { g f ees d c ees d c } >> | 
  << { g' f ees d cis e d c } { bes a g bes a g fis a } >> | 
  << { bes a g bes a g fis a } { g f ees d c ees d c } >> | 
  << { g' f ees d cis e d c } { bes a g bes a g fis a } >> | 
  
  << { bes c d e fis g a fis } { g, a bes c d ees d c } >> | 
  << { g' a bes g a bes c a  } { bes, c d e fis g a fis } >> | 
  << { bes c d e fis g a fis } { g, a bes g a bes c a } >> | 
  << { g'8 d ees4 d c } \\ { bes4 c8 a bes g a fis } >> | 
  
  << { bes4. c8 bes g a fis } \\ { g8 d ees4 d c } >> | 
  << { g'1 ~ g2 ~ g8 a g fis } \\ { b,8 c d4 ~ d8 c4. ~ c8 ees d c b c b a } >> | 
  <b d g>1\fermata \bar "|."
}

left = \relative c' {
  \global
  
  g2 d' | bes4 g ees2-\trill | d8 e fis g a bes c a | bes c bes a g a b cis |
  d c bes a g f e d | cis4 a a a  | d8 e f g a bes c a | bes g bes c d d, e fis |
  g f ees d c bes a g | fis4 d d d | g8 a bes c d e f d | ees2 d-\trill |
  c8 d ees f g a bes c | d c bes a g f e d | cis4. b8 a4 r | d2 g |
  f4 d bes2-\trill | a8 b cis d e f g e | f d e f g2 | a8 f g a bes2 |

  f' d4 bes | g2 f8 g a bes | c2 d8 bes d ees | f f, g a bes a g f | 
  ees d c bes a4. g8 | f f'g a bes c d ees | f f, a b c d ees f | g4. f8 ees d c bes |
  a2 g | d' bes4 g | ees2-\trill d8 e fis g | a bes c d g,2 | 
  d8 e f g a4. b8 | cis4 a bes8 a g f | e f g a d, e f d | g f e d cis4. b8 | 
  a2 d | g f4 d | bes2-\trill a8 b cis d | e2 fis8 d e fis |
  g g, a b c c' d ees | f f, g a bes2 | aes g8 g, a b | c2 g' |

  ees4 c aes2-\trill | g8 a b c d e f d | ees c ees f g g, a b | c d ees c f g f ees | 
  d bes d ees f f, g a | bes c d bes ees f ees d | c d e fis g a bes c | d2 g | 
  f4 d bes2-\trill | a8 b cis d e f g e | f e d c bes a g c | f, g a bes c d e fis | 
  g g, bes c d4. c8 | bes a g f e4 a | d, d'8 c bes a g f | ees d c bes a4 a' | 
  d8 c bes a g f ees d | c bes a d g,2 | d' bes4 g | ees2 d8 e fis g | 
  a bes c a bes c d e | fis g a fis g a b c | d ees f g aes2 | g8 f e d c bes aes g |

  f' ees des c bes aes g f | e d c e f g aes f | bes c d bes ees ees, f aes | 
  bes bes, d ees f g aes bes | \clef treble c d ees f g a bes c | d4. c8 bes a g f | 
  ees d c bes a4 d | \clef bass g,4 c f, bes | e, a d,2 | g f8 e d c | bes2-\trill a8 b cis d | 
  e f g e f4. g8 | a b cis a d e fis g | \clef treble << { a8 g a fis g4 s } \\ { c,2 bes4 ees } >> | 
  \clef bass a, d g,2 | r2 d8 c bes a | g' f ees d c' bes a g  | f ees d c bes2 | 
  ees f8 g f ees | d4 g aes8 g f ees | d4 g << { c8 bes a g } \\ {c,4 s } >> | 
  << { f'8 ees d c } \\ { f,4 s } >> bes8 a g f | e4 a bes8 a g f | e4 a d8 c bes a |

  << { g'8 f ees d } \\ { g,4 } >> \clef treble << { c'8 bes a g } \\ { c,4 s } >> |
  f8 ees d c << { bes'8 a g f } \\ { bes,4 s } >> | ees8 d c bes << { a'8 g fis e } \\ { a,4 s } >> |
  \clef bass d8 c bes a g f ees d | c2 d8 c bes a | g2 d' | g d' ~ | d8 ees d c d c bes a |
  g f ees d c bes a g | fis4 d d d | d2 d2 | d2 d2 | d2 d2 | d2 d2 | d2 d2 | d2 d2 | d2 d2 | 
  d2 d2 | g d' | g4  <c, c'> <d bes'> <d a'> | g c, d d, | << { r4 g'8 f ees4 d8 c } \\ { g2 g } >> |
  << { d'2 d } \\ { g, g } >> | < g d' g>1\fermata \bar "|."
}

breaks = {
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break
}

#(set-global-staff-size 18)

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      %<< 
      %  \breaks
        \rightOne 
      %>>
    }
    \new Staff = "left" { 
      \clef bass \left 
    }
  >>
  \layout { }
}
