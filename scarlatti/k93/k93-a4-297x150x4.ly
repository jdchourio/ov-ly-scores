\version "2.18.2"

\include "../../tagline.ily"

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a4" 'landscape)
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  oddFooterMarkup = \gitTagline
  evenFooterMarkup = \gitTagline
  
  top-margin = 3 \cm
  bottom-margin = 3 \cm
}

breaks = {}

\include "k93.ily"
