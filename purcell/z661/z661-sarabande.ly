\version "2.18.2"

\include "../../tagline.ily"

cstr = \change Staff = "right"
cstl = \change Staff = "left"
shake = \markup { \path #.2 #'(
    (moveto 0 0)
    (lineto 1.3 .4)
    (moveto 0 .4)
    (lineto 1.3 .8)
    ) }

plainShake = \markup { \path #.2 #'(
    (moveto 0 0)
    (lineto 1.3 .4)
    (moveto 0 .4)
    (lineto 1.3 .8)
    (moveto -0.3 0.1)
    (lineto -0.7 1.1)
    ) }

shakeTurned = \markup { \path #.25 #'(
    (moveto 0 0)
    (lineto 1.3 .4)
    (moveto 0 .4)
    (lineto 1.3 .8)
    (moveto -0.5 0)
    (curveto -0.5 1.5 2 2 2 0)
    ) }

repeatGliss = #(define-music-function (parser location grace)
  (ly:pitch?)
  #{
    % the next two lines ensure the glissando is long enough
    % to be visible
    \once \override Glissando.springs-and-rods
      = #ly:spanner::set-spacing-rods
    \once \override Glissando.minimum-length = #4.5
    \once \hideNotes
    \grace $grace \glissando
  #})


\header {
  title = "Saraband"
  opus = "Z661"
  tagline = ##f
}

global = {
  \key g \minor
  \override Staff.TimeSignature.style = #'single-digit
  \time 3/4
  \override Staff.Rest #'style = #'classical
  %\override Staff.NoteCollision #'merge-differently-dotted = ##t
  %\set Timing.beamExceptions = #'( (end . (((1 . 16) . (4 4 4 4)))) )
}

right = \relative c'' {
  \global
  
  \stemUp bes4\prallprall bes4.^\plainShake c8
  \repeatGliss c d4 a4.^\plainShake \stemDown d8
  \once \stemUp \repeatGliss d g,8. g'16\glissando ees8.[ c16^\shake bes8. a16]
  \stemNeutral a2^\plainShake g8. a16
    
  bes8.\prallprall c16 d8. ees16 f8. bes,16\glissando
  a8. bes16 c8.[ d16 ees8. f16]
  g8.[ a16 bes8.\prallprall \stemUp a,16] bes8.\prallprall c16
  c2^\plainShake bes4 \bar ".."
  
  \stemNeutral d4 ees8.\prallprall g16 f4
  \repeatGliss f b, c8.\prallprall ees16 d4
  g,8. g'16 aes8. g16 f8.^\shake ees16
  d2^\plainShake c4
  
  r8 r16 e\glissando f8. c16\glissando d8. a16
  \repeatGliss a bes8. b16 c8.\prallprall g16 a8.\prallprall e16
  \repeatGliss g fis8. d'16 ees d8. c^\shake bes16
  a2^\plainShake g4 \bar ".."
  
  r8 r16 e'\glissando f8. c16\glissando d8. a16\glissando
  bes8.\prallprall b16 c8.\prallprall g16 a8. e16
  \repeatGliss g fis8. d'16 ees d8. c^\shake bes16
  a2^\plainShake g4 \bar "|.|"
}

leftUp = \relative c' {
  \global
  
  \voiceOne
  r4 d2
  a d4 ~ 
  d c8. bes16 a8. g16 
  r4 fis s4
    
  s2. s s
  r4 f bes, \bar ".."
  
  r4 c'2
  r4 a b
  c2. ~ 
  c8. c16 b4 s
  
  c2 s4
  g2.
  d2.
  d2 g,8. d'16 \bar ".."
  
  r4 a'2
  g2. 
  d
  d2 g,4 \bar "|.|"
}

leftDown = \relative c' {
  \global
  
  \voiceTwo 
  g2 g4 ~ 
  g f2
  ees4 c2
  d \once \stemUp g,8. d'16
    
  g4 f8.^\plainShake ees16 d8. ees16
  f4 ees8.^\shake d16 c4
  \oneVoice bes8.^\shake a16 g4 d
  \voiceTwo f2 s4 \bar ".."
  
  bes'2 aes4
  g2 f4
  ees c f
  g2 c,8. g'16
  
  r4 a fis
  r ees c
  r fis, g
  r d s
  
  g'2 fis4
  r ees c
  r fis, g
  r d s \bar "|.|"
}

breaks = {
    s2. \noBreak s2. \noBreak s2. \noBreak s2. \break
    s2. \noBreak s2. \noBreak s2. \noBreak s2. \break 

    s2. \noBreak s2. \noBreak s2. \noBreak s2. \break
    s2. \noBreak s2. \noBreak s2. \noBreak s2. \break
    s2. \noBreak s2. \noBreak s2. \noBreak s2. \break
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      %<< 
      %\breaks
        \new Voice { \right }
        %>>
    }
    \new Staff = "left" { 
      <<
        %\breaks 
        \new Voice { \clef bass \leftUp }
        \new Voice { \leftDown }
      >>
    }
  >>
  \layout { indent = 0 }
}
