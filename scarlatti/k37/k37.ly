\version "2.18.2"

\include "../../include/general.ily"

breaks = {
  \repeat volta 2 {
    s1*3 \break s1*3 \break s1*3 \break s1*2 \break s1*2 \pageBreak
    s1*3 \break s1*3 \break s1*3 \break s1*3 \break s1*3 \pageBreak
  }
  \repeat volta 2 {
    s1*3 \break s1*3 \break s1*3 \break s1*3 \pageBreak
    s1*3 \break s1*3 \break s1*3 \break s1*3 \pageBreak
  }
}

#(set-global-staff-size 18)
\include "k37.ily"
