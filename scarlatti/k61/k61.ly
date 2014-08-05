\version "2.18.2"

breaks = {
  s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \pageBreak
  s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \pageBreak
  s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \pageBreak
  s2*5 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \pageBreak
  s2*5 \break s2*5 \break s2*4 \break s2*4 \break s2*4 \pageBreak
  s2*4 \break s2*5 \break s2*5 \break s2*5 \break s2*5 \pageBreak
}

#(set-global-staff-size 20)

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\include "k61.ily"