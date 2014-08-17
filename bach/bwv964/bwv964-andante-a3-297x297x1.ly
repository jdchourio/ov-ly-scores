\version "2.18.2"

cstr = \change Staff = "right"
cstl = \change Staff = "left"

breaks = {
  s2.*13 \break
}

#(set-global-staff-size 17.2)

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\include "bwv964-andante.ily"
