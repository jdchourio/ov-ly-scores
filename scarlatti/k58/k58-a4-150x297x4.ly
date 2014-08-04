\version "2.18.2"
\include "k58.ily"

#(set-global-staff-size 20.1)

\header {
  title = "K58"
  meter = "FUGA"
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
      << 
        \rightOne 
        \\
        \rightTwo 
      >>
    }
    \new Staff = "left" { 
      R1*6
      <<
        \clef bass \leftOne 
        \\
        \clef bass \leftTwo 
      >>
    }
  >>
  \layout { indent = 0 }
}
