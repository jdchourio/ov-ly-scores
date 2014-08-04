\version "2.18.2"

global = {
  \key c \minor
  \time 4/4
  
  % alterations
  %\accidentalStyle Score.modern-cautionary
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
}

rightOne = \relative c'' {
  \global
  
  c2 b4 bes | a aes g c ~ | c b c2 | << g'2 { bes,!4 s } >> fis'4 f | e ees d g ~ | 
  g fis g4. f8 | ees4. f8 g f16 ees d8 ees | f ees16 d c8 d ees2 | d c | 
  bes!8 g bes c d c16 bes a8 bes | c bes16 a g8 a bes4. c16 bes | a8 ees' d c b b c d | 
  << c2 { g4 s }>> b4 bes | a aes ees'2 | d4 des f2 | e4 ees d des | c f2 ees8 d16 c | 

  d8 ees16 f g4 c,8 d16 ees f4 ~ | f ees8 d16 c d2 | c4 c bes8 c d ees | 
  f ees16 d c8 d ees2 | d4 des c'2 | b4 bes a aes | g g f4. ees16 des | 
  c4 f ees8 f g f16 ees | d4 c c c8 bes16 a | bes8 c d e fis4 g ~ | 
  g8 f!16 ees f4 ~ f8 e16 d e4 | f8 g aes4. g16 f g8 aes | bes4 bes4. aes16 g aes8 b | 

  c4. c8 b4 bes | a aes g ges | f f ees8 c ees f | g f16 ees d8 ees f ees16 d c8 d | 
  ees4. ees8 d2 | e8 c f4. e16 d e4 | f4 f e ees ~ | ees8 des16 c des8 ees f ees16 des c8 des | 
  ees des16 c bes8 c des4. ees16 des | c4 c bes bes | c8 d ees4. d16 c d8 e | 
  f4 f ~ f8 e16 d e8 fis | g d g4 fis f | e ees d8 e16 fis g4 ~ | g f!2 ees4 | d2 c8 d ees4 | 

  d8 ees f4 e8 f4 e8 | f g aes4 g4. f16 ees | d8 g fis f e ees4 d16 c | b8 c d d e c' b bes | 
  a aes4 g16 f e8 f4 e8 | f ees!16 d c8 f16 ees d8 ees4 d8 | 
  s4 << { \once \override NoteColumn.force-hshift = #1 ees8 d16 c } \\ {\once \stemUp g'4} >> g8 b,[ c d] | 
  g, c'[ b bes] a aes g g | fis f e ees ~ ees d16 c b8 c16 d | g,8 a16 b c4. b16 a b4 | 
  c4. bes!8 aes4. bes16 aes | g8 a16 b c8 b c2 \bar "|."
}

rightTwo = \relative c' {
  \global
  
  R1 r2 r4 ees4 | f g c,8 d ees f | g a bes c d c16 bes a8 b | c bes!16 a g8 a bes4 bes | 
  c d g,8 g a b | c g c4 d g, | c f, g8 a16 b c4 | f,8 g16 aes! g8 f ees f g f16 ees | 
  d4 g a d, | g c, d8 ees16 f g4 ~ | g fis g f | ees8 f g aes g f16 ees d8 e | 
  f ees!16 d c8 d g aes bes c | f, g aes bes c bes c des | g, aes bes c f, g aes bes | 

  s4 c8 des g,4 c | d4. g,8 c4. f,8 | b4 c f,8 g16 aes g8 f | ees f g f16 ees d4. f16 g | 
  aes8 g16 f ees8 f g aes bes c | f, g aes bes ees f g f16 ees | d8 ees f g c, d ees f | 
  g, aes bes c des c bes4 | aes8 bes c bes16 aes g4 c | b8 g f c ees d16 c d4 | d bes' a8 d c g | 
  bes aes!16 g aes4 g4. g8 | aes bes c d ees bes ees4 ~ | ees8 d16 c d8 e f c f4 ~ | 

  f8 ees16 d ees8 f g f16 ees d8 e | f ees16 d c8 d ees d16 c bes8 c | des c16 bes aes8 bes c4 s | 
  g g f f | g8 a16 b c4 f,8 g16 aes g8 f | g4 f g4. g8 | aes bes16 c bes8 aes g aes16 bes aes8 g | 
  f4 f f f | bes4. ees,8 f g16 aes bes4 ~ | bes8 aes16 g aes4. g16 f g4 | aes4. g8 f4. g8 | 
  a f a b c4 ~ c ~ | c8 bes!16 a bes8 c d c16 bes a8 b | c bes!16 a g8 a bes4. bes8 | 

  a ees'! d c b g c4 ~ | c b ees,8 f g a | b c4 b8 c g bes4 | aes8 bes c d ees d c4 | 
  b8 g a b c c4 b16 a | g8 g f b! c c d e | f f16 ees d8 d g, aes bes g | f4 f f8 g aes f | 
  g a16 b \once \stemDown c4 b8 g[ a a] | g c[ d ees] f c b bes | a aes g g aes4 g8 f | ees4. d16 c d4. d8 | 
  e f g4 ~ g8 f16 e f4 ~ f4. f8 \stemUp <e g>2 \bar "|."
}

