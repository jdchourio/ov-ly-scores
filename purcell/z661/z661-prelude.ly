\version "2.18.2"

breaks = {
  s1 \noBreak s1 \break
  s1 \noBreak s1 \noBreak s1 \break
  s1 \noBreak s1 \break
  s1 \noBreak s1 \noBreak s1 \break
  s1 \noBreak s1 \break \pageBreak
  
  s1 \noBreak s1 \break
  s1 \noBreak s1 \noBreak s1 \break
  s1 \noBreak s1 \break
  s1 \noBreak s1 \noBreak s1 \break
  s1 \noBreak s1 \noBreak s1 \break
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

\include "z661-prelude.ily"