\version "2.18.2"

su = \stemUp
sd = \stemDown
sn = \stemNeutral
tu = \tieUp
td = \tieDown
tn = \tieNeutral
cstr = \change Staff = "right"
cstl = \change Staff = "left"

global = {
  \key g \minor
  \time 6/8
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
}

right = \relative c' {
  \global
  
  \tu \cstl g4. bes
  \cstr ees fis
  bes cis
  d8 c! bes a g fis
  << {g g' f e d cis}  \\ {s8 bes a g f e} >>
  << {d'4. s} \\ {f,8 e \tu d ~ d a' f} >>
  \su d g bes4 a8 e' ~
  
  e d f4 e8 d
  cis4 d8 g4.
  f8 b, c d ees f
  << {ees4. ~ ees8 d c} \\ {ees8 g, fis g4.} >>
  bes8 a \tn g~ g d \cstl bes
  g c \cstr ees4 d8 a' ~
  
  a g bes4 a8 g
  fis4 g8 c4.
  << {bes4. ~ bes8 a g} \\ { bes8 d, cis d4.} >>
  f8 e d ~ d a' f
  d g bes4 \sd a8 e' ~
  e d f4 e8 d
  
  cis4 d8 g f e
  << {f4. s} \\ {f8 b, c d ees! f} >>
  << {ees4. s} \\ {ees 8 fis,8 g a bes c} >>
  \su bes cis d e fis g
  fis8 g a << {d, g fis} \\ { d g, a} >>
  << { g'4. s} \\ {bes,8 c \tu d ~ d d bes} >>
  
  g8 c \once \sd ees4 d8 fis,
  g4. bes
  ees fis
  bes cis,
  d8 c! bes a g fis!
  g d' c << {g'8} \\ {bes,8 a g} >>
  
  << {f'8 s2 f8} \\ {a,8 b c b c d} >>
  << {ees8 s2 ees8} \\ {g,8 a bes a bes c} >>
  \sn d c bes ~ bes f' d
  bes ees g4 f8 c' ~
  c bes d,4 c8 bes
  \su a4 bes8 << {ees4.} \\ {a,8 bes c} >>
  
  
  << {d8 bes c d4 e8 f4. ~ f ees8 c d ees4 fis8 g4. ~ g f8 a g f e d } \\
    {f,4. ~ f4 g8 a c bes a g f g4. ~ g4 a8 bes d c bes a g a4. s }>>
  \sn cis4. 
  
  << {a'4. ~ a8 g4 ~ g8 f e f e d ~ d a f} \\
    {a'8 d, c bes4. a a ~ a8 }>>
  \su d,8 g bes4 a8 \tu e' ~ 
  e d f4 e8 d 
  cis4 d8 g4.
  << {f4.} \\ {f8 b, c} >> \sn d ees f
  
  << {ees4.} \\ {ees8 fis, g} >> a bes c
  << {bes4.} \\ {bes8 cis, d} >> e fis g
  fis4. 
  << {g8 a bes c d ees4 d8 c b4.} \\ {g4. ~ g f!4. ~ f8 ees d} >>
  << {c'4. ~ c8 d ees4 d8 c f4. d8 ees f} \\ {s4 d,8 ees f g aes4. ~ aes8 b c g4.} >>
  
  ees'8-\trill d c ~ c g ees
  c f aes4 g8 b,
  << {c4. ees aes} \\ {c,4. ~ c ~ \su c} >> <d b'>
  \sn <g ees'> <a fis'>
  
  << {g'8 a bes ~ bes4 bes8} \\ {bes, c d e f g} >>
  << {aes8 g f ~ f c' aes} \\ {c,4. aes} >>
  << {f'8 e f g4.} \\ {des4. g8 c, bes} >>
  << {f'4. ~ f} \\ {a,8 g a bes c d} >>
  << {ees a bes c4.} \\ {ees,4. ~ ees8 f ees} >>
  << {d8 g a bes4.} \\ {d,4. ~ d8 ees d} >>
  
  << {c8 fis g a4. 
      bes,8 e f g4. 
      a,8 d e f4. 
      g,8 cis d e4 cis8
      d4. ~ d 
      c8 d ees d4 c8} \\
    { c4. ~ c8 d c 
      bes4. ~ bes8 c bes 
      a4. ~ a8 bes a 
      g4. ~ g8 a g 
      fis g a g a bes 
      a4 g8 fis g a} >>
  
  
  bes8-\trill \su a g8 ~ g d \cstl bes 
  g c \cstr ees4 d8 a' ~
  a g bes4 a8 g
  << {f8 a f'4 ees8 d} \\ {f,4. g} >>
  << 
    { ees'8 g c4 bes8 a bes4. ~ bes8 a g f4. ~ f8 e d} 
    \\ 
    { g,4. d d a' ~ a8 gis a e4.} 
    \\ 
    { \sd ees'4. \td d ~ \su d8 cis d \sd e4. s b} 
  >>
  
  cis4. d8 e f \sn
  << {g4.} \\ {g8 cis, d} >> e f g
  << {f4.} \\ {f8 b, c} >> d ees f
  << {ees4.} \\ {ees8 a, bes} >> c d ees
  \once \sd <f, d'>4. <g e'>
  <c aes'> <d, b'>
  <g ees'> <a, fis'>
  
  <d bes'> <e cis'>
  <f d'>8 <g e'> <a f'>4
  << {e'8 d ~ d cis bes ~ bes a g} \\
    {g8 f ~ f e d cis4. } >>
  << {f4 g8 a4 b8 c4. ~ c ~ c8 bes a <bes d>4 <cis e>8} \\
    {d,4 e8 f4. ~ f8 ees! d <ees g>4 <fis a>8 <d g>4. g8 f! e} >>
  
  << {f'8 g a ~ a a f} \\ {a,4. a} \\ {d4. s} >>  
  << {d8-\trill cis d e f g} \\ {bes,4. cis!} >>
  f8-\trill e d4 a8 f
  d g bes4 a8 e' ~
  e d f4 e8 d ~ d
  c <ees! c'>4 <d bes'>8 <c a'>8 ~ 
  <c a'> <a fis'> <bes g'>4 <a f'>8 <g e'> ~
  
  <g e'> <f d'> <aes f'>4 <g ees'>8 <f d'> ~
  <f d'> <d b'> <ees c'>4 <d bes'>8 <c a'> ~
  <c a'> <a fis'> <bes g'>4 
  << {a'8 bes ~ bes a ees' d4 g8 ~ g[ f]} \\
    {fis,8 g ~ g fis4 g8 a bes c[ f]} >>
  <ees! c'>4 <d bes'>8 <c a'>
  
  << {bes'8 a g4 f8 ees 
      d4 e8 f4. ~ 
      \sd <aes, f'>8[  <bes g'>]} \\
    {\shiftOn \once \su bes4. s4 c8 ~
      c bes4 ~ bes8 aes g}>>

  << {\sn <c aes'>4 <bes g'>8 \tn <aes f'> ~ 
      <aes f'> <g e'> <f des'> ~ <f des'> <e c'> \tu <des bes'> ~
      \su bes' a bes c4. ~
      c8 bes f'4 ees8 bes' ~ \sd <des, bes'>8[ <c aes'>8]} \\
    {s2 s2.
      c,8 f!4 ~ f8 ees! c
      des4 aes'8 g4 des'8 ~ <des bes'>8[ <c aes'>8]}>> 
  <bes g'>4 <aes f'>8 <g ees'>
  << {d'8 bes c d4 e8} \\ {f,4. ~ f4 g8} >>

  
  << {f'4. ~ f} \\ {aes,8 c bes aes g f} \\ {s4. s4 b8} >>
  << {ees8 g f g4 fis8} \\ {g,4. ~ g4 a8} \\ {c8 s4 ees8[ d] c} >>
  << {bes d c bes a g} {g' bes a g f ees} >>
  << {d4. ~ d} \\ {fis,4. g8 a bes} >>
  << {c8[ d] ees d4 c8 } \\ {a4 g8 fis g a} >>
  << {bes8 a g ~ g d bes} \\ {g'4. \cstl \su g,} >>
  
  g8 c ees4 << {d8 c'} \\ {s ees,} >>
  << {bes' a g ~ g d' bes} \\ {d, c bes d4.} >>
  << {g8 g' d cis e g} \\ {e,4. e} >>
  << {f'8 e d4 d8 c} {a g f4 f8 ees!} \\ {d4. ~ d} >>
  << {d8 ees f4 ees8 d} {b' c d4 c8 b} >>
  << {c d ees4 fis8 g} {ees, f g4 a8 bes} >>
  << {a bes c4 bes8 a} {fis' g a4 g8 fis} >>
  
  << {\sd g a bes4 a8 g ~ \su g fis g a4.} 
    {bes,8 c d4 c8 bes} \\ {s2. c4. ~ c8 d c} >>
  << {bes8 ees f g4.} \\ {bes,4. ~ bes8 c bes} >>
  << {a8 d ees f4.} \\ {a,4. ~ a8 bes a} >>
  << {g8 c d ees4.} \\ {g,4. ~ g8 a g} >>
  << {d'4. ~ d8 c bes} \\ {fis g a d,4 g8} >>
  << {a bes c bes a <g cis>} \\ {fis g a g fis e} >>
  
  << {d'4 c!8 g'4 f8
      ees f g ~ g f ees
      d ees f ~ f ees d
      c d ees ~ ees d c 
      bes c d4 c ~ c8 bes c} \\
    {fis,8 g a bes c d ~
      d c bes a bes c ~
      c bes a g a bes ~
      bes a g fis g a ~
      a g f ees d c
      fis g a} >>
  << {d c g'} \\ {bes, a g} \\ {s4 bes8} >>
  
  << {fis'8 g a bes a g} \\ {a, bes c d c bes} >>
  << {fis' ees d c bes a} \\ {a g fis ees d c} >>
  << {g'4. g8 e g} \\ {bes, a g cis4.} >>
  << {fis8 a c b d f} \\ {d,4. f} >>
  << {cis'8 e g fis a c} \\ {g,4. c} >>
  << {bes'8 fis g f cis d} \\ {d c bes a g fis} >>
  
  << {ees'8 b c c4.} \\ {g8 f! ees d e fis} \\ {s4. fis8  g a} >>
  << { \shape #'((0 . 1) (0 . 1) (0 . 1) (0 . 1)) Tie g'4. ~ g8 f ees} \\ {g,2.} \\ {bes8 c d \sd ees d c} >>
  << {<bes d>8 c bes ~ bes c a} \\ {g a g ~ g a fis} >>
  << {g8 g' f ~ f ees d~
      d b c4 c ~
      c8 b a4 g8 fis} \\
    {g4 aes8 g4 f8 ~
      f d ees4 c8 ees
      d4 c8 b4 a8} >>
  << <d g>2. \\ b2. >> \bar "|."
}

left = \relative c {
  \global
  
  s2.*5
  d4. f 
  bes cis
  
  \cstr \sd f gis
  a8 g! f e d cis
  d f ees! \cstl \sn d c b
  c ees d c bes a
  g,4. bes
  ees fis
  
  bes cis
  d8 c! bes a g fis
  g bes a g f e
  d,4. f
  bes cis
  f gis
  
  a8 g! f e d cis
  << {d8 d' c} \\ {d,4.} >> b'8 a g
  << {c,8 c' bes!} \\ {c,4.} >> a'8 g fis
  << {g8 \cstr \sd g' f e d cis} \\ {g4. s} >>
  << {d8 d' c!} \\ {d,4.} >> bes'4 a8
  g4. bes
  
  ees c
  bes8 a g ~ g g bes
  c g \cstr \sd ees'4 d8 a' ~
  a g bes4 a8 g
  fis4 g8 c,4 d8
  \cstl g,4. g'8f ees
  
  d f ees d c b
  c ees d c bes a
  \sn bes,4. <d bes'>
  <ees g> <a c>
  <d f> <e g>
  f8 ees! d c bes a
  
  
  bes d c bes a g
  << {s4. f'8 ees d} \\ {f,4. ~ f} >>
  c'8 ees d c bes a
  << {s4. g'8 f e} \\ {g,4. ~ g} >>
  d'8 f e d c bes
  a a' g f4. ~
  
  f8 e d cis4. 
  d, f
  bes cis
  \cstr \sd f gis
  a8 g f \cstl \sn e d cis
  << {d,8 d' c \sd b a g} \\ {d4.} >>
  
  << {c8 c' bes \sd a g fis} \\ {c4.} >>
  g'8 bes a g fis ees
  << {d8 d' c bes a g} \\ {d4. ~ d} >>
  a'8 bes c << {\sd d4. ~ \su d8 c b c4} \\ {s4. g4. aes8 g f} >>
  << {c'4. ~ c8 f ees} \\ {ees,8 d c f4.} >>
  
  << {f'8 g aes} \\ {d,4 c8} >> b a g
  c,4. ees
  aes
  b,8 c d 
  ees d c ~ c c g' ~
  g f aes4 g8 d' ~
  d c ees4 d8 c
  
  bes a g c d e
  f4. s
  s e
  \clef treble ees4. d8 c bes
  << {c8 c' bes} \\ {c,4. a'} >>
  << {bes,8 bes' a} \\ {bes,4. g'} >>
  
  << {a,8 a' g s4.
      g,8 g' f s4.} \\
    {a,4. fis' g, e'} >>
  \clef bass
  << {f,8 f' e} \\ {f,4.} >> d'
  << {ees,8 e' d} \\ {ees,4.} >> cis'8 b a
  << {d,8 d' c!} \\ {d,4.} >> bes'8 a g
  a bes c d e fis
  
  
  g,,4. bes
  ees <fis a>
  <bes d> <cis e>
  d <<{d}\\{b}>>
  c fis,
  g cis
  d gis,
  
   
  << {\su a8 \cstr \sd a' g!} \\ {a,4.} >> f'8 e d
  e g f e d cis
  d f ees! d c b
  c ees d c bes a
  bes, bes' d4 << {s8 bes c4} \\ {c8 g ~ g8[ f]} >> aes4
  << {s8 d, g4} \\ {g8 bes, ~ bes[ c]} >> ees4 
  << {s8 c d4} \\ {d8 a ~a[ g]} >> bes'4 a8 g
  
  f e d g,4.
  a a'
  bes8 a g f ees d
  << {s4. c'8 bes a} \\ {c,4. ~ c} >>
  g'4. ~ g
  
  d' f
  s2.
  <d,, d'>4. <f f'>
  <bes bes'> <cis cis'>
  <f f'> <gis gis'>
  <a a'> <fis fis'>
  <g g'> <cis, cis'>
  
  <d d'> <b b'> 
  <c c'> <fis, fis'>
  <g g'> cis
  << {d8 d' c} \\ {d,4.} >> bes'8 a g
  <a c>4. <bes d>4 <c ees>8
  \cstr \sd <d f>4 <ees g>8 <f a>4 \cstl a,8
  
  bes4 c8 des c bes
  << {c4. des} \\ {aes8 g f bes4.} >>
  c4. e,
  f4 g8 a4. 
  bes <ees, bes'>
  <aes, aes'> <aes' c>
  bes8 d c bes aes g
  
  
  << {s4. f'8 ees d} \\ {f,4. ~ f} >>
  c'8 ees d << {s4 c8} \\ {c bes a}>>
  <g d'>4. ~ <g d'>4 <c, c'>8
  << {d8 d' c} \\ {d,4.}>> bes'8 a g
  a bes c d e fis
  g,,4. bes
  
  ees4. fis
  g bes
  s a
  d, f 
  \once \su g, g'
  << {c ~ c} \\ {ees, c} >>
  << {d' d} \\ {d, ~ d} >>
  
  << {d' g} \\ {bes, g} >>
  << {a8 a'g fis4.} \\ {a, ~ a} >>
  << {g8 g' f ees4.} \\ {g, ~ g} >>
  << {f8 f' ees d4.} \\ {f, ~ f} >>
  << {ees8 ees' d c4. ~ c8 bes a bes a g} \\
    {ees4. ~ ees d d} >>
  \sn d, d
  
  << {d8 e fis g a bes} {d8 e fis g a bes} >>
  << {c,, d ees f g a} {c d ees f g a} >>
  << {bes, c d ees, f g} {bes' c d ees, f g} >>
  << {a, bes c d, e fis} {a' bes c d, e fis} >>
  << {g, a bes c, d ees} {g' a bes c, d ees} >>
  <d, d'>4. ~ <d d'>
  
  <d d'>4. ~ <d d'>
  <d d'>4. ~ <d d'>
  <d d'>4. ~ <d d'>
  <d d'>4. <d d'>
  <d d'>4. <d d'>
  <d d'>4. <d d'>
  
  <d d'>4. <d d'>
  << {g'4. ~ g4 c8} \\ {g,8 a bes c4.} >>
  << {d4. ~ d} \\ {s \su d,} >>
  g4. ~ <g b>
  << {ees'4. fis} \\ {g,4. ~ g} >>
  << {g'4. s} \\ {g,4. ~ g} >>
  <g d' g> 2. \bar "|."
}
