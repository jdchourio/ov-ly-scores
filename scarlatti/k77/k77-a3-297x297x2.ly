\version "2.18.2"

#(set-global-staff-size 20)

\paper {
  #(set-paper-size "a3")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  top-margin = 12 \cm
  bottom-margin = .3 \cm
}

breaks = { s2.*17 \break s2.*30 \break s4.*20 \break }

\include "k77.ily"