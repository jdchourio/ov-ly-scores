\version "2.18.2"

\include "k41.ily"

breaks = {
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*3 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
}


%
% Edition: trois A4 portrait
%
#(set-global-staff-size 15.5)

\header {
  title = "K41"
  meter = "FUGA"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  %%annotate-spacing = ##t
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        %\breaks
        { \rightOne }
        { \rightTwo }
      >>
    }
    \new Staff = "left" { 
      <<
        { \clef bass \leftOne }
        { \clef bass \leftTwo } 
      >>
    }
  >>
  \layout { }
}
