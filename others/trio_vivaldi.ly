\version "2.16.2"

\include "../tagline.ily"


\header {
  title = "Trio"
  composer = "Antonio Vivaldi (1678-1741)"
  meter = "Allegro ma cantabile"
}

global = {
  \key d \minor
  \numericTimeSignature
  \time 2/4

  % ligatures a la blanche
  \set Timing.baseMoment = #(ly:make-moment 1 2)
  \set Timing.beatStructure = #'(1)
  \set Timing.beamExceptions = #'((end . (((1 . 16).(4))))) 
  
  % alterations
  \accidentalStyle #'Score "modern-cautionary"
  
  \override ParenthesesItem #'padding = #0.1
  \override ParenthesesItem #'font-size = #2
}

hairpinBetweenText =
#(define-music-function (parser location leftText rightText) (markup? markup?)	
   #{
     \once \override Hairpin #'stencil =
     #(lambda (grob)
        (ly:stencil-combine-at-edge
         (ly:stencil-combine-at-edge
          (ly:stencil-aligned-to (grob-interpret-markup grob leftText) Y CENTER)
          X RIGHT
          (ly:stencil-aligned-to (ly:hairpin::print grob) Y CENTER)
          0)
         X RIGHT
         (ly:stencil-aligned-to (grob-interpret-markup grob rightText) Y CENTER)
         0.6))
   #})

