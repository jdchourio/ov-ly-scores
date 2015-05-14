\version "2.18.2"

\include "../../include/general.ily"

breaks = {
  s2.*9 \break s2.*10 \break s2.*11 \break s2.*12 \break s2.*8 \break s2.*9 \break \pageBreak
  s2.*9 \break s2.*10 \break s2.*8 \break s2.*8 \break s2.*8 \break s2.*8 \break 
}

#(set-global-staff-size 16)

\paper { #(set-paper-size "a4" 'landscape) }
\layout { 
  \context {
    \Score
    \override NonMusicalPaperColumn.line-break-permission = ##f
    \override NonMusicalPaperColumn.page-break-permission = ##f
  }
}

\include "poule.ily"
