\version "2.18.2"
\include "k56.ily"

#(set-global-staff-size 16.3)

\header {
  title = "K56"
  meter = "Con spirito"
  tagline = ##f
}

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
      \right
    }
    \new Staff = "left" { 
      <<
      \clef bass \left 
      {s1.*31 \pageBreak}
      >>
    }
  >>
  \layout { }
}
