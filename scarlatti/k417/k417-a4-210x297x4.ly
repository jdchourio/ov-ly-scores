\version "2.16.2"
\include "k417.ily"

#(set-global-staff-size 16.7)

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
    \time 4/2
    \new Staff = "right" {
      << 
         { \shiftDurations #-1 #0 \keepWithTag #'urtext \rightOne } 
         \\ 
         { \shiftDurations #-1 #0 \keepWithTag #'urtext \rightTwo } 
      >>
    }
    \new Staff = "left" { 
      \clef bass \shiftDurations #-1 #0 \keepWithTag #'urtext \left 
    }
  >>
  \layout { indent = 0 }
}
