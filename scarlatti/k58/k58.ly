\version "2.18.2"
\include "k58.ily"

#(set-global-staff-size 22)

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
}

breaks = {
  s1*4 \break s1*3 \break s1*3 \break s1*3 \break s1*3 \break \pageBreak
  s1*3 \break s1*3 \break s1*3 \break s1*3 \break s1*3 \break \pageBreak
  s1*3 \break s1*3 \break s1*3 \break s1*3 \break s1*3 \break \pageBreak
  s1*3 \break s1*3 \break s1*3 \break s1*3 \break
 
}

\score { 
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        \breaks
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