parenthesizedHairpin = \hairpinBetweenText \markup "(" \markup ")"

  
altoRecorderI = \relative c'' {
  \global

  r8 d g4 ~ | g8 d g a | bes 4 a | g8 d ees4 ~ | ees8 c d a | bes g bes'4 | a g | 
  fis r | r r8 d | g4 fis | g r8 bes | a4 ~ a16 g fis e | d4 r8 d | ees4 d | 
  a8 a'16 bes c8 bes16 a | bes8 d, g d | c'8 bes4 a8 ~ | a d, f d  | bes' a4 g8 ~ | 
  g c, ees c | a' fis4 c8 ~ | c bes16( c) d( c) bes a | bes8 g' a fis | g4 r | 
  d'2 ~ d | c ~ c | fis, ~ fis | g4 r | g8 d g4 ~ | g8 d g a | bes4 aes ~ | 
  
  aes8 g16 fis g8 a | d,4 ees | d8 c16 bes c8 a | bes d bes'4 | a8 g16 fis g8 a | 
  d, g bes4 | a8 g16 fis g8 a | d,4 r | d'8 c4 bes8 ~ | bes a16 g f8 d | ees g4 ees8 | 
  c'8 bes4 a8 ~ | a g16 f ees8 c | d f4 d8 | bes' a4 g8 ~ | g f16 ees d8 bes | 
  f'4. ees16 d | g4. f16 ees | a4. g16 f | bes8 a16 g f8 e | f2 | bes8 a16 g f8 e | 
  f ees16 d c8 bes | c2 | bes4 r | r r8 f'| bes4 a | bes r8 d8 | c4 ~ c16 bes a g | 
  
  f4 r8 f | g4 d | c8 f( g f) | d' bes4 a8 | g ees( f ees) | c' a4 g8 | f d( ees d) | 
  bes' d,( ees d) | bes' f d bes | c4.-\trill bes8 | bes c16 d ees f g a | 
  bes8 f d\trill c16 bes | bes'8 f d\trill c16 bes | f'2  | bes8( d bes g) | 
  ees( f16 g f8 ees) | a( c a f) | d( ees16 f ees8 d) | g( bes g ees) | 
  \appoggiatura d cis4. a'8 | bes( a16 g) a8( g16 f) | g8( f16 e) f8( e16 d) | 
  
  cis8( a cis e) | bes'( gis) a( fis) | g( e) f( d) | bes'( cis,) d( g) | f4( e)\trill | 
  d r | r r8 a' | d4 cis | d r8 f, | e4 ~ e16 d cis b | a4 r8 a' | 
  bes4 f | e8 a d4 ~ | d8 a d e | f4 e | d8 a bes4 ~ | bes8 g a e | 
  f d f4 | e d | cis8 e16 f g8 f16 e | f8 d f d | g f4 e8 ~ | e a, c a | f' e4 d8 ~ | 
  d g, bes g | e' cis4 g'8 ~ | g f16 g a g f e | f8 d e cis | d4 r | 
  a'2 ~ a | g ~ g | cis ~ cis | d8 d, r4 | d ~ d16 f e d | 
  
  e4 ~ e16 g f e | f8 e16 d f8 g | a b16 cis d8 a | f e16 d f8 g | a4 r8 a | 
  d,16 d' d8 ~ d16 a a8~ | a16 fis fis8 ~ fis16 c' bes a | bes8( c d c  | bes a g f) | 
  e16 c' c8 ~ c16 g g8 ~ | g16 e e8 ~ e16 bes' a g | a8( bes c bes | a g f e) | 
  d16 bes' bes8 ~ bes16 f f8 ~ | f16 d d8 ~ d16 a' g f | g8( a bes a | g f e d) | 
  cis16 a' a8 ~ a16 e e8 ~ | e16 cis cis8 ~ cis16 g' f e | f4 r8 d | fis( ees d c) | 
  fis( ees d c) | g'16 fis g8 r d | b'( aes g f) | b( aes g f) | c'16 b c8 r c, | 
  
  d( b a g) | g'( ees d c) | aes'( f ees d) | b'( g f ees) | c' g aes c, | 
  des( c) g'( c,) | des( c) g'( c,) | c' g aes c, | b4. c8 | 
  c4 r | r r8 g' | c4 b | c8 g c4 ~ | c8 g c d | 
  ees4 d | c8 g aes4 ~ | aes8 f g d | ees c ees'4 | d c | b8 f16 g aes8 g16 f | 
  ees4 r | g2 ~ g | f ~ f | b, ~ b | c4 r | c\trill c\trill | 
  c8 g'16 f ees8 d | c4\trill c\trill | c16 d ees f g8 c, | aes'4\trill aes\trill | 
  
  aes8 c16 bes aes8 g | f4\trill f\trill | f16 g aes bes c8 f, | fis4\trill fis\trill | 
  fis8 c'16 bes a8 g | fis4\trill fis\trill | fis16 g a bes c8 a | bes g r bes | 
  bes16( c d8) d16( c bes8) | bes a4 a8 | a16( bes c8) c16( bes a8) | a g4 g8 | 
  g16( a bes8) bes16( a g8) | fis4 r | r r8 d | g4 fis | g r8 bes | 
  a4 ~ a16 g fis e | d8 d g4 ~ | g8 d g a | bes4 a | g8 d ees4 ~ | 
  
  ees8 c d a | bes4 r | d'2 ~ d | c ~ c | fis,2 ~ fis | g4 r | 
  g8 d g a | bes4 aes ~ | aes8 g16 fis g8 a | d,4 ees | d8 c16 bes c8 a | bes d bes'4 | 
  a8 g16 fis g8 a | d, g bes4 | a8 g16 fis g8 a | d,4 r | d'8.( c16) bes8.( a16) | 
  g4 f | ees2 | c'8.( bes16) a8.( g16) | f4 ees | d2 | bes'8.( a16) g8.( f16) | ees4 d | 
  c4. a'8 | fis a4 c8 | a c4 ees8 | c2 ~ | c8 bes16( c) d( c) bes( a) | bes8( fis) g( c) | 
  
  bes4( a)\trill | g8 d g bes | c2 ~ | c8 bes16( c) d( c) bes( a)  | bes8( fis) g( c) | 
  bes4( a)\trill | g r | d'2 ~ d | c ~ c | fis, ~ fis | d8 bes' c a | 
  g d g d | c' bes4 a8 ~ | a d, f d | bes' a4 g8 ~ | g c, ees c | 
  a' fis4 c8 ~ | c bes16( c) d( c) bes( a) | 
  bes8 g' a fis | g2\fermata \bar "|."
}

