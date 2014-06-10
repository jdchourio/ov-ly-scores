\version "2.18.2"
\include "k99.ily"

#(set-global-staff-size 18.8)

\header {
  title = "K99"
  meter = "Allegro"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4" 'landscape)
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  
  top-margin = 6 \cm
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
