\version "2.18.2"

breaks = {
  s2*150 \pageBreak
}

#(set-global-staff-size 15.8)

\paper {
  #(set-paper-size "a3")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  
  top-margin = 12 \cm
  bottom-margin =.3 \cm
}

\include "bwv964-fuga.ily"
