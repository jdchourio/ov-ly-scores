\version "2.18.2"

\include "../../general.ily"

breaks = {
  \repeat volta 2 {
    s1*2 \break s1*2 \break s1*3 \break s1*2 \break s1*3 \pageBreak
    s1*2 \break s1*2 \break s1*2 \break s1*3 \break s1*3 \pageBreak
  }
  \repeat volta 2 {
    s1*2 \break s1*2 \break s1*3 \break s1*2 \break s1*3 \pageBreak
    s1*3 \break s1*2 \break s1*2 \break s1*3 \break s1*2 \pageBreak
    s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \pageBreak
  }
}

#(set-global-staff-size 17)
\include "bwv964-allegro.ily"
