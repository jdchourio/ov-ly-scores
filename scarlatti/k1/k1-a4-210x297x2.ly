\version "2.18.2"
\include "k1.ily"

\header {
  title = "K1"
  meter = "Allegro"
  tagline = ##f
}

#(set-global-staff-size 20)

\paper {
  #(set-paper-size "a4")
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
