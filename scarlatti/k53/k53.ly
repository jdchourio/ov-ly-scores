\version "2.18.2"
\include "k53.ily"

#(set-global-staff-size 21)

breaks = {
  s1*4 \break s1*5 \break s1*4 \break s1*4 \break s1*4 \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \pageBreak
  s1*5 \break s1*5 \break s1*5 \break s1*5 \break s1*5 \break s1*5 \pageBreak  
  s1*5 \break s1*5 \break s1*5 \break s1*5 \break s1*4 \break s1*5 \pageBreak  
}

\header {
  title = "K53"
  meter = "Presto"
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
        {s1*41 \pageBreak}
        \right
      >>
    }
    \new Staff = "left" { 
      <<
      \clef bass \left 
      >>
    }
  >>
  \layout { }
}
