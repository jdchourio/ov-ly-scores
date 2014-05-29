\version "2.18.2"
\include "k30.ily"

#(set-global-staff-size 16.7)

\header {
  title = "K30"
  meter = "FUGA"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4" 'landscape)
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  
  top-margin = 3 \cm
  bottom-margin = 3 \cm
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
        \right
    }
    \new Staff = "left" { 
      \clef bass \left 
    }
  >>
  \layout { }
}
