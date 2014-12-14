\version "2.18.2"

breaks = {
  s2.*8 \break
  s2.*8 \break
  s2.*8 \break
}

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\include "Rondeau.ily"