leftOne = \relative c' {
  \global
  
  c2 b4 bes | a aes g c ~ | c b c c | <g, g'>2 <fis fis'>4 <f f'> | <e e'> s2 g'4 ~ | 
  g fis g f | c' s2. | s1 s1 s1 | s2. c4 | b bes a aes | g c2 b4 | c s2. | s2 ees4 s4 | 
  s2 c4 c | b8 c d e f ees16 d c8 d | ees4 ees bes bes | f f s2 | s1 | 
  g4 g a8 bes c4 | d4. c8 b g c bes | aes4. bes8 bes4. f8 | bes4. c8 c4. g8 | c4 d,4\rest d2\rest | 

  R1 r2 c'2 | b4 bes a aes | g c2 bes!4 ~ | bes aes8 g16 f g2 | s1 | bes2 a4 aes | g ges f bes ~ | 
  bes aes s g | aes aes bes4. c8 | f,4. g8 c4. d8 | g,4. s8  s2 | s1 c4 d4. c16 b c4 | d2 s | 
  g,8 f16 ees d8 g c bes16 aes! g8 c | aes4. g16 f c'4 c | g g g8 g fis f ~ | f ees d g16 f e4 c | 
  c8 c' b bes ~ bes aes g c16 bes | a8 bes4 a8 bes g f bes16 aes | g8 f ees f g g fis f | 
  e ees d c r f g g | g4 g f g8 d | ees4. f8 g4 g | c, c c c | c c c2 \bar "|."
}

leftTwo = \relative c {
  \global
  
  R1 | r2 r4 ees4 | f g c,8 d ees f | s1 | s4 ees d bes | c d g,8 g a b | 
  c d ees f g4. \once \stemUp c,8 | f4. \once \stemUp bes,8 ees f g aes | bes aes16 g f8 g aes g aes bes | 
  c bes16 aes g8 a bes aes16 g f8 g | aes f aes bes c c, r4 | R1 r4 ees f g | 
  c,8 d ees f g[ aes bes aes16 g] | f8 g16 aes g8 f ees f g aes | 

  bes aes16 g f8 g aes g16 f ees8 f | g4 g f f | ees8 f g a bes, c des ees | 
  f, g aes bes \stemUp <c, c'> <d d'> <ees ees'> <f f'> | <g g'>4 <aes aes'> <g g'> <fis fis'> | 
  \stemDown g8 a bes c d4 ees | d4. c8 b4 c | f4. bes,8 ees4. f8 | bes,4. c8 f4. g8 | 
  c,4 s2. | s1 R1 R1 | r4 ees f g | c, des bes c | f8 g aes bes c bes16 aes g8 aes | 
  
  R1 r2 r4 des, | ees f8 ees des ees16 f ees8 des | c bes aes4 bes4. c8 | f,4. g8 c4. d8 | 
  g,4. ees'8 d ees f g | c, d ees f g g, g' bes, | c4 d g aes!8 g | 
  f g16 aes g8 f ees d \stemUp c bes16 a \stemDown | g4 s c c | f4. ees16 d c8 d ees f | 
  g,4 g g g | g g c s | s2 c4 c | f f bes, bes | ees8 d c bes16 aes g4 g | 
  g g g g | g g g g | g g g g | c, c c c | c c c2 \bar "|."
}
