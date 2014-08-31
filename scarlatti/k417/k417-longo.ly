\version "2.16.2"
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
 
\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

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

