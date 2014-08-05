\version "2.18.2"

#(set-global-staff-size 18.9)

\paper {
  #(set-paper-size "a4" 'landscape)
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  
  top-margin = 6 \cm
}

breaks = {s2.*43 \pageBreak}

\include "k99.ily"
