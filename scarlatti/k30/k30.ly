\version "2.18.2"

\include "../../tagline.ily"

breaks = {
  s2.*7 \break s2.*6 \break s2.*6 \break s2.*6 \break s2.*6 \break s2.*6 \pageBreak
  s2.*6 \break s2.*6 \break s2.*6 \break s2.*6 \break s2.*6 \break s2.*6 \pageBreak
  s2.*7 \break s2.*7 \break s2.*6 \break s2.*7 \break s2.*6 \break s2.*7 \pageBreak  
  s2.*6 \break s2.*7 \break s2.*7 \break s2.*6 \break s2.*6 \break s2.*7 \pageBreak  
}

#(set-global-staff-size 18)

\paper {
  print-page-number = ##f
  %between-system-padding = #0.1
  %between-system-space = #0.1
  %ragged-last-bottom = ##f
  %ragged-bottom = ##f
  oddFooterMarkup = \gitTagline
  evenFooterMarkup = \gitTagline
}

\include "k30.ily"
