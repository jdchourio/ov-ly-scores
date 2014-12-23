\version "2.18.2"

breaks = {
  s2.*4 \break s2.*5 \break s2.*5 \break s2.*5 \break s2.*5 \break s2.*5 \pageBreak
  s2.*5 \break s2.*5 \break s2.*5 \break s2.*5 \break s2.*5 \break s2.*6 \pageBreak
}

#(set-global-staff-size 16)

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}



\include "side-ornementations.ily"

cstr = \change Staff = "right"
cstl = \change Staff = "left"

\header {
  title = "La Poule"
  tagline = ##f
}

global = {
  \key g \minor
  \time 3/4
  %\override Staff.NoteCollision #'merge-differently-dotted = ##t
  %\set Timing.beamExceptions = #'( (end . (((1 . 16) . (4 4 4 4)))) )
}

right = \relative c'' {
  \global
  
  r8 g g g g g
  \stemUp g32[ bes d16] g,8 g g g g \stemNeutral
  g64*2 bes d g r8 r4 r8 d
  \para \parb ees[ ees ees ees ees8. g32*2/3 a c]
  
  c,8[ c c c c8. ees32*2/3 fis a]
  a,8 ees' d c bes\prall  a
  \voiceOne \para \parb bes4. a8 g4
  \para ees'4 \para ees4. g16 cis,
  cis4( \para d) r
  
  \para d \para d4. f16 b,
  b4( \para c) r
  c8 ees d c bes\prall a
  \repeat unfold 5 { bes16 a \para bes d }
  bes a \para bes c
  
  bes a \para bes c bes8 d c\prall bes
  a2\prall \oneVoice r4
  r8 f_\markup { \italic fort } f f f f
  f32 bes d16 f,8[ f f f f]
  f64*2 bes d f r8 r4 r
  
  \repeat unfold 2 {
    g,8[ g g g g8. bes32*2/3 ees g]
    f,8[ f f f f8. bes32*2/3 d f] }
  ees,8 c'16 bes a8 g f ees
  
  ees4\prall d r
  \para g8 g \para g g g a\prallup
  bes16 f ees d \repeat unfold 2 { \once \stemDown <d f>^\markup { \italic g. } d[^\markup { \italic d. } c bes] }
  g'8_\markup { \italic doux } g \para g g g a\prallup
  bes16 f ees d \repeat unfold 2 { \once \stemDown <d f>^\markup { \italic g. } d[^\markup { \italic d. } c bes] }
  
  g'8_\markup { \italic fort } g \para g g g a\prallup
}

left = \relative c' {
  \global
  
  R2. R2.
  r8 <g bes>8 q q q q
  <g c> q q q q q
  
  <g a> q q q q q 
  <fis a c> q q q q q
  \stemDown <g d'>2 ~ <g g,>4
  \cstr \voiceTwo <g' bes>8_\markup { \italic doux } q q q q q
  <fis a> q q q q q
  
  <f aes> q q q q q
  <e g> q q q q q
  <fis a> q q q q q
  \repeat unfold 2 { g4 \cstl \stemUp g,8[ \cstr \stemDown g'] fis d }
  
  g4 \cstl \stemUp g,8 \cstr \stemDown g' a g
  d8.[ \cstl \stemUp a16 fis d a d,] \stemNeutral \oneVoice r4
  R2. R2.
  r8 <bes '' d> q q q q
  
  \repeat unfold 2 {
    <bes ees> q q q q q
    <bes d> q q q q q }
  <bes c> q <a c> q q q
  
  << { bes2 r4 } \\ { r bes, r }>>
  \repeat unfold 2 { 
    <ees bes'>8 q q q q <ees c'>
    <d d'>16 r r8 s2 }
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        \breaks
        \new Voice = "right" { \right }
        \new Lyrics \lyricsto "right" {
          \markup { \smaller \italic Co }
          \repeat unfold 6 { \markup { \smaller \italic co } }
          \markup { \smaller \italic dai }
        }
      >>
    }
    \new Staff = "left" { 
      <<
        \breaks 
        \new Voice { \clef bass \left }
      >>
    }
  >>
  \layout { 
    indent = 0 
    \context {
      \Score
      \override NonMusicalPaperColumn.line-break-permission = ##f
      \override NonMusicalPaperColumn.page-break-permission = ##f
    }
  }
}
