\version "2.18.2"
\include "k63.ily"

breaks = {
  \repeat volta 2 {
    s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*6 \pageBreak
    s2*6 \break
  }
  \repeat volta 2 {
    s2*6 \break s2*6 \break s2*5 \break s2*5 \break s2*6 \pageBreak
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
      \clef bass \left
    }
  >>
  \layout { }
}
