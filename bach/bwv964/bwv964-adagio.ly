\version "2.18.2"

\include "../../general.ily"

breaks = {
  s1 \noBreak s1 \break s1 \noBreak s1 \break s1 \noBreak s1 \break
  s1 \noBreak s1 \break s1 \noBreak s1 \break s1 \noBreak s1 \pageBreak
  s1 \noBreak s2 \bar "" \break s2 \noBreak s1 \break s1 \noBreak s2 \bar "" \break
  s2 \noBreak s1 \break s1 \noBreak s2 \bar "" \break s2 \noBreak s1 \break s1 \noBreak s1 \pageBreak
}

#(set-global-staff-size 18)
\include "bwv964-adagio.ily"
