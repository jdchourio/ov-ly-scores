\version "2.18.2"
\include "k54.ily"

#(set-global-staff-size 20)

breaks = {
  s1.*3 \break s1.*3 \break s1.*3 \break s1.*3 \pageBreak
  s1.*3 \break s1.*3 \break s1.*3 \break s1.*3 \break s1.*3 \pageBreak
  s1.*3 \break s1.*3 \break s1.*3 \break s1.*3 \break s1.*3 \pageBreak  
  s1.*3 \break s1.*3 \break s1.*3 \break s1.*3 \break s1.*4 \pageBreak  
}

\header {
  title = "K54"
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
      {s1.*27 \pageBreak}
      >>
    }
  >>
  \layout { }
}
