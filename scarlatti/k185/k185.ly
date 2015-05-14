\version "2.18.2"

\include "../../include/general.ily"

breaks = {
  \repeat volta 2 {
    s1*6 \break s1*6 \break s1*6 \break s1*6 \break s1*6 \break s1*4
  } \alternative {
    { s1 }
    { s1 \break \pageBreak }
  }
  \repeat volta 2 {
    s1*5 \break s1*5 \break s1*4 \break s1*4 \break s1*5 \break s1*5 \pageBreak
  }
}

#(set-global-staff-size 19)
\include "k185.ily"
