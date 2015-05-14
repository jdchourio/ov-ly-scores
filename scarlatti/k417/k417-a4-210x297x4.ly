\version "2.16.2"

\include "../../include/general.ily"
\include "../../include/a4-210x297.ily"
\include "k417.ily"

#(set-global-staff-size 16.5)

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
