\version "2.18.2"

\include "../../tagline.ily"

#(set-global-staff-size 15.3)

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  oddFooterMarkup = \gitTagline
  evenFooterMarkup = \gitTagline
}

breaks = {s2.*34 \break}

\include "k87.ily"
