\version "2.18.2"

cstr = \change Staff = "right"
cstl = \change Staff = "left"

breaks = {
  s2.*13 \break
}

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

\include "bwv964-andante.ily"
