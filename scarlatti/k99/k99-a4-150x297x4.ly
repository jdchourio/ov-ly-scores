\version "2.18.2"
\include "k99.ily"

#(set-global-staff-size 19.1)

\header {
  title = "K99"
  meter = "Allegro"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  
  left-margin = 3 \cm
  right-margin = 3 \cm
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      \right
    }
    \new Staff = "left" { 
      <<
      \clef bass \left 
      {s2.*43 \pageBreak}
      >>
    }
  >>
  \layout { }
}
