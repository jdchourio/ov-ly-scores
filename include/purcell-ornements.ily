\version "2.18.2"

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

