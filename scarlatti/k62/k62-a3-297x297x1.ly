\version "2.18.2"
\include "k62.ily"

#(set-global-staff-size 17.7)

\paper {
  #(set-paper-size "a3")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  top-margin = 12 \cm
  bottom-margin = .3 \cm
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
