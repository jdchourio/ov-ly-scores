\version "2.18.2"
\include "k93.ily"

#(set-global-staff-size 22)

\header {
  title = "K93"
  meter = "FUGA"
  tagline = ##f
}

\paper {
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

breaks = {
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        \breaks
        \rightOne 
      >>
    }
    \new Staff = "left" { 
      \clef bass \left 
    }
  >>
  \layout { }
}
