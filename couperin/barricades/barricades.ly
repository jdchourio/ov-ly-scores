\version "2.18.2"

\include "../../tagline.ily"

breaks = {
  s1*3 \break s1*4 \break s1*5 \break s1*4 \break s1*4 \break s1*5 \break \pageBreak
  s1*5 \break s1*6 \break s1*5 \break s1*5 \break s1*5 \break s1*6 \break \pageBreak
}

#(set-global-staff-size 16)

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  oddFooterMarkup = \gitTagline
  evenFooterMarkup = \gitTagline
}



%\include "../../gitcommands.ily"

cstr = \change Staff = "right"
cstl = \change Staff = "left"

\header {
  title = "Les Baricades Mistérieuses"
  tagline = ##f
}

global = {
  \key g \minor
  \time 2/2
  \override Staff.NoteCollision #'merge-differently-headed = ##f
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \override Staff.Rest #'style = #'classical
}

Cust = {
  \once \override NoteHead.stencil = #ly:text-interface::print
  \once \override NoteHead.text = \markup {
    \musicglyph #"custodes.mensural.u0"
  }
}

rightUp = \relative c' {
  \global

  r8 \voiceOne bes d4 ~ d8 c ~ <c f>4 ~
  f8^\markup { \musicglyph #"scripts.segno" } bes, d4 ~ d8 c ~ <c f>4 ~ 
  f8 a, bes2 bes8 a

  g bes ees4. ees8 d\prall c
  d bes d4 ~ d8 c ~ <c f>4 ~
  f8 bes, d4 ~ d8 c ~ <c f>4 ~
  f8 a, bes2 bes8 a

  g a bes2 bes8 a
  bes8\mordent\fermata\noBeam bes d4 ~ d8 c ~ <c f>4 ~
  \Cust f1^\markup { \musicglyph #"scripts.segno" } \bar ":|."
  bes,8\mordent\fermata\noBeam d f2 f4 ~
  f f2 f4 ~

  f f2 f4 ~
  f f2 e4
  f c2 c4 ~
  c c2 c4 ~

  c c2 c4 ~
  c d g,4.\prall f16 g
  f8 a c2 ees4 ~
  ees d2 f4 ~

  f bes,2 ees4 ~ 
  ees ees2 d4
  c8\prall\turn\noBeam bes d4 ~ d8 c ~ <c f>4 ~ 
  \Cust f1^\markup { \musicglyph #"scripts.segno" } \bar "||"
  bes,8\mordent\fermata
  bes d2 c4 ~


  c bes2 a4
  g8\noBeam ees' g2 f4 ~
  f ees2 d4
  c8 g ees'2 d4 ~
  d8[ d ees d c bes a g]

  a8\noBeam bes d4 ~ d8 c f4 ~
  \Cust f1^\markup { \musicglyph #"scripts.segno" } \bar "||"
}

rightDown = \relative c' {
  \global
  \voiceTwo

  s8 bes4 bes8 ~ bes4. a8 ~
  a bes4 bes8 ~ bes4. a8 ~
  a a4 g8 ~ g f ~ f4

  g4. g8 a r r4
  r8 bes4 bes8 ~ bes4. a8 ~
  a bes4 bes8 ~ bes4. a8 ~
  a a4 g8 ~ g f ~ f4

  g4. f8 ~ f f ~ f4 ~
  f8 bes4 bes8 ~ bes4. a8 ~
  \Cust a1 \bar ":|."
  f8\repeatTie d'4 d8 ~ d c4 c8 ~
  c d4 d8 ~ d c4 c8 ~

  c d4 d8 ~ d c4 c8 ~
  c bes4 bes8 ~ bes bes4 bes8
  a a4 a8 ~ a g4 g8 ~
  g a4 a8 ~ a g4 g8 ~

  g a4 a8 ~ a a4 a8 ~
  a a4 g8 e4. s8
  s a4 a8 ~ a g4 a8 ~
  a bes4 bes8 ~ bes aes4 aes8 ~

  aes8 g4 g8 ~ g g4 g8 ~
  g a4 a8 ~ a bes4 bes8
  a bes4 bes8 bes4. a8 ~
  \Cust a1 \bar "||"


  f8\repeatTie bes4 bes8 ~ bes bes4 a8 ~
  a a4 g8 ~ g g4 fis8
  g ees'4 ees8 ~ ees ees4 d8 ~
  d d4 c8 ~ c c4 b8
  c g4 ~ g8 ~ g f4 f8 ~
  f s1

  bes4 bes8 ~ bes4. a8 ~ 
  \Cust a1 \bar "||"
  f8\repeatTie bes4 bes8 ~ bes bes4 bes8 ~
  bes bes4 aes8 ~ aes8 c4 c8 ~
  c c4 bes8 ~ bes bes4 bes8 ~ 
  bes c4 c8 ~ c aes4 aes8 ~

  aes aes g4. ees'4 ees8
  r c4 c8 ~ c c4 c8 ~
  c c4 c8 ~ c c4 c8 ~ 
  c d4 d8 ~ d d4 d8 ~
  d bes4 bes8 ~ bes bes4 bes8 ~

  bes c4 c8 ~ c c4 c8 ~
  c a4 a8 ~ a a4 a8~
  a bes4 bes8 ~ bes bes4 bes8 ~ 
  bes g4 g8 ~ g g4 g8 ~
  g a4 a8 ~ a a4 a8 ~

  a f4 f8 ~ f f4 f8 ~
  f g4 g8 ~ g f4 f8 ~
  f ees4 ees8 ~ ees f4 f8 ~
  f g4 g8 ~ g ees4 ees8 ~
  ees f4 f8 ~ f f4 f8 ~

  f g4 g8 ~ g f4 f8 ~
  f ees4 ees8 ~ ees g4 g8 ~
  g f4 f8 ~ f f ~ f4 ~
  f8
}

leftUp = \relative c {
  \global
  \voiceOne

  s2 f2 ~ 
  %f4 f2 ees4 ~
  f4^\markup { \musicglyph #"scripts.segno" } f2 ees4 ~
  ees d2 d4~

  d c2 f4 ~
  f f2 f4 ~
  f f2 ees4 ~
  ees d2 d4~ 

  d4 c2 ~ <c ees>4
  <<{ d2\fermata s4 } \new Voice { \voiceOne a'4\rest f2 }>> f4 ~
  \Cust f1^\markup { \musicglyph #"scripts.segno" } \bar ":|."
  d4\fermata bes'2 a4
  r bes2 a4

  r bes r f
  r g2 g4
  r f2 e4
  r f2 e4

  r f2 f4 ~
  f f c c,
  r f' c c,
  r g'' d d,

  r ees' c c,
  r f' bes, bes,
  f' bes f' f,
  \Cust bes1 \bar "||"
  r4\fermata f'2 ees4 ~

  ees d2 d4
  r ees \stemDown b g
  c \stemUp f, \stemDown g \stemUp g,
  r c' r d
  r ees e, c

  f bes f' f,
  \Cust bes1 \bar "||"
  d4\fermata f2 g4 ~
  g ees2 aes4 ~
  aes f2 g4 ~
  g f2 f4

  r2 r4 bes ~
  bes bes2 bes4 ~
  bes aes2 aes4 ~
  aes a2 a4 ~
  a g2 g4 ~

  g g ~ g g ~
  g f2 f4 ~
  f f2 f4 ~
  f ees2 ees4 ~
  ees ees2 ees4 ~

  ees d2 d4 ~
  d c2 d4 ~
  d c r d ~
  d c2 c4 ~
  c c r d ~

  d c2 d4 ~
  d c ~ c d ~
  d c ~ s f,
  d' f2 f4 ~
}

leftDown = \relative c {
  \global

  r4 bes f' f,
  \once \stemDown bes2 f
  g d

  ees f 
  \once \stemDown bes f
  \once \stemDown bes f
  g d

  ees f
  \once \stemDown bes2 f
  \Cust bes1 \bar ":|."
  \once \stemDown bes2 f'
  bes, f'

  \once \stemDown bes, \once \stemDown a
  g \once \stemDown c
  f,  \once \stemDown c'
  f, \once \stemDown c'

  f, a
  \once \stemDown bes \once \stemDown c
  f, \once \stemDown c'
  g d'

  ees, \once \stemDown c'
  f, \once \stemDown bes
  s f' ~
  \Cust f1 \bar "||"
  <<{ d2 } \\ { bes2 }>> f 


  g d
  ees b'
  c g
  c, d
  ees s

  s f' ~ 
  \Cust f1 \bar "||"


  bes,2 g
  aes f
  bes g
  aes bes

  ees, ees'
  e c
  f ees
  d bes
  ees d

  c a
  d c
  bes g
  c bes
  a f

  bes d,
  ees f
  g d
  ees g
  f d

  ees f
  g ees 
  f ees'
  bes f
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        \breaks
        \new Voice = "rightUp" { \clef alto \rightUp }
        \new Voice = "rightDown" { \clef alto \rightDown }
      >>
    }
    \new Staff = "left" { 
      <<
        \breaks 
        \new Voice { \clef bass \leftUp }
        \new Voice { \clef bass \leftDown }
      >>
    }
  >>
  \layout { 
    indent = 0 
    \context {
      \Score
      \override NonMusicalPaperColumn.line-break-permission = ##f
      %\override NonMusicalPaperColumn.page-break-permission = ##f
    }
  }
}
