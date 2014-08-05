\version "2.18.2"

#(set-global-staff-size 19)

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

breaks = { s2.*17 \break s2.*30 \break s4.*20 \break }

\include "k77.ily"