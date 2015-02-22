\version "2.18.2"

\include "../../tagline.ily"

#(set-global-staff-size 18.9)

\paper {
  #(set-paper-size "a3" 'landscape)
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f

  oddFooterMarkup = \gitTagline
  evenFooterMarkup = \gitTagline

  first-page-number = 1
  two-sided = ##t

  inner-margin = 1 \cm
  outer-margin = 13.3 \cm
  top-margin = .5 \cm
  bottom-margin = .6 \cm
}

breaks = {}

\include "k1.ily"
