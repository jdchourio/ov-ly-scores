\version "2.18.2"

\include "../../general.ily"

breaks = {
  \repeat volta 2 {
    s4.*5 \break s4.*6 \break s4.*6 \break s4.*6 \pageBreak
    s4.*6 \break s4.*6 \break s4.*6 \break s4.*6 \break s4.*4 \pageBreak
  }
  \repeat volta 2 {
    s4.*5 \break s4.*7 \break s4.*6 \break s4.*6 \break s4.*7 \pageBreak
    s4.*6 \break s4.*6 \break s4.*6 \break s4.*6 \break s4.*6 \pageBreak
  }
}

#(set-global-staff-size 24)
\include "k62.ily"
