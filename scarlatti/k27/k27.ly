\version "2.18.2"
\include "k27.ily"

breaks = {
  \partial 2.*5/6
  \repeat volta 2 {
    s2 s8 s2.*3 \break s2.*4 \break s2.*4 \break s2.*4 \break \pageBreak
    s2.*4 \break s2.*4 \break s2.*4 \break s2.*3 s8 \break \pageBreak
  }
  \repeat volta 2 {
    s2 s8 s2.*3 \break s2.*3 \break s2.*3 \break s2.*3 \break s2.*4 \break \pageBreak
    s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \break s2.*3 s8 \break \pageBreak
  }
}

#(set-global-staff-size 16)

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
      \breaks
      {s2.*31 \pageBreak}
      >>
    }
  >>
  \layout { indent = 0 }
}
