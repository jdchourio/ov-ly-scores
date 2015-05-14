\version "2.16.2"

\include "../../include/general.ily"
\include "k417.ily"

longoBreaks = {
  s1*3 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak 
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak 
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*3 \break \pageBreak 
  s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break \pageBreak 
  s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break \pageBreak 
  s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break \pageBreak 
  s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break \pageBreak 
  s1*2 \break s1*2 \break s1*2 \break s1*2 \break
}

#(set-global-staff-size 20)
 
%
% Edition de Longo
%
\score {
  \new PianoStaff <<
    \time 4/4
    \new Staff = "right" {
      << \longoBreaks
         { \keepWithTag #'longo \rightOne } 
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

