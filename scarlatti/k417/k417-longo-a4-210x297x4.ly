\version "2.16.2"

\include "../../general.ily"
\include "../../a4-210x297.ily"
\include "k417.ily"

#(set-global-staff-size 16.3)
 

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