altoRecorderII = \relative c'' {
  \global
  
  r2 | r4 r8 d | g4 fis | g r8 bes | a4 ~ a16 g fis e | d4 r8 d | 
  ees4 bes | a8 d g4 ~ | g8 d g a | bes4 a | g8 d ees4 ~ ees8 c d a | 
  bes g bes'4 | a g | fis8 fis16 g a8 g16 fis | g4 r | d2 ~ d | 
  c ~ c | fis ~ fis | g4 r | r8 d g d | c' bes4 a8 ~ | a d, f d  | 
  bes' a4 g8 ~ | g c, ees c | a' fis4 c8 ~ | c bes16 c d c bes a | bes8 g' a fis | 

  g4 r | R2 * 26 | r8 f, bes4 ~ | bes8 f bes c | d4 c | bes8 f' g4 ~ | 
  g8 ees f c | d bes d4 | c bes | a8 a'( bes a) | r2 | r8 g( a g) | r2 | r8 f( g f) | 
  r f( g f) | r4 r8 d | a4. f'8  | d4 r | R2 * 16 | r8 a d4 ~ | 
  d8 a d e | f4 e | d8 a bes4 ~ | bes8 g a e | f d f'4 | e d | cis r | r r8 a | 
  d4 cis | d r8 f | e4 ~ e16 d cis b | a4 r8 a | bes4 f | e8 cis'16 d e8 d16 cis | 

  d4 r | a'2 ~ a | g ~ g | cis, ~ cis | d4 r | r8 d f d | g f4 e8 ~ | 
  e a, c a | f' e4 d8 ~ | d g, bes g | e' cis4 g8 ~ | g f16( g) a( g) f( e) | f8 d' e cis | 
  d4 r | R2 * 35 | r8 g, c4 ~ | c8 g c d | ees4 d  | c r | r r8 g | 
  c4 b | c r8 ees | d4( ~ d16 c b a) | g4 r8 g' | aes4 ees | d8 d16 ees f8 ees16 d | c8 c ees c | 
  f ees4 d8 ~ | d g, bes g | ees' d4 c8 ~ | c f, aes f | d' b4 f8 ~ | f ees16 f g f ees d | 

  ees8 c' d b | c4 r | R2 * 17 | r8 d g4 ~ | g8 d g a  | bes4 a | 
  g8 d ees4 ~ | ees8 c d a | bes g r4 | r r8 d' | g4 fis | g r8 bes | 
  a4( ~ a16 g fis e) | d8 d g d | c' bes4 a8 ~ | a d, f d | bes' a4 g8 ~ | 
  g c, ees c | a' fis4 c8 ~ | c bes16( c) d( c) bes( a) | bes8 g' a fis | g4 r | R2 * 29 | 
  r8 d g d | c' bes4 a8 ~ | a d, f d | bes' a4 g8 ~ | g c, ees c | 

  a' fis4 c8 ~ | c bes16( c) d( c) bes( a) | bes8 g' a fis | g4 r | d2 ~ d | 
  c ~ c | fis ~ fis | g8 bes,-\markup { \italic "(poco rit.)" } c a | 
  g2\fermata \bar "|." 
} 

bcMusic = \relative c' { 
  \global 

  r4 r8 g | bes, a g fis' | g4 d | g,8 a bes g | fis e fis d | g a bes g  | c4 cis | 
  d r8 g | bes, a g fis' | g4 d | g,8 a bes g | fis e fis d | g a bes g | c4 cis  | 
  d r8 d | g4 g | fis fis | f f | e e | ees ees | d d | d d  | g8 bes, c d | g4 g  | 
  fis fis | f f | e e | ees ees  | d d | d d | g8 bes, c d | g a bes a | g4 r8 fis  | 
  g, g' c b | c d bes c | bes g c fis, | g g, a' fis | g a bes g | c d bes fis | 

  g a bes g | c d bes c | d a fis d | bes' a16 g fis8 g | d4 b | c8 d ees c | 
  a' g16 f e8 f | c4 a | bes8 c d bes | g' f16 ees d8 ees | c4 bes | d8 c d bes | 
  ees d ees c | f ees f d | g a bes c | a g a f | g a bes c | a bes a g | f ees f f, | 
  bes4 r8 bes' | d, c bes a' | bes4 f | bes,8 c d bes  | a g a f | bes d c bes | 
  ees4 e | f r | bes8 a g f | ees4 c | a'8 g f ees | d4 bes | d bes | d bes | f' f, | 

  bes r | d bes | d bes | a8 f' bes a | g4. ees8 | c d ees c | f4. d8 | bes c d bes | 
  bes'4. g8 | a b cis a | a,2 ~ a ~ a ~ a ~ a ~ a ~ a | d4 r8 d' | f, e d cis' | d4 a | 
  d,r8 d | cis b cis a | d f e d | g4 gis | a r8 d | f, e d cis'  | d4 a | d, r8 d  | 
  cis b cis a | d f e d  | g,4 gis  | a r8 a'8 | d4 d | cis cis | c c | b b | bes bes | 
  a2 ~ | a8 a, cis a | d f g a | d4 d  | cis cis | c c | b b | bes bes | a2 ~ | 

  a8 a, cis a | d f g a | d, d'16 cis d8 d, | cis cis'16 b cis8 cis, | d d'16 cis d8 g, | 
  a g f cis | d c bes4 | a8 b cis a | fis'8. fis16 fis8. fis16  | d8. d16 d8. d16 | 
  g2 ~ g2 | c,8. c16 c8. c16 | c8. c16 c8. c16 | f2 ~ f2 | bes,8. bes16 bes8. bes16 | 
  bes8. bes16 bes8. bes16 | bes2 ~ bes | a8. a16 a8. a16 | a8. a16 a8. a16 | d8 e f d | 
  c2 ~ c2 | bes8 a bes g | f'2 ~ f | ees8 d ees c | g'2 ees f g | ees4 f ~ | f8 ees d c  | 

  f ees d c | r c f4 | g g, | c r8 c' | ees, d c b'  | c4 g | c, r8 c'  | ees, d c b' | 
  c4 g | c, r8 c | b a b g | c ees d c  | f4 fis | g r8 g | c4 c | b b | bes bes | a a | 
  aes aes | g2 ~ | g8 g, b g | c ees f g | c, d ees d  | c4 r | c8 d ees d  | c4 r | 
  f8 g aes g  | f4 r | f8 g aes g  | f4 r | d8 e fis e  | d4 r | d8 e fis e  | d4 r | 
  g8 a bes a  | g4 g | fis fis | f f | e e | ees ees | d r8 g | bes, a g fis' | g4 d | 

  g, r8 g' | fis e fis d | g4 r8 g | bes, a g fis' | g4 d | g, r8 g' | fis e fis d | 
  g4 g | fis fis | f f | e e | ees ees | d2 ~  | d8 d fis d | g bes, c d  | g,4 r8 fis' | 
  g bes c c, | d d' bes fis | g bes c fis, | g g, a' fis | g a bes g | c d bes c | 
  bes a bes g | c d bes c | d c d d, | R2 * 2 | c8 d ees c | R2 * 2 | bes8 c d bes | 
  R2 * 2 | a8 bes c a | d d' d,4 | d8 d' d,4 | d8 e fis e | d4 r8 fis | g d ees c | 

  d4 d, | g'8 a bes g | a g fis e | d4 r8 fis | g d ees c | d4 d, | g g' | fis fis | 
  f f | e e | ees ees | d2 ~ | d8 d fis d | g g, c d | g,4 g' | fis fis | f f | e e | 
  ees ees | d2 ~ | d8 d fis d | g g, c d  | g,2\fermata \bar "|."
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Ajouter des chiffrages ici.
  
}

