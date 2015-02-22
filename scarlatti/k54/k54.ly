\version "2.18.2"

\include "../../tagline.ily"

#(set-global-staff-size 20)

breaks = {
  s1.*3 \break s1.*3 \break s1.*3 \break s1.*3 \pageBreak
  s1.*3 \break s1.*3 \break s1.*3 \break s1.*3 \break s1.*3 \pageBreak
  s1.*3 \break s1.*3 \break s1.*3 \break s1.*3 \break s1.*3 \pageBreak  
  s1.*3 \break s1.*3 \break s1.*3 \break s1.*3 \break s1.*4 \pageBreak  
}

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  oddFooterMarkup = \gitTagline
  evenFooterMarkup = \gitTagline
}

\include "k54.ily"
