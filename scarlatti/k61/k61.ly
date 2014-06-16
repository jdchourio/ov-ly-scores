\version "2.18.2"
\include "k61.ily"

breaks = {
  s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \pageBreak
  s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \pageBreak
  s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \pageBreak
  s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \pageBreak
  s2*5 \break s2*5 \break s2*4 \break s2*4 \break s2*4 \pageBreak
  s2*4 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \pageBreak
}

#(set-global-staff-size 20)

\header {
  title = "K61"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
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
  \layout { }
}
