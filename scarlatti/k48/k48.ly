\version "2.18.2"

\include "../../general.ily"

breaks = {
  \repeat volta 2 {
    s4.*5 \break s4.*6 \break s4.*6 \break s4.*5 \break s4.*5 \break \pageBreak
    s4.*6 \break s4.*6 \break s4.*6 \break s4.*6 \break s4.*6 \break s4.*6 \break \pageBreak
  }
  \repeat volta 2 {
    s4.*6 \break s4.*6 \break s4.*6 \break s4.*5 \break s4.*5 \break \pageBreak
    s4.*5 \break s4.*5 \break s4.*5 \break s4.*6 \break s4.*6 \break s4.*6 \break \pageBreak
  }
}

#(set-global-staff-size 20)
\include "k48.ily"
