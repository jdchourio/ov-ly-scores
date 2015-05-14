\version "2.18.2"

\include "../../general.ily"

breaks = {
    s2.*3 \break s2.*4 \break s2.*4 \break s2.*4 \break s2.*2
    s2.*2 \break s2.*4 \break \pageBreak
    s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \break s2.*4 \pageBreak 
    s4.*5 \break s4.*5 \break s4.*5 \break s4.*5 \pageBreak
    s4.*5 \break s4.*5 \break s4.*5 \break s4.*5 \pageBreak
}

#(set-global-staff-size 19)
\include "k77.ily"
