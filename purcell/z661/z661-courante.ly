\version "2.18.2"

\include "../../include/general.ily"

breaks = {
  \partial 8
  \repeat volta 2 {
    s8 s1. \noBreak s1. \noBreak s1. \noBreak s1. \break
    s1. \noBreak s1. \noBreak s1. \noBreak s1. \break
    s1. \noBreak 
  }
  
  \partial 8
  \repeat volta 2 {
    s8 s1. \noBreak s1. \noBreak s1. \break
    s1. \noBreak s1. \noBreak s1. \noBreak s1. \break
    s1. \noBreak s1. \noBreak s1. \noBreak s1. \noBreak s1. \break
  }
}

#(set-global-staff-size 20)
\include "z661-courante.ily"
