\version "2.18.2"
\include "k100.ily"

breaks = {
  \repeat volta 2 {
    s1.*3 \break s1.*3 \break s1.*3 \break s1.*3 \break s1.*4 \pageBreak
  }
  \repeat volta 2 {
    s1.*3 \break s1.*3 \break s1.*3 \break s1.*3 \break s1.*3 \break s1.*3 \pageBreak  
    s1.*3 \break s1.*3 \break s1.*3 \break s1.*3 \break s1.*4 \pageBreak  
  }
}

#(set-global-staff-size 18)

\header {
  title = "K100"
  meter = "Allegrissimo"
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
      {s1.*16 \pageBreak}
      >>
    }
  >>
  \layout { }
}
