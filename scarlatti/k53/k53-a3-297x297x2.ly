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

breaks = {s1*41 \pageBreak}

\include "k53.ily"