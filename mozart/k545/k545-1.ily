\version "2.16.0"

\header {
  title = "Sonate 16 in C major"
  subtitle = "Sonata facile"
  composer = "W. A. Mozart"
  opus = "K 545"
  piece = "Allegro"
  mutopiatitle = "Sonata Facile - First movement"
  mutopiacomposer = "MozartWA"
  mutopiainstrument = "Piano"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "IMSLP"
  maintainer = "Alejandro Sierra"
  maintainerEmail = "algsierra@gmail.com"

 footer = "Mutopia-2013/09/01-998"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}
  
%{ Abreviations
  Suffixes rh = right hand
           lh = left hand
  Prefixes pt = principal theme
           st = secondary theme
           cl = close
           dv = development
           cd = coda
           mt = middle theme
%}

#(define afterGraceFraction (cons 15 16))

%%% Right Hand

ptrha = \relative c'' {  
  c2 e4 g 
  b,4.( c16 d) c4 r4
  a'2 g4 c
  g f8\trill( e16 f e4) r4 % \break
  
  a,8 b16 c d e f g  a g f e d c b a
  g8 a16 b c d e f  g f e d c \tag #'first b \tag #'second b a g
  f8 g16 a b c d e  f e d c \tag #'first {b a g f} \tag #'second {b a g f}

  e8 f16 g  a b c d  e d c b a \tag #'first g \tag #'second g f e
}

ptrhb = \relative c'' {  
  b8 g'  e c  d g  e c
  d4 <b d g> g r4
}

ptrh = {
  \ptrha

  \relative c' {  
    d8 e16 f  g a b cis    d a b cis d e f g
    a b c! b  a g f e  f g a g  f e d c! 
  }
  
  \ptrhb
}

strha = \relative c' {  
  R1
  d''8( b) g4.( a16 b a8) g-!
  g8.\trill( fis16) fis4 r2
  d'8( b) g4.( a16 b a8) g-!

  g8.\trill( fis16) fis4 r2
}

strhb = \relative c'' {  
  \voiceOne d'4 r16 d16 b g e4 r16 e16 g e
  c'4 r16 c a fis d4 \oneVoice
}

strhc = \relative c'' {  
  \voiceOne r16 d16 fis d
  % 20
  b'4 r16 b g e c4 r16 c e c
  a'4 r16 a fis d b4  r16 g' d b \oneVoice
}

strh = {
  \strha
  \strhb
  \strhc
  \relative c'' {  
    a2 \acciaccatura b8 c4 \acciaccatura dis8 e4

    \acciaccatura { gis8 } a4. b32( a gis a) c8( a) c( a)
    b( g) d'2 c16 b a g

    \afterGrace a1 \startTrillSpan {g32[( a]) \stopTrillSpan}
     g4 g16 d g b d b g b c a fis a
     g4 g,16 d g b d b g b c a fis a
     g4 <d' b'> <b g'> r4
   }
}

dvrh = \relative c'' {  
  g4 g'16 d g bes d bes g bes c a fis a
  g4 g,16 d g bes d bes g bes  c a fis a
  g4 r r16 g' bes a g f e d 
  
  cis4 r r16 cis' e d  cis bes a g 
  f4  d16 a d f a f d f g e cis e
  d4 d,16 a d f  a f d f  g e cis e

  r16 d e f  g a b cis d4 r4
  r16 b c d e fis gis a b4 r
  r16 a e' d c b a g f4 r

  r16 g d' c b a g f e4 r
  r16 f c' b a g f e d4 r
  r16 e b' a gis f e d c4 r
  \break
  r16 bes d c  bes a g f  e f g a  bes c d e
}

ptirh = \relative c'' {
  a'4 r r <c, a'>
  <c g'> r r <c g'>
  <c f> r r <b f'>
  <c e> r r <c e>

  d16 d, e f  g a b cis  d a b cis  d e f g
  a b c b  a g f e  f g a g  f e d c

  \ptrhb
}

