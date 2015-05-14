\version "2.18.2"

\include "../../include/general.ily"

breaks = {
  \partial 8
  \repeat volta 2 {
    s8 s1 \noBreak s1 \noBreak s1 \break
    s1 \noBreak s1 \noBreak s1 \break
    s1 \noBreak s1 \noBreak s1 \break
    s1 \noBreak s1 \noBreak s1 \break
    s1 \noBreak s1 \noBreak
  } \alternative {
    { s1 }
    { s2 s4. }
  } \pageBreak
  
  \partial 8
  \repeat volta 2 {
    s8 s1 \noBreak s1 \noBreak s1 \noBreak s1 \break
    s1 \noBreak s1 \noBreak s1 \noBreak s1 \break
    s1 \noBreak s1 \noBreak s1 \noBreak s1 \break
    s1 \noBreak s1 \noBreak s1 \noBreak s1 \break
    s1 \noBreak s1 \noBreak s1 \noBreak s1 \noBreak s1 \break
  }
}

#(set-global-staff-size 20)
\paper { print-all-headers = ##t }
\include "z661-allemande.ily"
