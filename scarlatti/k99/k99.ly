\version "2.18.2"

\include "../../general.ily"

breaks = {
  \repeat volta 2 {
    s2.*3 \break s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \pageBreak
    s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \pageBreak
  }
  \repeat volta 2 {
    s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \pageBreak  
    s2.*5 \break s2.*4 \break s2.*4 \break s2.*5 \break s2.*5 \pageBreak  
  }
}

#(set-global-staff-size 17.5)
\include "k99.ily"
