\version "2.18.2"

\include "../../include/general.ily"

breaks = {
  \repeat volta 2 {
    s1*2 \break s1*3 \break s1*3 \break s1*3 \break s1*3 \pageBreak
  }
  \repeat volta 2 {
    s1*3 \break s1*3 \break s1*4 \break s1*3 \break s1*4 \pageBreak
  }
}

#(set-global-staff-size 20)
\include "k59.ily"
