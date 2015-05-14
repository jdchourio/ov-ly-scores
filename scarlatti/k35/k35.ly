\version "2.18.2"

\include "../../general.ily"

breaks = {
  \partial 4 
  \repeat volta 2 {
    s4 s1 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break \pageBreak
    s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1 s2. \break \pageBreak
  }
  \partial 4 
  \repeat volta 2 {
    s4 s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break \pageBreak
    s1*2 \break s1*3 \break s1*2 \break s1*2 \break s1 s2. \break \pageBreak
  }
}

#(set-global-staff-size 20)
\include "k35.ily"
