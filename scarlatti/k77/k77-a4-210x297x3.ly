\version "2.18.2"
\include "k77.ily"

#(set-global-staff-size 22)

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
      <<
      \clef bass \left 
      { s2.*47 \pageBreak }
      >>
    }
  >>
  \layout { }
}
