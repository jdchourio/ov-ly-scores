\version "2.18.2"

\include "../../include/purcell-ornements.ily"

cstr = \change Staff = "right"
cstl = \change Staff = "left"

\header {
  title = "Suite in G Minor"
  meter = "Prelude"
  opus = "Z661"
  tagline = ##f
}

global = {
  \key g \minor
  \time 2/2
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \set Timing.beamExceptions = #'( (end . (((1 . 16) . (4 4 4 4)))) )
}

right = \relative c'' {
  \global
  
  \voiceOne g16 bes a c bes d c ees d4 ~ d16 ees d c
  bes c bes d c d c bes a bes a bes c bes c a
  
  bes4. bes8 bes16 c a c bes d c ees
  d4. d8 r16 c8\noBeam d\noBeam ees\noBeam f16
  ees4. ees8 ees16 f d f ees f d ees
  
  c4 ~ c16 d c ees d4 ~ d16 c d bes
  c a bes g c4 ~ c16 a bes g a fis g e
  
  a2 ~ a16 a bes g a f g e 
  f4 ~ f16 e f d e4 ~ e16 e f d 
  e4 ~ e16 d e a, d8.-\prall d16 d8.-\shake cis16
  
  d f e g fis a g bes c4. c8
  c16 d b d c ees d f ees4. ees8
  
  
  ees16 f d ees c d bes d c4. c8
  d16 ees c d bes c a bes g a f a g bes a c
  
  bes c a bes g8. f16 f4. f8
  \oneVoice d16 f bes d f, bes d f bes,4. bes8
  g16 bes ees g a, c f a bes,4 g16 bes d g
  
  a,4 a16 bes d f g,4 ees16 g c ees
  f, bes d f g, bes ees g a, f' ees d c8.^\shake bes16
  
  bes d c ees d f ees g f8 bes bes8.^\shake a16
  bes f d g f d bes c <f, bes d>4. d'8
  d16 bes g bes g ees c g' c4 ~ c8. c16
  
  c16 a fis d' bes g e c' a fis d a' bes4-\prall ~
  bes16 g e g a4-\prall ~ a16 fis d fis g4-\prall ~ 
  g8 g g8.^\shake fis16 <bes, d g>2 \bar "|."
}

middle = \relative c'' {
  \global
  
   \voiceTwo s1 s1 
   g4. g8 g fis g a
   bes4. bes8 a bes c d
   c4. c8 c bes c bes
   
   a4. a8 bes4. g8 
   s4 a s s
   
   fis2 s 
   d4 s cis s
   cis s s \cstl \voiceOne a
   
   \cstr \voiceTwo s2 a'4. a8
   a g a b! c4. c8
   
   
   c bes a g a4. a8
   bes a g f e d e f
   
   g f s2.
}

left = \relative c' {
  \global
  
  r2 \clef treble d16 ees d f e g fis a
  g a g bes a bes a g fis g fis g a g a fis
  
  \clef bass g, bes a c bes d c ees d4 c
  bes16 d c ees \clef treble d f ees g f4. f8
  c16 ees d f ees g f aes g2 ~
  
  g16 fis g e fis4 ~ fis16 e f d ees4 ~
  ees ~ ees16 d ees c d2 ~
  
  d16 d ees c \clef bass d bes c a bes2
  bes16 a bes g a4 ~ a16 g a f g4 ~
  g16 f g e f4 ~ f16 e f d \voiceTwo r8 a
  
  \oneVoice d4. d8 d16 ees d f e g fis a
  g4. g8 c,16 d c ees d f ees g
  
  
  f4. f8 f16 f ees f d ees c d
  bes4. bes8 <<{ \voiceOne c2 ~ c } \new Voice { \voiceTwo c, c }>>
  
  \oneVoice f16 a c f a, c f a
  bes,4. bes8 g16 bes d g bes, d g bes
  ees,4 f g16 bes d g ees,4
  
  f16 a c f d,4 ees16 g c ees c,4
  d ees f8[ bes,] f' f,
  
  bes4 ~ bes16 d c ees d f ees g <<{ \voiceOne f4 } \new Voice { \voiceTwo r8 f, }>>
  \oneVoice bes4. f'8 bes16 f d g f d bes d
  ees4. ees8 ees16 c g c g ees c8
  
  d2 ~ d8 d' d16 bes g bes
  c4 ~ c16 a f a bes4 ~ bes16 a bes g
  <<{ d'2 g, } \new Voice { \voiceTwo r4 d r g, }>> \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        \breaks
        \new Voice { \right }
        \new Voice { \middle }
      >>
    }
    \new Staff = "left" { 
      <<
        \breaks 
        \new Voice { \clef bass \left }
      >>
    }
  >>
  \layout { indent = 0 }
}
