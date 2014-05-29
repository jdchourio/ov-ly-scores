\version "2.18.2"

\include "k41.iliy"

breaks = {
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
  s1*3 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak
}


%
% Edition 1: trois A4 portrait
%
%{
#(set-global-staff-size 15.5)

\header {
  title = "K41"
  meter = "FUGA"
  tagline = ##f
}

\paper {
  %#(set-paper-size "a4" 'landscape)
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
        { \rightOne } %\\
        { \rightTwo }
      >>
    }
    \new Staff = "left" { 
      <<
        { \clef bass \leftOne } %\\
        { \clef bass \leftTwo } 
      >>
    }
  >>
  \layout { }
}
%}

%
% Edition 2 : 2 pages 30x30 en 2 par feuille
%
#(set-global-staff-size 15.9)

\header {
  title = "K41"
  meter = "FUGA"
  tagline = ##f
}

\paper {
  %#(set-paper-size "a4" 'landscape)
  print-page-number = ##f
  %%annotate-spacing = ##t
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  
  left-margin = 3 \cm
  right-margin = 3 \cm
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        { \rightOne } %\\
        { \rightTwo }
      >>
    }
    \new Staff = "left" { 
      <<
        { \clef bass \leftOne } %\\
        { \clef bass \leftTwo } 
      >>
    }
  >>
  \layout { }
}
