\version "2.18.2"
\include "k59.ily"

#(set-global-staff-size 23)

\header {
  title = "K59"
  meter = "Allegro"
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
      \right
    }
    \new Staff = "left" { 
      <<
      \clef bass \left 
      {s1*14 \break}
      >>    }
  >>
  \layout { }
}