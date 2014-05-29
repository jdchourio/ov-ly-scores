\version "2.18.2"
\include "k30.ily"

breaks = {
  s2.*7 \break s2.*6 \break s2.*6 \break s2.*6 \break s2.*6 \break s2.*6 \pageBreak
  s2.*6 \break s2.*6 \break s2.*6 \break s2.*6 \break s2.*6 \break s2.*6 \pageBreak
  s2.*7 \break s2.*7 \break s2.*6 \break s2.*7 \break s2.*6 \break s2.*7 \pageBreak  
  s2.*6 \break s2.*7 \break s2.*7 \break s2.*6 \break s2.*6 \break s2.*7 \pageBreak  
}

#(set-global-staff-size 20.4)

\header {
  title = "K30"
  meter = "FUGA"
  tagline = ##f
}

\paper {
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
      \clef bass \left 
    }
  >>
  \layout { }
}
