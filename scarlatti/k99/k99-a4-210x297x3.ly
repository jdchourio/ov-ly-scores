\version "2.18.2"

#(set-global-staff-size 19.5)

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

breaks = {s2.*43 \break}

\include "k99.ily"