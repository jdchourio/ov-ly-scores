\version "2.18.2"

\include "../../include/general.ily"

breaks = {
    s2. \noBreak s2. \noBreak s2. \noBreak s2. \break
    s2. \noBreak s2. \noBreak s2. \noBreak s2. \break 

    s2. \noBreak s2. \noBreak s2. \noBreak s2. \break
    s2. \noBreak s2. \noBreak s2. \noBreak s2. \break
    s2. \noBreak s2. \noBreak s2. \noBreak s2. \break
}

#(set-global-staff-size 20)
\paper { print-all-headers = ##t }
\include "z661-sarabande.ily"
