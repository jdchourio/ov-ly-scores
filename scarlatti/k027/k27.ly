\version "2.18.2"

\include "../../include/general.ily"

breaks = {
  \partial 2.*5/6
  \repeat volta 2 {
    s2 s8 s2.*3 \break s2.*4 \break s2.*4 \break s2.*4 \break \pageBreak
    s2.*4 \break s2.*4 \break s2.*4 \break s2.*3 s8 \break \pageBreak
  }
  \repeat volta 2 {
    s2 s8 s2.*3 \break s2.*3 \break s2.*3 \break s2.*3 \break s2.*4 \break \pageBreak
    s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \break s2.*3 s8 \break \pageBreak
  }
}

#(set-global-staff-size 18)
\include "k27.ily"
