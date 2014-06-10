\version "2.18.2"
\include "k99.ily"

breaks = {
  \repeat volta 2 {
    s2.*3 \break s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \pageBreak
    s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \pageBreak
  }
  \repeat volta 2 {
    s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \pageBreak  
    s2.*5 \break s2.*4 \break s2.*4 \break s2.*5 \break s2.*5 \pageBreak  
  }
}

#(set-global-staff-size 17.5)

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
      <<
      \clef bass \left 
      {s2.*43 \pageBreak}
      >>
    }
  >>
  \layout { }
}
