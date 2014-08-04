\version "2.18.2"
\include "k58.ily"

#(set-global-staff-size 20.5)

\header {
  title = "K58"
  meter = "FUGA"
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
  \layout { }
}
