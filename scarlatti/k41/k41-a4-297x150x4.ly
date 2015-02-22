\version "2.18.2"

\include "../../tagline.ily"

#(set-global-staff-size 15.1)

\paper {
  #(set-paper-size "a4" 'landscape)
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  oddFooterMarkup = \gitTagline
  evenFooterMarkup = \gitTagline
  
  top-margin = 6 \cm
}

\include "k41.ily"
