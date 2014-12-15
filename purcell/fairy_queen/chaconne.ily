\version "2.18.2"

\header {
  title = "Chaconne"
  subtitle = "Dance for chinese man and woman"
  tagline = ##f
}

global = {
  \key c \major
  \time 3/4
}

violinI = \relative c'' {
  \global
  e4 e4. f8
  d4 d4. e8
  f4 f4. g8
  e4 e4. f8
  g4 g4.-\parenthesize\trill( f16 g)
  a4 a4. g8
  f e f e d c
  
  b4 g4. d'8
  e4 e4. f8
  d4 d4. e8
  f4 f4. g8
  e4 e4. f8
  g4 g4.-\parenthesize\trill( f16 g)
  a4 a8 g f e
  d c c4. b8
  
  c4 c2
  e8.[ d16 c8. d16 e8. f16]
  d8.[ c16 b8. c16 d8. e16]
  f8.[ e16 d8. e16 f8. g16]
  e8.[ d16 c8. d16 e8. f16]
  g8.[ f16 e8. d16 c8. b16]
  
  
  a8.[ b16 a8. c16 b8. d16]
  c8.[ d16 c8. e16 d8. c16]
  b8. a16 g4 g'8. f16
  e8.[ d16 c8. d16 e8. f16]
  d8.[ c16 b8. c16 d8. e16]
  f8.[ e16 d8. e16 f8. g16]
  
  e8.[ d16 c8. d16 e8. f16]
  g8.[ f16 e8. f16 g8. e16]
  a8.[ g16 f8. g16 e8. f16]
  d8.[ e16 c8. d16 b8. d16]
  c4 c r8 g'^\markup { \fontsize #-3 \note #"16" #1 }
  e4 c r8 e8^\markup { \fontsize #-3 \note #"16" #1 }
  
  d4 b r8 g'^\markup { \fontsize #-3 \note #"16" #1 \italic "(et sim.)" }
  f4 d r8 f
  e4 c r8 a'
  g4 e r8 e
  c4 a r8 b
  c4 c4.-\parenthesize \trill( b16 c)
  
  
  d4 d r8 g
  e4 c r8 e
  d4 b r8 g'
  f4 d r8 f
  e4 c r8 a'
  g4 e r8 e
  
  c4 a r8 d
  b4 g r8 b
  c4 c2
  r4 e8 d e4
  r d8 c d4
  r f8 e f4
  r e8 d e4
  
  r g8 f e d
  c4 a'8 g f e 
  d c b4. a8
  a4 a'8 g a4
  r g8 f g4
  r d8 c d4
  r f8 e f4
  
  
  r e8 d e4
  r g8 f g4
  r f8 e f4
  e8 d d4. c8
  c4 c4. c8
  g4 g4. a8
  bes4 bes4. c8
  
  a4 a4. b!8
  c4 c4. d8
  b4 b4. c8
  d4 d4. d8
  d e f e d c
  g'4 g4. g,8
  g4 g4. a8
  bes4 bes4. c8
  
  a4 a4. b!8
  c4 c4. d8
  b4 b4. c8
  d4 d8. e16 d( e f8)
  e8. d16 d4. c8
  c4 c4. d8
  e4 e^\markup { \fontsize #-3 \note #"4.." #1 } r8 e^\markup { \fontsize #-3 \note #"16" #1 }
  
  
  e4 d e16( f g8)
  g4 f4. f8
  f4 e f16( g a8)
  a4 g4. g8
  g4 a8 g f e
  
  d[ c] f e d c
  b4 g d'16( e f8)
  f4 e4. e8^\markup { \fontsize #-3 \note #"16" #1 }
  e4 d e16( f g8)
  g4 f4. f8
  
  f4 e f16( g a8)
  a4 g4. g8
  g4 a8 g f e
  d c c4. b8
  c4 c4. d8
  
  
  e8 e16 f g8.[ e16 c8. d16]
  b8 b16 c d8.[ b16 g8. g'16]
  f8 f16 g a8.[ f16 d8. e16]
  c8 c16 d e8.[ c16 a8. a'16]
  g8 g16 a bes8.[ g16 c8. bes16]
  
  a8 a16 bes a8.[ g16 f8. e16]
  d8. c16 b4. c8
  d4 d4. g8
  e8 e16 f g8.[ e16 c8. d16]
  b8 b16 c d8.[ b16 g8. g'16]
  
  f8 f16 g a8.[ f16 d8. e16]
  c8 c16 d e8.[ c16 a8. a'16]
  g8 g16 a bes8.[ g16 c8. bes16]
  a8 a16 bes a8.[ g16 f8. e16]
  d4 d4. c8
  c4 c2 \bar "|."
}

violinII = \relative c'' {
  \global
  c4 c4. d8
  b4 b4. c8
  a4 a4. b8
  c4 c4. c8
  c4 c4. c8
  c4 d b
  c c a
  
  d,4 d4. b'8
  c4 c4. d8
  b4 b4. c8
  a4 a4. b8
  c4 c4. c8
  c4 c4. c8
  c4 d8 e d c
  b a g4. g8
  
  g4 g2
  c8.[ b16 a8. b16 c8. d16]
  b8.[ a16 g8. a16 b8. c16]
  a8.[ c16 b8. c16 d8. b16]
  c8.[ b16 a8. b16 c8. d16]
  b8.[ d16 c8. b16 a8. g16] \noBreak
  
  e8.[ g16 f8. e16 d8. f16] \noBreak
  e8.[ f16 e8. g16] fis8 e16 fis]
  g8.[ a16 b8. c16 d8. b16]
  c8.[ b16 a8. b16 c8. d16]
  b8.[ a16 g8. a16 b8. c16]
  a8.[ c16 b8. c16 d8. b16]
  
  c8.[ b16 a8. b16 c8. d16]
  c8.[ d16 c8. d16 e8. d16]
  c8.[ e16 d8. e16 c8. d16]
  b8. a16 a4.f8
  e4 e r8 e'^\markup { \fontsize #-3 \note #"16" #1 }
  c4 g r8 c^\markup { \fontsize #-3 \note #"16" #1 }
  
  b4 g r8 d'^\markup { \fontsize #-3 \note #"16" #1 \italic "(et sim.)" }
  d4 a r8 d
  c4 a r8 e'
  e4 b r8 c
  a4 a r8 g
  g4 fis4. fis8
  
  
  g4 g r8 d'
  c4 g r8 c
  b4 g r8 d'
  d4 a r8 d
  c4 a r8 e' 
  e4 b r8 c
  
  a4 a r8 a
  g4 g r8 f
  e4 e2
  r4 c'8 b c4
  r b8 a b4
  r a8 g a4
  r c8 b c4
  
  r e8 d c b
  a4 f'8 e d c
  b a gis4. a8
  a4 f'8 e f4
  r e8 d e4
  r b8 a b4
  r d8 c d4
  
  
  r c8 b c4
  r e8 d e4
  r d8 c d4
  c b8.[ a16 g8. f16]
  e4 e4. d8
  ees4 ees4. f8
  d4 d4. e!8
  
  f4 f4. g8
  e4 e4. fis8
  g4 g4. g8
  a4 a b
  c c4. c8
  c4 b4. d,8
  ees4 ees4. f8
  d4 d4. e!8
  
  f4 f4. g8
  e4 e4. fis8 
  g4 g4. g8
  a4 b c
  c b4. c8
  c4 g a8 b
  c4 c4. c8^\markup { \fontsize #-3 \note #"16" #1 }
  
  
  c4 b4. b8
  b4 a b16( c d8)
  d4 c4. c8
  c4 b c16( d e8)
  e4 d8 b c b
  
  a4. d,8 e fis
  g4 g4. d'8
  d4 c4. c8^\markup { \fontsize #-3 \note #"16" #1 }
  c4 b4. b8
  b4 a b16( c d8)
  
  d4 c4. c8 
  c4 b c16( d e8) 
  e4 d4. c8
  b a g4. g8
  g4 g2
  
  
  g4 g g
  g8 g16 a b4 b
  a a4. a8
  a a16 b c4 c
  c c4. c8
  
  c8.[ d16 c8. b16 a8. g16]
  f4 fis4. e16 fis
  g4 g4. g8
  g4 g4. g8
  g8 g16 a b4 b
  
  a4 a4. a8
  a a16 b c4 c
  c c c
  c8 d e d c4
  c b4. c8
  c4 c2 \bar "|."
}

viola = \relative c'' {
  \global
  g4 g4. g8
  g4 g4. g8
  f4 d4. d8
  e4 a4. a8
  g4 g4. g8
  g4 f e8 d
  c4 e fis
  
  g4 b,4. g'8
  g4 g4. g8
  g4 g4. g8
  f4 d4. d8
  e4 a4. a8
  g4 g4. g8
  g4 f4. f8
  f4 e4. d8
  
  e4 e2
  g4 r g
  g d d
  d r a'
  a e e
  e c c
  
  
  c4 a g'
  g c, a'
  d,4. c8 b8. a16
  g4 r g'
  g d d
  d r a'
  
  a e e
  e4. d8 c8. b16
  a2 a'4
  g8.[ f16 e8. f16 e8. d16]
  c4 g2
  g'4 e r8 g^\markup { \fontsize #-3 \note #"16" #1 }
  
  g4 d r8 b'^\markup { \fontsize #-3 \note #"16" #1 \italic "(et sim.)" }
  a4 f r8 a
  a4 e r8 c'
  b4 g r8 g
  g4 c, r8 e
  e4 a4. a8
  
  
  b,4 b r8 b'
  g4 e r8 g
  g4 d r8 b'
  a4 f r8 a
  a4 e r8 c'
  b4 g r8 g
  
  g4 f r8 f
  f4 e4. d8
  c4 c2
  c'8 b c4 r
  g8 f g4 r
  d8 c d4 r
  a'8 g a4 r
  
  e8 d e4 r
  f8 e f4 g
  d e e,
  a2.
  c8 b c4 r
  g'8 f g4 r
  d8 c d4 r
  
  
  a'8 g a4 r
  e8 d e4 r
  f8 e f4 r
  g8 f g4 g,
  c c2
  R2.
  r4 g g
  
  d'4 r r
  r a a
  e' r r
  r f f
  f c f
  e8( d) g,4 g
  c r r
  r g g
  
  d' r r
  r a a
  e' r r 
  d g c,
  g' f4. e8
  e4 e4. f8
  g4 g4. g8^\markup { \fontsize #-3 \note #"16" #1 }
  
  
  g4 g d
  d d a
  a a' e
  e e8( d) c b
  a2 a4
  
  a b4. c8
  d4 d4. b8
  g4 g'4. g8^\markup { \fontsize #-3 \note #"16" #1 }
  g4 g d
  d d a
  
  a a' e
  e e8 d c b
  a4. b8 c4
  g' d4. e16 f
  e4 e2
  
  
  c8 c16 d e4 e
  d d d
  d8 d16 e f4 f
  f e e
  e8 e16 f g4 g
  
  g f b,
  c d4. c8
  b4 b b
  c8 c16 d e4 e
  d d d
  
  d8 d16 e f4 f
  e e e
  e8 e16 f g4 g
  g f4. f8
  f4 f4. e8
  e4 e2 \bar "|."
}

bass = \relative c {
  \global
  c4 c c
  g' g g
  d d d
  a' a a
  e e e
  f f g
  a a, a
  
  g g g
  c c c
  g' g g
  d d d
  a' a a 
  e e e
  f f f
  g g, g
  
  c c2
  c4 c c
  g' g g
  d d d
  a' a a
  e e e
  
  
  f f g
  a a, a
  g g g
  c c c
  g' g g
  d d d
  
  a' a a
  e e e
  f f f
  g g , g
  c c2
  c8.[ b16 c8. d16 e8. f16]
  
  g8.[ d16 g,8. a16 b8. c16]
  d8.[ a16 d,8. e16 f8. g16]
  a8.[ g16 a8. b16 c8. d16]
  e8.[ d16 e8. f16 g8. e16]
  f8.[ e16 f8. a16 g8. b16]
  a8.[ g16 a8. c16 b8. a16]
  
  
  g8.[ fis16 g8. a16 b8. g16]
  c8.[ g16 c,8. d16 e8. f16]
  g8.[ d16 g,8. a16 b8. c16]
  d8.[ a16 d,8. e16 f8. g16]
  a8.[ g16 a8. b16 c8. d16]
  e8.[ d16 e8. f16 g8. e16]
  
  f8.[ e16 f8. g16 a8. f16]
  g8.[ f16 g8. e16 f8. g16]
  c,4 c2
  R2.*16
  c4 c c
  g' r r
  
  r d d
  a' r r
  r e e
  f f g
  a a, a
  g r r
  r c c
  g' r r
  
  r d d
  a' r r
  r e e
  f g a
  g g,2
  c2.
  c8 c16 d e8.[ d16 e8. c16]
  
  
  g'8 g16 a b8.[ a16 b8. g16]
  d'8 d,16 e f8.[ e16 f8. d16]
  a'8 a,16 b c8.[ b16 c8. a16]
  e'8 e16 f g8.[ f16 g8. e16]
  f8 d16 e f8.[ g16 a8. g16]
  
  f8 f16 e d8.[ c16 b8. a16]
  g8 g16 a b8.[ a16 b8. g16]
  c8 c16 d e8.[ d16 e8. c16]
  g'8 g16 a b8.[ a16 b8. g16]
  d'8 d,16 e f8.[ e16 f8. d16]
  
  a'8 a,16 b c8.[ b16 c8. a16]
  e'8 e16 f g8.[ f16 g8. e16]
  f8 f16 e f8.[ g16 a8. f16]
  g8 g16 a bes8.[ a16 g8. g,16]
  c4 c2
  
  
  c4 c c
  g' g g
  d d d
  a' a a
  e e e
  
  f f g
  a a, a
  g g g
  c c c
  g' g g
  
  d d d
  a' a a
  e e e
  f f f
  g g, g
  c c2 \bar "|."
}



lettres = {
  s2.*8 \mark #12
  s2.*8 \mark \default
  s2.*8 \mark \default
  s2.*8 \mark \default
  s2.*8 \mark \default
  s2.*8 \mark \default
  s2.*8 \mark \default
  s2.*8 \mark \default
  s2.*8 \mark \default
  s2.*8 \mark \default
  s2.*8 \mark \default
  s2.*9 \mark \default
  s2.*7 \mark \default
}

violinIPart = \new Staff \with {
  instrumentName = "Violon I"
} << \lettres \violinI >>

violinIIPart = \new Staff \with {
  instrumentName = "Violon II"
} \violinII

violaPart = \new Staff \with {
  instrumentName = "Viola"
} { \clef alto \viola }

bassPart = \new Staff \with {
  instrumentName = "Bass"
} << { \clef "bass" \bass } \breaks >>

\score {
  \new StaffGroup  
  <<
    \new GrandStaff <<
      \violinIPart
      \violinIIPart
    >>
    \violaPart
    \bassPart
  >>
  \layout { }
}
