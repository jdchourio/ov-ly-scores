\version "2.18.2"

breaks = {
  s1 \noBreak s1 \break s1 \noBreak s1 \break s1 \noBreak s1 \break
  s1 \noBreak s1 \break s1 \noBreak s1 \break s1 \noBreak s1 \pageBreak
  s1 \noBreak s2 \bar "" \break s2 \noBreak s1 \break s1 \noBreak s2 \bar "" \break
  s2 \noBreak s1 \break s1 \noBreak s2 \bar "" \break s2 \noBreak s1 \break s1 \noBreak s1 \pageBreak
}

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\include "bwv964-adagio.ily"