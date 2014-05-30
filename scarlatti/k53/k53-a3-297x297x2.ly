\version "2.18.2"
\include "k53.ily"

#(set-global-staff-size 20.3)

\header {
  title = "K53"
  meter = "Presto"
  tagline = ##f
}

\paper {
  #(set-paper-size "a3")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  
  top-margin = 12 \cm
  bottom-margin = .3 \cm
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        {s1*41 \pageBreak}
        \right
      >>
    }
    \new Staff = "left" { 
      <<
      \clef bass \left 
      >>
    }
  >>
  \layout { }
}
