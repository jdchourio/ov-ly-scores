\version "2.18.2"

\include "../../include/general.ily"
\include "../../include/a4-175x297.ily"

breaks = { 
  s1. s1. \break 
  \repeat unfold 11 {
    s1. s2. \bar "" \break
    s2. s1. \break
  }
  s1. s2. \bar "" \break
}

#(set-global-staff-size 20.0)
\include "bwv804-duetto3.ily"
