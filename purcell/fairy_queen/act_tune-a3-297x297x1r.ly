\version "2.18.2"

breaks = {
  s2.*6 \break
  s2.*12 \break
  s2.*6 \break
  s2.*12 \break
}

#(set-global-staff-size 19)

\paper {
  #(set-paper-size "a3" 'landscape)
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  
  first-page-number = 1
  two-sided = ##t
  inner-margin = 1 \cm
  outer-margin = 13.3 \cm
  top-margin = .5 \cm
  bottom-margin = .6 \cm 
}

\include "act_tune.ily"