stvrh = {
  \transpose c f, { \strhb } 
  \transpose d g { 
    \strhc
     \relative c'' {  
       \voiceOne a2 \acciaccatura gis8 a4 \acciaccatura gis8 a4 \oneVoice
     }
  } 
  \relative c''' {  
    a2 \acciaccatura gis8 a4 \acciaccatura gis8 a4
    
    g8 a16 b c d e d c b a g  f e d c

    \afterGrace d1 \startTrillSpan  {c32[( d]) \stopTrillSpan}
    c4 c16 g c e  g e c e  f d b d c4
    c,16 g c e  g e c e  f d b d
    c4 <e' g c> c r 

  }
}


%%% Left Hand

ptlha = \relative c'' {  
  c,8 g' e g  c,  g' e g
  d g f g  c, g' e g
  c, a' f a  c, g' e g
  b, g' d g  c, g' e g
  
  f4 r4 r4 \clef bass <f, c'>
  <e c'> r4 r4 <e c'>
  <d c'> r4 r4 <d b'>  
}

ptlhb = \relative c' {  
  g,16 b d g  g, c e g  g, b d g  g, c e g  
  g,4 g' g, r
}

ptlh = {
  \ptlha
  \relative c {  
    <c c'> r4 r4 <c e>
    <f a>1
    f4. g8 a4. fis8
  }
  \ptlhb
}

stlha = \relative c {  
  cis'16 d cis d  cis d cis d  c d c d  c d c d

  b d b d \repeat unfold 3 { b d b d }
  c d b d  a d b d  c d b d  c d a d
  \repeat unfold 4 { b d b d }

  c d b d  a d b d  c d b d  c d a d
}

stlhb = \relative c' {  
  \change Staff="left" \oneVoice r16 \voiceTwo b \change Staff="right" d g b4 r16 c, e g c4
  \change Staff="left" \oneVoice r16 \voiceTwo a, c \change Staff="right" fis a4 
  \change Staff="left" \oneVoice r16 \voiceTwo b, \change Staff="right" d fis b4
}

stlhc = \relative c' {  
  % 20
  \change Staff="left" \oneVoice r16 \voiceTwo g b \change Staff="right" e g4 
  \change Staff="left" \oneVoice r16 \voiceTwo a, c \change Staff="right" e a4
  \change Staff="left" \oneVoice r16 \voiceTwo fis, a \change Staff="right" d fis4 
  \change Staff="left" \oneVoice r16 \voiceTwo g, b \change Staff="right" d g4
  \change Staff="left" \oneVoice
}

stlh = {
  \stlha
  \stlhb
  \stlhc
  \relative c' {
    \clef treble \repeat unfold 16 <c e>8

    d16 b' g b \repeat unfold 3 { d, b' g b } 
    \repeat unfold 4 { d, c' fis, c' }

    <g b>4 r r <a c d,>
    <g b> r r \clef bass <d, a' c>
    <g b> <g g,> <g g,> r  
  }
}

dvlh = \relative c {
  <g g'>4 r r \clef treble <d'' a' c>
  <g bes> r r \clef bass <d, a' c>
  r16 g, a bes  c d e fis g4 r
  
  r16 a,16 b! cis d e fis gis a4 r
  <d,, d'>4 r r \clef treble <a'' e' g>
  <d f>4 r r \clef bass <a, e' g>

  <d f>4 r r16 d' f e d c b a
  gis4 r r16 gis b a gis f! e d
  c4 r \clef treble r16 d' a' g f e d c
  \break

  b4 r r16 c g' f  e d c b 
  a4 r r16 b f' e  d c b a
  \clef bass gis4 r r16 a c b  a g f e
  
  d2 <c g' bes>
}
  
ptilha = \relative c {
  f8 g16 a  bes c d e f e d c  bes a g f
}

ptilh = \relative c {
  <f f'>4 r4 r2
  f8 g16 a  bes c d e f e d c  bes a g f  % \ptilha
  e8 f16 g  a b c d  e d c b  a g f e
  d8 e16 f  g a b c  d c b a  g f e d
  \transpose f c { \ptilha }
  
  \once \set fingeringOrientations = #'right
  <f a>1 
  f4. g8 a4. fis8

  \ptlhb
}

stvlh = {
  \relative c {
    \clef bass
    \change Staff="left" \oneVoice r16 \voiceTwo e g \change Staff="right" c e4 
    \change Staff="left" \oneVoice r16 \voiceTwo f, a \change Staff="right" c f4
    \change Staff="left" \oneVoice r16 \voiceTwo d, f b \change Staff="right" d4 
    \change Staff="left" \oneVoice r16 \voiceTwo e, g b \change Staff="right" e4
    
    r16 c e a c4 r16 d, f a d4
    \change Staff="left" \oneVoice r16 \voiceTwo b, \change Staff="right" d g b4
    r16 c, e g c4       
  }

  \relative c' {  
    r8 \repeat unfold 7 { <f a>8 }
    \change Staff="left" \oneVoice
    \clef bass r8 \repeat unfold 7 { <fis, c' ees>8 }
    \repeat unfold 4 { g16 e' c e }
    \repeat unfold 4 { g,16 f' b, f' }
    <c e>4 r r <g  d' f>
    \slurDown
    <c e> r r <g, d' f>
    <c e> <c c'> <c c,> r
  }
}


\score {
  \new PianoStaff <<
    \new Staff ="right" { 
      %\override Fingering #'avoid-slur = #'inside
      \keepWithTag #'first
      \repeat volta 2 { \ptrh \strh } \break 
      \repeat volta 2 {
	\dvrh 
	\phrasingSlurUp
	\keepWithTag #'second
	\transpose c f { \ptrha }
	\ptirh
	\transpose d g, { \strha }
	\stvrh
      }
    }
    \new Staff ="left" { 
      %\override Fingering #'avoid-slur = #'inside
      \repeat volta 2 { \ptlh \stlh } 
      \repeat volta 2 {
	\dvlh 
	\clef treble \transpose c f { \ptlha }
	\ptilh
	\clef treble \transpose c f { \stlha }	
	\stvlh
      }
    }
  >>
  \layout { indent=0 }
  \midi {
    \tempo 4 = 132
  }
}

