\version "2.18.2"
\include "k1.ily"

\header {
  title = "K1"
  meter = "Allegro"
  tagline = ##f
}

#(set-global-staff-size 18.4)

\paper {
  #(set-paper-size "a3")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  top-margin = 12 \cm
  bottom-margin = 0.3 \cm
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
  \layout { indent = 0 }
}
