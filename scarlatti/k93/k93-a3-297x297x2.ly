\version "2.18.2"

#(set-global-staff-size 18.2)

\paper {
  #(set-paper-size "a3" 'landscape)
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  
  first-page-number = 2
  two-sided = ##t
  inner-margin = 1 \cm
  outer-margin = 13.3 \cm
}

breaks = {}

\include "k93.ily"