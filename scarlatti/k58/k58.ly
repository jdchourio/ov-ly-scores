\version "2.18.2"

#(set-global-staff-size 20)

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

breaks = {
  s1*4 \break s1*3 \break s1*3 \break s1*3 \break s1*3 \break \pageBreak
  s1*3 \break s1*3 \break s1*3 \break s1*3 \break s1*3 \break \pageBreak
  s1*3 \break s1*3 \break s1*3 \break s1*3 \break s1*3 \break \pageBreak
  s1*3 \break s1*3 \break s1*3 \break s1*3 \break
}

\include "k58.ily"