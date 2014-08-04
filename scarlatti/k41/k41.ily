\version "2.18.2"

global = {
  \key c \major
  \time 4/4
}

su = \stemUp
sd = \stemDown
sn = \stemNeutral

rightOne = \relative c'' {
  \global \tieUp
  
  d2 a
  f8 d d' e16 f g8 f e d 
  cis4 d2 cis4
  d2 r8 d c![ b]
  
  \su r8 e a4 ~ a8 gis16 a b8 gis
  a4. s8 s2
  s1 
  a,2 r8 g! f[ e]
   
  r8 a d4 ~ d8 cis16 d e8 cis
  d4. c!8 bes a \once \tieDown g4 ~
  g f e2
  d8 e f g a f e d
  
  r8 e a4 ~ a8 gis16 a b8 gis
  a4 a,8 b16 c d8 c b a
  r e' f[ e] d c16 d e8 d
  c b a'4 ~ a8 g! e'4 ~
  
  e d ~ d8 cis16 d e8 cis
  d4 g ~ g8 f16 g a8 g
  f e d4 ~ d8 cis16 d e8 cis
  d4. c!8 bes a \once \tieDown g4 ~
  
  
  g4 f e2
  r8 a bes[ a] g f16 g a8 g
  f e16 f g2 f4
  e8 f g a bes c d e
  
  f2 c
  a8 f \sd f' g16 a bes8 a g f
  e4 \su f2 e8 d
  c4 f2 e4 ~
  
  e d2 cis4
  d2 a
  f8 d \sn d' e16 f g8 f e d
  cis4 \su d2 c8 bes!
  
  a4 ~ a8 b!16 c d8 c d4 ~
  d c b2
  a' e
  c8 a a' g f e d4 ~
  
  d c b2
  r8 e f[ e] d cis16 d e8 d
  cis4 d2 cis4
  d8 e f g a2 ~
  
  
  a8 g f4 ~ f8 e d4 ~
  d8 c bes4 ~ bes8 a16 g e'4 ~ 
  e8 a, d4 ~ d8 cis16 d e8 cis
  d4. c!8 bes2
  
  a4 ~ a8 g16 f e4 a ~
  a8 g16 a d4 ~ d8 cis16 d g4 ~
  g8 fis16 g a8 g fis e d4 ~
  d8 c16 d s2 c4 ~ 
  
  c8 bes16 c s4 \once \shiftOn d4. c8
  \once \shiftOn bes a16 g a4 bes8 g \sd g'8 a16 bes
  c8 bes a g \su fis4 g ~
  g fis g ees8 d
  
  c4 c ~ c8 bes16 c d8 c
  b!4 c ~ c8 b16 a b4
  c'2 g
  ees8 c c' bes a g f ees
  
  bes'2 f
  d8 bes bes' a g f e d
  a'2 e
  s4 d2 cis4
  
  
  d8 e f4 ~ f8 e16 d e4
  f8 g a2 gis4
  a8 b c2 b4 ~
  b8 a16 gis a2 gis4
  
  a8 f e4 e2 ~ 
  e4 e2 d4 ~
  d c b2
  r8 e a4 ~ a8 gis16 a b8 a
  
  g!2 ~ g8 f16 g a8 g
  f e d4 ~ d8 cis16 d e8 d
  cis2 d8 a d4 ~ 
  d8 cis16 d e8 cis d4 f,8 g
  
  a2 ~ a8 a d c
  r8 d g4 ~ g8 f16 e d4 ~ 
  d c2 bes4 ~
  bes a b c ~
  
  c8 bes16 a bes4 cis d ~
  d8 c!16 b c4 bes2 
  << { \su r4 s4 r4 g'4 ~ g8 fis16 g a8 g } \\ 
     { \su s4 d4 ~ d8 cis16 d \sn e8 d cis2 } \\ 
     { a2 s s } >>
  fis'4 g ~
  
  g f! ~ f8 e d4 ~
  d cis d4. cis16 d 
  e8 d16 e f4 ~ f8 ees16 d ees4
  fis g ~ g8 f16 e f4
  
  
  gis4 a ~ a8 g16 fis g4
  f! f e4. d16 c
  b4 b r8 e f[ e]
  
  d2 ~ d4 c! ~
  c8 b a2 e'4 ~
  e8 d16 e a2 g4 ~
  g f e2
  
  
  d8 cis d2 c4 ~
  c bes ~ bes8 a g4 ~
  g8 f16 e a2 g4 ~
  g8 f16 g a8 g f e f4
  
  e8 a' bes a g f16 g a8 g
  f e d4 <d e>4 <cis e> 
  d8 cis d2 cis4
  << {d8 e f g a4. <e g>8} \\ {s4 \shiftOnnn d4 ~ d8 cis16 d e8 cis} >>
  
  f g a g16 f e8 d e cis
  
  << {d2} \\ { 
      \once \override Rest.staff-position = #0 
      \once \override Rest.extra-offset = #'(1.5 . 0) 
      r8 \su a4 g16 f} \\
    {\sd f4 d} >>  
  cis'8 d e cis
  
  <d f> <e g> <f a> <e g>16 <d f> <cis e>8 <d f> <e g> <cis e>
  <f a> <e g> <d f> <c e> d4 g ~
  
  g8 f16 e << {d2 cis4 d} \\ {\su \tieUp \shiftOn s4 a4. \tieUp g8 ~ g fis16 g} >>
  a4 ~ a8 d, \tieDown g4 ~
  g8 fis4 e8 ~ e d4 cis8
  <a d>1 \bar "|."  
}

rightTwo = \relative c'' {
  \global \tieDown
  
  s1*4
  
  c4. c8 b2
  \sd a4. g'!8 f e \once \tieUp d4 ~
  d c b2 
  s1
  
  f4. f8 e2
  d4 s2.
  s1
  s2 r8 d c b
  
  c4. c8 b2
  a4 s2.
  s1
  s4 a8 f' e4 f8 e
  
  f g a bes e,4 a
  bes2 a ~
  a8 g f g16 f e2
  d4 s2.
  
  
  s1 s1 s1
  \change Staff ="left" c8 \change Staff ="right" d e f g a bes c16 bes
  
  a4 s e\rest g
  s4 \change Staff = "left" \clef treble \su f'8 e d c bes d
  c bes a \change Staff = "right" \sd bes16 c d8 c bes4 ~
  bes8 a16 g f4 g2
  
  f e 
  f8 e d4 ~ d8 cis16 d e8 cis
  d4 \change Staff = "left" \clef treble d'8 c \su bes a g bes
  a g f \change Staff = "right" \sd g16 a bes8 a g4 ~
  
  g8 f16 e f4 r b8 a
  gis4 a2 gis4
  a2 gis8 a b4
  r a2 ~ a8 g!16 f
  
  e8 gis a2 gis4
  a2 bes
  r8 a g[ f] e2
  f8 g a4 ~ a8 b cis d
  
  
  e4 d8 c! bes4. a8
  g4. f8 e4 f8 e
  f4. g16 f e2
  f4. e8 d e16 f g4 ~
  
  g8 f16 e d2 cis4
  d bes'8 a g4 e'8 d
  cis4 a2 a4
  bes ees8 d c bes a g
  
  a4 d8 c bes a g4
  g8 fis16 e fis4 s2
  s2 r8 d' c bes
  a2 g4 g ~
  
  g8 fis16 g a8 gis fis2
  r8 g f[ c] ees d16 c d4
  ees'8 d c4 ~ c8 b16 c d8 b
  s4 ees8 d c bes a c
  
  d8 c bes4 ~ bes8 a16 bes c8 a
  s4 d8 c bes a g bes
  \su \once \shiftOn cis8 b! a4 ~ \sd a8 gis16 a b8 gis
  \su cis[ a] ~ \sd a[ g] f e16 d e4
  
  
  f8 g a4 ~ a8 g g4
  a4. b8 c b16 a b4
  c4. d8 e d16 c d4
  c4. d8 e4. d8
  
  c4. a8 ~ a gis16 a b8 gis
  a4. g8 f2
  e8 gis a2 gis4
  a f'8 e d2 ~
  
  d8 cis16 d e8 d cis2
  r8 a bes[ a] g2 ~ 
  g8 f16 g a8 g f4 ~ f8 e16 d
  e2 d8 e d4 ~
  
  d8 cis16 d e8 cis d2
  bes'2 a4 ~ a8 g16 f
  e2 d
  c4 r8 f ~ f ees16 d ees8 c
  
  d4. g8 ~ g f16 e f8 d
  e4. a8 ~ a4 g ~
  g f g2
  s2 r8 d' c[ g]
  
  bes a16 g a4 gis2
  a a8 g16 a bes4 ~ 
  bes a g4. c8 ~
  c bes16 a bes8 g a4. d8 ~
  
  
  d c16 b c8 a b4. e8 ~
  e4 d ~ d8 c16 b a4 ~
  a gis a a ~ 
  
  a8 gis16 fis gis4 a s4
  dis,2 e4 gis
  a f'8 e d cis16 d e8 d
  \su \once \shiftOn cis4 \once \shiftOn d2  cis4
  
  \sd f,8 e d4 e2
  d4. d8 cis2
  d4 f8 e d cis16 d e8 d
  cis4. b16 cis d8 cis d4
  
  cis8 r r d' e d cis b16 cis
  d8 a bes a g f16 g a8 g
  f e d4 e2
  f8 g a4 a s4
  
  d2 a
  %<< {%\once \override Rest.staff-position = #0 \once \override NoteColumn.horizontal-shift = #1 
  %    r8 a4 g16 f} \\ {f4 d} >> e8 f g e
  s2 e8 f g e
  a2 a
  a bes8 a g bes
  
  a4. g8 f e16 d e4
  d4. c8 \change Staff = "left" \su bes4. a16 g
  a4 g fis e <d fis>1 \bar "|."
}

leftOne = \relative c'' {
  \global \tieUp
  
  R1 R1 \clef treble
  r8 a bes[ a] g f16g a8 g
  f e d e f4 g
  
  a2 e
  c8 a a' b16 c d8 c b a
  gis4 a2 gis4
  c,8 b a b c4 cis
  
  \clef bass d2 a
  f8 d d' e16 f g8 f e d
  \su cis4 d2 cis4
  d2 s2
  
  s1
  s1
  gis,4 a2 gis4
  a4 s2.
  
  s1 s1 s1 s1
  
  
  cis4 d2 cis4
  d2. c!4 ~
  c4. bes8 a bes c d
  s1
  
  r8 c f4 ~ f8 e16 d e8 c
  s1 s1 s1
  
  s1 s1 s1 s1
  
  s1 s1 s1 s1
  
  gis4 s2.
  s1 s1 s1
  
  s1 s1
  d'2 a
  s1
  
  cis,8 s s2.
  s1 s1 s1
  
  s2 \change Staff = "right" g'''2
  d s4 \change Staff = "left" \clef treble g8 f!
  \sd ees d c bes \su a4 s
  s2 \change Staff = "right" d8\rest \su d \change Staff = "left" ees,4 ~
  
  ees2 d
  s1
  g,4 c8 d ees d4 g8
  g4 s f2
  
  f4 d ~ d8 c4 f8
  f4 s2.
  \change Staff = "right" \sd a4 \change Staff = "left" s4 \su cis,8 b4 e8
  e4 s2.
  
  
  a,4. b!8 c4. bes8
  c4. d8 e4. d8
  e4. f8 g4. f8
  \clef treble s4 a8 b c b16 a b4
  
  a4. d,8 \clef bass c b4.
  a4 s2.
  gis8 s8 s2.
  s4 a4 b d,
  
  e g a2 ~ 
  a4 d e g,
  a2 s2
  s1
  
  s1 s1 s1 s1
  s1 s1 s1 s1
  
  s2 d4. e8 
  f e16 d e4 d2
  bes4 c d s4
  s1
  
  
  s1 s1 s1
  d4. e8 f! e16 d e8 \change Staff = "right" \sd e
  \change Staff = "left" \su a,4. b8 c b16 a b4
  a2 s2
  \change Staff = "right" \sd r8 a'8 bes[ a] g f16 g a8 g \change Staff = "left"
  
  s1
  s2 \su g,4. a8
  bes a16 g a4 s2
  s2 a4. gis8
  
  a a\rest a4\rest a2\rest
  s1
  a8\rest a bes[ a] g f16 g a8 g
  f e d c16 bes s2
  
  s1 s1 s1 s1
  
  cis8 a' \sd bes4 a2
  d, d
  d a
}

leftTwo = \relative c' {
  \global \tieDown
  
  s1*4
  
  s1*2
  \sd r8 e f[ e] d c16 d e8 d
  s1
  
  s1 s1
  r8 a bes[ a] g f16 g a8 g
  f e d e f4 g
  
  a2 e
  c8 a a' g f e d4 ~ 
  d c b2
  a8 b c d \sn c4 cis
  
  d8 e f g a,4 \once \tieUp a' ~
  a8 g16 a bes8 g cis4. b16 cis
  d2 a
  f8 d d' e16 f g8 f e d
  
  
  r8 a bes[ a] g f16 g a8 g
  f4 d e a
  d, e f8 g a bes
  R1
  
  a4. bes8 c2
  f,4 \clef treble e'\rest e2\rest 
  e4\rest \sd f8 g16 a \sn bes8 a g f 
  e c d c \clef bass bes a16 bes c8 bes
  
  a g16 a bes8 a g f16 g a8 g
  f4. g8 a4 a,
  d \clef treble s2.
  s4 \sd d'8 e16 f \sn g8 f e d
  
  cis a d4 ~ d8 e16 f g8 f
  e d16 e f8 e d c16 d e8 d
  c b c d e fis gis e
  \clef bass a,4. b16 c d8 c b a
  
  r8 e8 f[ e] d c16 d e8 d
  c a a'2 g4
  r8 a bes[ a] g f16 g a8 g
  f e d e f g a b
  
  
  cis4 d8 e16 f g4. f8
  e4. d8 cis4. b16 cis
  d,2 \once \sd a
  f8 d d' e16 f g8 f e d
  
  r8 a bes[ a] g f16 g a8 g
  f d d'4 e4. f16 g
  a4. b16 cis \clef treble d8 e fis e16 fis
  g4. fis16 g a8 g fis e
  
  fis4. e16 fis g8 f ees4
  d4 r8 \clef bass d,8 g,4 \clef treble r4
  s2 \sd r8 d'' ees[ d] \sn
  c bes16 c d8 c bes4 \clef bass g4
  
  a c r fis,
  g aes g4. f8
  ees4 aes g2
  c4. d16 ees f,4. g16 a
  
  bes8 c d, ees f2
  bes4. c16 d e!4 r4
  a,8 b! cis d e,2
  a4 bes a4. g8
  
  
  \sd f e d4 c2
  a'8 g f4 e2
  c'8 b a4 g2
  \clef treble e'4 f e2
  
  a,2 \clef bass e
  c8 a a' b16 c d8 c b a
  \sn r8 e f[ e] d c16 d e8 d 
  c a \sd a4 b d,
  
  e g a cis
  d d e g,
  a2 d'
  a f4 d
  
  \sn a2 f8 d d' e16 f 
  g8 f e d cis a' bes a
  g f16 g a8 g fis e16 fis g8 f
  e d16 e f4 g, g'
  
  fis g a, a'
  gis a d8 cis16 d e8 d
  cis b16 cis d8 c bes a g4
  a4. b16 cis d4 ees
  
  d4. c8 b!2
  a4. g8 f e d4
  g a8 f b g c,4
  d d' cis d
  
  
  e, \clef treble e' dis e
  a8 gis16 a b8 a gis e f e
  d c16 d e8 d cis4 d8 c
  
  \sd b2 a4. g8
  \clef bass fis2 e4. d8
  cis4 d8 c \sn bes2
  a4 a a a
  
  << {r8 \sd a'} \\ {\su a,4}>> bes'8 a g f16 g a8 g
  fis e16 fis g8 f e2
  d4. \sd c8 \su bes2
  a2 \sd a
  
  a a
  \sn a a
  \sd a a
  a4 s \sn a2
  
  s1
  r2 a'2
  f4 d a2
  f8 d d' e16 f g8 f e d
  
  r \sd a8 bes4 a2
  d, d
  d d
  d1 \bar "|."
}

