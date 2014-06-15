\version "2.18.2"
\include "k67.ily"

#(set-global-staff-size 18.6)

\header {
  title = "K67"
  meter = "Allegro"
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
      \right
    }
    \new Staff = "left" { 
      \clef bass \left 
    }
  >>
  \layout { }
}
