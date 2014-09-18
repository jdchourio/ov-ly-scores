\version "2.18.2"

cstr = \change Staff = "right"
cstl = \change Staff = "left"

breaks = {
  s2.*13 \break
}

#(set-global-staff-size 20)

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

\include "bwv964-andante.ily"