breaksBasseSolo = {
  s2*10 \break s2*11 \break s2*11 \break s2*9  \break s2*10 \break s2*10 \break
  s2*10 \break s2*11 \break s2*12 \break s2*11 \break s2*13 \break 
  \pageBreak 

  s2*9  \break s2*12 \break s2*13 \break s2*11 \break s2*12 \break s2*12 \break
  s2*12 \break s2*12 \break s2*9  \break s2*15 \break s2*12 \break
}

breaksFlutes = {
  s2*7 \break s2*9 \break s2*8 \break s2*9 \break s2*9 \break s2*8 \break s2*8 \break 
  \pageBreak 

  s2*9 \break s2*8 \break s2*8 \break s2*9 \break s2*9 \break s2*9 \break s2*8 \break s2*6 \break 
  \pageBreak 

  s2*6 \break s2*6 \break s2*6 \break s2*7 \break s2*8 \break s2*8 \break s2*8 \break s2*7 \break
  s2*8 \break s2*6 \break \pageBreak
  
  s2*8 \break s2*7 \break s2*7 \break s2*8 \break s2*10 \break s2*8 \break s2*8 \break
}

breaksConducteur = {
  
  s2*9 \break s2*9 \break s2*10 \break \pageBreak 
  s2*9 \break s2*9 \break s2*9 \break s2*11 \break \pageBreak 
  s2*11 \break s2*10 \break s2*11 \break s2*11 \break \pageBreak
  s2*11 \break s2*8 \break s2*8 \break s2*8 \break \pageBreak
  s2*10 \break s2*9 \break s2*10 \break s2*9 \break \pageBreak
  s2*10 \break s2*10 \break s2*11 \break s2*11 \break \pageBreak
  s2*9 \break s2*8 \break s2*9 \break s2*9 \break \pageBreak
}

lettres = {
  \set Score.markFormatter = #format-mark-circle-alphabet

  s2*31 \mark \default
  s2*27 \mark \default
  s2*15 \mark \default
  s2*17 \mark \default
  s2*31 \mark \default
  s2*36 \mark \default
  s2*19 \mark \default
  s2*18 \mark \default
  s2*18 \mark \default
  s2*30 \mark #11
}

