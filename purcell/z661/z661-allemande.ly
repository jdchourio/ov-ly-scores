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
  title = "Almand"
  opus = "Z661"
  tagline = ##f
}

global = {
  \key g \minor
  \time 2/2
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \set Timing.beamExceptions = #'( (end . (((1 . 16) . (4 4 4 4)))) )
}

rightUp = \relative c'' {
  \global
  
  \partial 8
  \repeat volta 2 {
    a8
    \repeatGliss a \voiceOne bes2 ~ bes8. bes16\glissando a4
    \oneVoice a8. a16 d,8. g16 c,8. f16 bes,8. ees16 ~
    ees8. bes16 \voiceOne a8. d16 ~ d8. d16 c4^\shakeTurned
    
    \oneVoice d4. r16 d \arpeggioParenthesis <d g d'>4.\arpeggio r16 d'
    d( g,4.) d'16\glissando ees4. ~ ees16 ees
    ees( fis,4.) g16 g4.(^\plainShake fis!16 g)
    
    a4.-\prall r16 bes a8( bes16 c) bes8.^\shake a16
    \repeatGliss a \once \stemUp bes4\glissando g8. fis'16\glissando g4. ~ g16 g
    g16( c,4.) f16 f4.^\plainShake  ees8
    
    d2^\plainShake r8 r16 g f8 ees16 d
    c4^\plainShake  ~ c8. d16 ees d c8 bes8.^\shake a16
    \repeatGliss a \voiceOne bes4.-\prall ~ bes16 c d2 ~
    
    d4. ~ d16 b c2 ~
    c4 ~ c16 bes a bes bes4.^\plainShake a8 
  } \alternative {
    { a2 a }
    { a2 a4. }
  }
  
  \partial 8
  \repeat volta 2 {
    \oneVoice r16 a
    \voiceOne a4. ~ a16 a \repeatGliss a bes2 ~ 
    bes4. r16 bes aes4^\shake g8.\noBeam aes16\glissando
    g4. r16 d' d4. ~ d16 d
    \repeatGliss d ees4. ~ ees16 ees ees4^\shake d8. ees16
    
    r8 r16 d d8. d16 \repeatGliss d g4 ~ g8. d16
    \oneVoice \stemUp \repeatGliss d cis4. 
    %\once \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
    %\once \override Glissando.minimum-length = #5
    %\once \hideNotes
    %\grace d \glissando cis4
    
    r16 e e( a,4.) d16\glissando
    g,4.^\shake r16 c \repeatGliss e, f4. ~ f16 bes
    \stemNeutral \voiceOne bes e,4. f16 e4.^\plainShake d8
    
    \oneVoice r8 d4 ~ d16 g f4.^\plainShake d8
    \repeatGliss d ees4\glissando c8. f16 f4.^\plainShake ees8
    d4.^\plainShake r16 a'\glissando \stemUp bes4.-\prall ~ bes16 bes
    c bes8. a32[ bes] g8\noBeam c16 c4.^\plainShake bes8
    
    a4^\shake\glissando f8. e'16\glissando \oneVoice f4.-\prall ~ f16 f
    f8.[ ees16 d8. c16\glissando] bes4.^\shake c16 a
    \repeatGliss a bes4\glissando g8. a'16\glissando \voiceOne bes4. ~ bes16 a\glissando
    g2 ~ g4. ~ g16 a
    
    fis2^\shake s2
    fis,8. a16 d,8. a'16\glissando bes4. ~ bes16 bes
    a4. bes16 g g4.^\plainShake fis8
    \oneVoice g2. r8 g
    \arpeggioParenthesis <g, bes d g>1\arpeggio
  }
}

rightDown = \relative c' {
  \global
  
  \partial 8
  \repeat volta 2 {
    s8 \stemDown
    \repeatGliss f \stemDown <g d>2 ~ q8. g16 <c, fis>4
    s1 s2 g4 s
    
    s1*8 s2
    \voiceTwo r4 r8 r16 a'
    
    \repeatGliss a g2 ~ g4. ~ g16 g
    fis2 g ~
  } \alternative {
    { g4 fis8. e16 <d fis>2 }
    { g4 fis8. e16 <d fis>4. }
  }
  
  \partial 8
  \repeat volta 2 {
    s8
    r4 d r r8 r16 fis
    \repeatGliss f ees1
    s2 r4 g
    g2 a
    
    r4 g s2
    s2 \cstl \voiceFour s4 d ~ 
    d cis s2
    \cstr \voiceTwo r4 d4 ~ d cis
    
    s1 s1 s1 s1
    s1 s1 s2
    d'2 ~ 
    d4. ~ d16 d\glissando c2 ~
    
    c4. ~ c16 a bes8.[^\prall d16 a8. c16]
    s2 r8 r16 fis,! g4(
    f4.) s8 s2
    s1 
    s1
  }
}

