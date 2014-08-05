\version "2.18.2"

breaks = {
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*3 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
}

#(set-global-staff-size 17)

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\include "k41.ily"