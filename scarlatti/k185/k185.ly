\version "2.18.2"

breaks = {
  \repeat volta 2 {
    s1*6 \break s1*6 \break s1*6 \break s1*6 \break s1*6 \break s1*4
  } \alternative {
    { s1 }
    { s1 \break \pageBreak }
  }
  \repeat volta 2 {
    s1*5 \break s1*5 \break s1*4 \break s1*4 \break s1*5 \break s1*5 \pageBreak
  }
}

#(set-global-staff-size 19)

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\include "k185.ily"