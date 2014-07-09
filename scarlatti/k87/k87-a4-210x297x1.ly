\version "2.18.2"
\include "k87.ily"

#(set-global-staff-size 15.4)

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
        { \rightOne } \\
        { \rightTwo }
      >>
    }
    \new Staff = "left" { 
      <<
        \clef bass \leftOne \\
        \leftTwo
      >>
    }
  >>
  \layout { indent = 0 }
}
