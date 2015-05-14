\version "2.18.2"

\include "../../include/general.ily"

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
\paper { print-all-headers = ##t }
\include "z661-prelude.ily"
