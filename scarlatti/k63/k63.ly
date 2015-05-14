\version "2.18.2"

\include "../../general.ily"

breaks = {
  \repeat volta 2 {
    s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*6 \pageBreak
    s2*6 \break
  }
  \repeat volta 2 {
    s2*6 \break s2*6 \break s2*5 \break s2*5 \break s2*6 \pageBreak
  }
}

#(set-global-staff-size 20)
\include "k63.ily"