leftUp = \relative c {
  \global
  
  \partial 8
  \repeat volta 2 {
    r8 \voiceOne 
    r4  d g a
    bes2 a4 g ~
    g f ees2
    
    r8 r16 d g2 g4 ~
    g g <<{ \voiceOne r4 c ~ c } 
      \new Voice { \voiceTwo a2 ~ a4 }>>
    a4 bes2
    
    r4 a d2 ~
    d4 d ees2 ~
    ees4 c f2 ~
    
    f4 d g2 ~ 
    g4 g fis2 
    g,2 ~ g8. g16 f4
    
    r4 ees ~ ees8. ees16 ~ ees4
    d1 ~
  } \alternative {
    { d2 ~ d8. c16 bes8. a16 }
    { d2 ~ d4. ~ }
  }
  
  \partial 8
  \repeat volta 2 {
    d8
    \repeatGliss c d2.-\prall d4
    c1
    r8 r16 d g4 ~ g2 ~
    g8. g16 c2 f4
    
    s2 r8 r16 g g4 ~
    g e f2
    e d
    a r4 a ~
    
    a d, ~ d g ~
    g g a2
    r4 f g2
    r4 g ~ g c ~
    
    c a d2 ~ 
    d4 a d2
    g,2 ~ g8. g16 s4
    r ees2.
    
    r4 d2. ~ 
    d1
    r4 c d2
    g, d4 fis
    g1
  }
}

leftDown = \relative c {
  \global
  
  \partial 8
  \repeat volta 2 {
    \voiceTwo s8 
    g1 ~ g g2. a4
    
    bes2 b 
    c1 \voiceFour \once \override NoteColumn.force-hshift = #1 d2. \voiceTwo e4
    
    fis2 s4 d
    g2. g4
    a2. f4
    
    bes2. bes4
    a2. a4
    r4 g,2 f4
    
    ees2. ees4
    d1 ~ 
  } \alternative {
    { d2 r2 }
    { d2 ~ d4. ~}
  }
  
  \partial 8
  \repeat volta 2 {
    d8
    r2 d
    r4 c ~ c2
    b' ~ <g b>
    c f
    
    bes ~ bes4 g
    a2 ~ a
    a r4 g
    r g, a2
    
    bes b
    c r4 a
    bes2. g4
    ees'2 e
    
    f2. d4
    fis2. d4
    r4 g,2 f4
    ees2. ees4
    
    d1 ~
    d
    c2 r4 d 
    r g,2 s4
    r g2.
  }
}

breaks = {
  \partial 8
  \repeat volta 2 {
    s8 s1 \noBreak s1 \noBreak s1 \break
    s1 \noBreak s1 \noBreak s1 \break
    s1 \noBreak s1 \noBreak s1 \break
    s1 \noBreak s1 \noBreak s1 \break
    s1 \noBreak s1 \noBreak
  } \alternative {
    { s1 }
    { s2 s4. }
  } \pageBreak
  
  \partial 8
  \repeat volta 2 {
    s8 s1 \noBreak s1 \noBreak s1 \noBreak s1 \break
    s1 \noBreak s1 \noBreak s1 \noBreak s1 \break
    s1 \noBreak s1 \noBreak s1 \noBreak s1 \break
    s1 \noBreak s1 \noBreak s1 \noBreak s1 \break
    s1 \noBreak s1 \noBreak s1 \noBreak s1 \noBreak s1 \break
  }
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        \breaks
        \new Voice { \rightUp }
        \new Voice { \rightDown }
      >>
    }
    \new Staff = "left" { 
      <<
        \breaks 
        \new Voice { \clef bass \leftUp }
        \new Voice { \leftDown }
      >>
    }
  >>
  \layout { indent = 0 }
}
