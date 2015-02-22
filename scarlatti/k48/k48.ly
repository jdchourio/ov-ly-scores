\version "2.18.2"

\include "../../tagline.ily"

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

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  oddFooterMarkup = \gitTagline
  evenFooterMarkup = \gitTagline
}

\include "k48.ily"