editFluteI = {
  \global
  s8 s-\parenthesize-\f s4
  s2*7
  s4. s8-\parenthesize-\mf
  s2*6
  s8 s8-\parenthesize-\f s4
  s2*8
  s2-\parenthesize-\mf
  s2*8
  s2*21
  s2-\parenthesize-\trill
  s2*2
  s2-\parenthesize-\trill
  
  s2
  s4. s8-\parenthesize-\mf
  s2*31
  s4. s8-\parenthesize-\mf
  s2*5 
  s8 s-\parenthesize-\f s4
  s2*16
  s2-\parenthesize-\mf
  s2*27
  
  \parenthesizedHairpin s8\< s4. s2 s4\! s4
  \parenthesizedHairpin s8\< s4. s2 s4\! s4
  \parenthesizedHairpin s8\< s4. s2 s4. s8\!
  
  s2*5
  s4.-\parenthesize-\trill s8
  s2
  s4. s8-\parenthesize-\mf
  s2 
  s8 s8-\parenthesize-\f s4
  s2*8
  s2-\parenthesize-\mf
  
  s2*25
  s4. s8-\parenthesize-\mf
  s2*3
  s8 s8-\parenthesize-\f s4
  s2*5
  s2-\parenthesize-\mf
  s2*37
  s2-\parenthesize-\mf
  s2*6
  s8 s-\parenthesize-\f s4
  s2*6
  s8 s8_\parenthesize-\f ^\markup { \italic "(poco rit.)" }
}

editFluteII = {
  \global
  s2 s4. s8-\parenthesize-\mf
  s2 *5
  s8 s-\parenthesize-\f s4
  s2*8
  s2-\parenthesize-\mf
  s2*6
  s8 s8-\parenthesize-\f s4
  s2*34
  s8 s8-\parenthesize-\f s4
  
  s2*31
  s8 s-\parenthesize-\f s4
  s2*7
  s4. s8-\parenthesize-\mf
  s2*14
  s8 s8-\parenthesize-\f s4
  s2*43
  
  s8 s-\parenthesize-\f s4
  s2*3
  s4. s8-\parenthesize-\mf
  s2*6
  s8 s-\parenthesize-\f s4
  s2*25
  
  s8 s-\parenthesize-\f s4
  s2*5
  s4. s8-\parenthesize-\mf
  s2*3
  s8 s-\parenthesize-\f s4
  s2*37
  s8 s-\parenthesize-\f s4
  s2*8
  s2-\parenthesize-\mf 
  s2*5
  s8 s-\parenthesize-\f s4
}


%{
%
% Conducteur
%
\bookpart {
  \score {
    \new GrandStaff <<
      \new Staff \with {
        fontSize = #-3
        \override StaffSymbol #'staff-space = #(magstep -3)
      }
      { 
        << 
          \lettres 
          \new Voice { 
            \voiceOne \voiceOneStyle \altoRecorderI 
          }
          \new Voice { \voiceTwo \voiceTwoStyle \altoRecorderII }
        >> 
      }
      \new Staff \with { instrumentName = "Basse"  } 
        { \clef bass \bcMusic }
    >>
    \layout { }
    \midi {
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }
  }
}
%}


%
% Conducteur
%
% {
\bookpart {
  \score {
    \new GrandStaff 
    <<
      \new Staff \with { 
        instrumentName = "Flûte I"  
        fontSize = #-3
        \override StaffSymbol #'staff-space = #(magstep -3)
      } { 
        << 
          \lettres 
          \breaksConducteur
          \editFluteI
          \altoRecorderI 
        >> 
      }
      \new Staff \with { 
        instrumentName = "Flûte II"  
        fontSize = #-3
        \override StaffSymbol #'staff-space = #(magstep -3)
      } { 
        \altoRecorderII 
      }
      \new Staff \with { 
        instrumentName = "Basse"  
      }{ 
         \clef bass        
         \bcMusic
      }
    >>
    \layout {
      \context {
        \Staff \RemoveEmptyStaves
      }
    }
    
    \midi {
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }
    
  }
}
%}


% {
%
% Parties de flute
%
\bookpart {
  \score {
    \new GrandStaff <<
      \new Staff \with { 
        instrumentName = "Flûte I" 
      } {
        \compressFullBarRests 
        << 
          \lettres 
          \editFluteI
          \breaksFlutes
          \altoRecorderI 
      >>
      }
      \new Staff \with { 
        instrumentName = "Flûte II" 
      } { 
        \compressFullBarRests
        <<
          \editFluteII
          \altoRecorderII 
        >>
      }
    >>
    \layout {
      \context {
        \Staff \RemoveEmptyStaves
      }
    }
  }
}
%}


% {
%
% Basse
%
\bookpart {
  \score {
    \new Staff {
      \compressFullBarRests 
      \clef bass 
      << \lettres \bcMusic \bcFigures >>
    }
    \layout { }
  }
}
%}
