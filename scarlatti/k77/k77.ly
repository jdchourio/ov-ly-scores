\version "2.18.2"
\include "k77.ily"

breaks = {
    s2.*3 \break s2.*4 \break s2.*4 \break s2.*4 \break s2.*2
    s2.*2 \break s2.*4 \break \pageBreak
    s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \pageBreak 
    s4.*5 \break s4.*5 \break s4.*5 \break s4.*5 \pageBreak
    s4.*5 \break s4.*5 \break s4.*5 \break s4.*5 \pageBreak
}

#(set-global-staff-size 19)

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
      % {s1*11 \pageBreak}
      >>
    }
  >>
  \layout { }
}
