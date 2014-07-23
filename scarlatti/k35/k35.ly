\version "2.18.2"
\include "k35.ily"

breaks = {
  \partial 4 
  \repeat volta 2 {
    s4 s1 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break \pageBreak
    s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1 s2. \break \pageBreak
  }
  \partial 4 
  \repeat volta 2 {
    s4 s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break \pageBreak
    s1*2 \break s1*3 \break s1*2 \break s1*2 \break s1 s2. \break \pageBreak
  }
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
      <<
      \clef bass \left 
      \breaks
      { s1*19 \pageBreak}
      >>
    }
  >>
  \layout { indent = 0 }
}