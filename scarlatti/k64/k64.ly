\version "2.18.2"
\include "k64.ily" 

breaks = {
    s2*4 \break s2*5 \break s2*4 \break s2*5 \break s2*5 \pageBreak
    s2*4 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \pageBreak
}

#(set-global-staff-size 20)

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
      \clef bass \left 
    }
  >>
  \layout { }
}
