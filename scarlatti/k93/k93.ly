\version "2.18.2"

\include "../../tagline.ily"

#(set-global-staff-size 22)

\paper {
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  oddFooterMarkup = \gitTagline
  evenFooterMarkup = \gitTagline
}

breaks = {
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break
}

\include "k93.ily"
