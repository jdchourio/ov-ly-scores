\version "2.16.2"

\include "../../tagline.ily"
\include "k417.ily"

breaks = {
  s\breve*3 \break s\breve*3 \break s\breve*3 \break s\breve*3 \break s\breve*3 \break \pageBreak
  s\breve*3 \break s\breve*3 \break s\breve*3 \break s\breve*3 \break s\breve*3 \break s\breve*3 \break \pageBreak
  s\breve*3 \break s\breve*3 \break s\breve*3 \break s\breve*3 \break s\breve*3 \break s\breve*3 \break \pageBreak
  s\breve*3 \break s\breve*3 \break s\breve*3 \break s\breve*2 \break s\breve*2 \break s\breve*2 \break \pageBreak
  s\breve*2 \break s\breve*2 \break s\breve*2 \break s\breve*2 \break s\breve*2 \break s\breve*2 \break \pageBreak
  s\breve*2 \break s\breve*2 \break s\breve*2 \break s\breve*2 \break s\breve*2 \break s\breve*2 \break \pageBreak
  s\breve*2 \break s\breve*2 \break s\breve*2 \break s\breve*2 \break s\breve*2 \break \pageBreak
  s\breve*2 \break s\breve*2 \break s\breve*2 \break s\breve*2 \break s\breve*2 \break \pageBreak
  s\breve*2 \break s\breve*2 \break s\breve*2 \break s\breve*2 \break
}

#(set-global-staff-size 20)

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  oddFooterMarkup = \gitTagline
  evenFooterMarkup = \gitTagline
}

\score {
  \new PianoStaff <<
    \time 4/2
    \new Staff = "right" {
      << \breaks 
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
