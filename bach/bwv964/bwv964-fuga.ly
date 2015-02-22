\version "2.18.2"

\include "../../tagline.ily"

breaks = {
  s2*5 \break s2*5 \break s2*5 \break s2*4 \break s2*5 \break s2*5 \pageBreak
  s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \pageBreak
  s2*5 \break s2*5 \break s2*6 \break s2*6 \break s2*5 \break s2*6 \pageBreak
  s2*5 \break s2*6 \break s2*5 \break s2*6 \break s2*5 \break s2*6 \pageBreak
  s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \pageBreak
  s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \pageBreak
  s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \pageBreak
  s2*4 \break s2*5 \break s2*4 \break s2*5 \break s2*4 \break s2*5 \pageBreak
  s2*5 \break s2*5 \break s2*5 \break s2*4 \break s2*5 \pageBreak
  s2*5 \break s2*5 \break s2*5 \break s2*4 \break s2*4 \break
}

#(set-global-staff-size 17)

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

\include "bwv964-fuga.ily"
