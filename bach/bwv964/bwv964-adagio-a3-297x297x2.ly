\version "2.18.2"

breaks = { \repeat unfold 22 { s2 \bar "" s2 \bar "|" } }

#(set-global-staff-size 20)

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
  top-margin = .5 \cm
  bottom-margin = .6 \cm
}

\include "bwv964-adagio.ily"