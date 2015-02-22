\version "2.18.2"

\include "../../tagline.ily"
  oddFooterMarkup = \gitTagline
  evenFooterMarkup = \gitTagline

#(set-global-staff-size 16.6)

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

breaks = {s2.*31 \pageBreak}

\include "k27.ily"
