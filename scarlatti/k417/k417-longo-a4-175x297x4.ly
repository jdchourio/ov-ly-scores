\version "2.19.20"

\include "../../include/general.ily"
\include "../../include/a4-175x297.ily"
\include "k417.ily"

#(set-global-staff-size 15.9)
 

%
% Edition de Longo
%
\score {
  \new PianoStaff <<
    \time 4/4
    \new Staff = "right" {
      << { \keepWithTag #'longo \rightOne } 
         \\ 
         { \keepWithTag #'longo \rightTwo }
      >>
    }
    \new Staff = "left" { 
      \clef bass \keepWithTag #'longo \left 
    }
  >>
  \layout { indent = 0 }
}

