\version "2.18.2"

breaks = {
  \partial 4 
  \repeat volta 2 {
    s4 s1 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break \pageBreak
    s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1 s2. \break \pageBreak
  }
  \partial 4 
  \repeat volta 2 {
    s4 s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break \pageBreak
    s1*2 \break s1*3 \break s1*2 \break s1*2 \break s1 s2. \break \pageBreak
  }
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

\include "k35.ily"