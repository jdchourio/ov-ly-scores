\version "2.18.2"

#(set-global-staff-size 15.9)

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  
  left-margin = 3 \cm
  right-margin = 3 \cm
}

breaks = {}

\include "k41.ily"