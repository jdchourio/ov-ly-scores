\version "2.18.2"

\header {
  piece = "Prélude"
  opus = "BWV809"
  % Enlever le pied de page par défaut
  tagline = ##f
}

#(set-global-staff-size 18)

\paper {
  %#(set-paper-size "a4")
  #(set-paper-size "a3")
}

global = {
  \key f \major
  \time 4/4
}

%{
csd = \change Staff="down"
csu = \change Staff="up"
sd = \stemDown
su = \stemUp
%}

% {
csd = ""
csu = ""
sd = ""
su = ""
% }

right = \relative c' {
  \global
  
  \su r16 c-! d-! e-! f-! g-! a-! f-! bes-! c-! bes-! a-! g-! c-! bes-! c-!
  \mark \markup { \musicglyph #"scripts.segno" }
  a8 f \sd f'8. f16 f8.\mordent g16 e8.\prall f16
  
  f g f e \su d( e f a) b,( c d g) c,( d e g)
  a,( b c f) b,( c d f) g, a b e a, b c e
  
  f,8 a d8. d16 d g, a b \sd c d e c
  f g f e d g f g e8 c c'8. c16 
  c8. \tuplet 3/2 { b32 c a } b8. b16 b8 e, a8. a16
  
  a8. g32 f g8. g16 g8 c, f8. f16
  f a g f e f g e f g f e d g f g
  
  e c d e f g a f bes c bes a g c bes c
  a bes a g f e d c b g a b c d e f 
  g8.[\turn a16 d,8. c16] c \su g a b \sd c d e c
  
  
  f g f e d g f g e8 c f8.-\mordent f16
  f8. g16 ees8. ees16 ees f, g a bes c d bes
  
  ees f ees d c f ees f d8 bes << {bes'8. bes16} {g8. g16} \\ {d8. d16} >>
  << {bes'8. c16 a8. a16 a8 d, g8. g16 } {g8. g16 f8. f16 f8 s s4} \\ {e8. e16 e8. e16 d8 r d8. d16} >>
  
  << {g8. a16 f8. f16 f8. g16 e8. f16} \\ { c8. c16 c8. c16 bes8. bes16 bes8. bes16} >>
  << {f'8 d,16 e} \\ {a8 s} >> \su f16 g a f bes c bes a g c bes c
  a8 c, << {f8. f16 f4 e8. e16} \\ {r8 r16 \su c d c bes \csd a g4 } >>
  
  f'4 r16 \sd f' e f c f d f c f bes, f'
  \su a, f' bes, f' a, f' g, f' f, f' g, f' a, f' b, f'
  << {e g, a b} \\ {c s s s} >> c d d c32 d e8 f e d
  
  << {r8 a' g f e f g a } \\ {c,2 ~ c8 c b a} >>
  << {d16 g, b d b g b d f8 f f f} \\ {b,16 s8. r4 r16 d, f a f d f a} >>
  
  << {f'8 f f f} \\ {b, d d d} >> << {e e e e} {d d c c} \\ {g g g g} >>
  << {e' e e e} {c c c c} \\ {f, f f f} >> << {d' d d d} {g, g g g} \\ {f f f f}>>
  << {d' c c b} {g g g g} \\ {f e d d} >> << {c'16 g, a b c d e c} {g'} {e} >>
  
  
  f16 g f e d g f g e8 c << {c' c} \\ {r e,} >>
  << {c' b16 c d8 d d c16 d e8 e} \\ {d,4 r8 b' g4 r8 c} >>
  
  << {e d16 e f8 f f e16 f g8 g} \\ {a,4 r8 a b4 r8 b} >>
  << {g'16 b a g fis g e fis g8 d g8. g16} \\ {c,2 ~ c16 c b a b8. b16} >>
  
  
}

left = \relative c {
  \global
  
  R1
  \mark \markup { \musicglyph #"scripts.segno" }
  \sd r16 c d e f g a f bes c bes a g c bes c
  
  a8 f \csu f'8. f16 f8. g16 e8._\prall e16
  e8 \su \csd a, \csu \sd d8. d16 d8. e16 c8._\prall c16
  
  c e d c \csd b a g f e4 ~ e16 d c b 
  \su a g a f g8 \sd g' c,16 g' a b \csu c d e c
  f g f e d g f g c, d e g \csd f, g a c
  
  b c d \csu f \csd e, f g b a b c \csu e \csd d, e f a
  g8 \su c, \sd c'8. c16 c8. d16 bes8.\prall bes16
  
  bes8 c16 bes a g f e d c d bes c8 \su c,
  f4 \sd r8 f' g16 c b a g f e d 
  c8[ f] g[ \su g,]  c,4 \sd c''8. c16
  
  
  c8. d16\prall bes8. bes16 bes \su c, d e \sd f g a f
  bes c bes a g c bes c a8 f bes8. bes16
  
  bes8. c16 a8.\prall bes16 bes d, e f g a bes g
  c \su c, d e \sd f g a f bes a g f e d c bes
  
  \su a bes c e \sd d e f a g \su g, a bes c a bes c
  d,4 r8 \sd d' g16 a g f e c d e
  f g f e << {r8 r16 a \sd g8 s g16 c bes c} \\ {d, c bes a bes8[ g] c[ \su c,]} >>
  
  << {a''4} \\ {\su f,8 \sd f'16 e} >> f8 g a[ bes] a[ g]
  << {r8 d' c bes a bes c d g,4} \\ {f2 ~ f8 f e d c4} >>
  r16 c' b c g c a c g c f, c'
  
  e, c' f, c' e, c' d, c' c, c' d, c' e, c' f, c'
  g8 g, r g d r r4
  
  r16 g' b d b g b d r c, e g e c e g
  a f, a c a f a c b g b d b g b d
  e,8 e'16 f g8 g, c,4 c'8. c16
  
  
  c8. d16 b8. c16 c g a b c d e c 
  f g f e d g f g e g a b c d e c
  
  f g f e d e f d g a g f e f g e
  a8 g a d, g4 ~ g16 f e d
  
  cis a b cis d e f d g a g f e a g a
  f4 r8 f, ~ f16 a g f e d c b
  
  a g a f g4 c,8 c'16 b c8 d
  e f e d c2 ~ c8 c bes a g4 r16 g' fis g
  
  d g ees g d g c, g' bes, g' c, g' bes, g' a, g'
  g, g' a, g' b, g' cis, g' f g f e d e f d
  
  g a g f e a g a f4 r8 bes
  e,4 
}

breaksI = {
  s1*2 \break s1*2 \break s1*3 \break s1*2 \break s1*3 \break \pageBreak
  s1*2 \break s1*2 \break s1*3 \break s1*3 \break s1*2 \break s1*3 \break \pageBreak
  s1*2 \break s1*2 \break s1*2 \break s1*3 \break s1*2 \break s1*3 \break \pageBreak
  s1*2 \break s1*3 \break s1*3 \break s1*2 \break s1*2 \break s1*3 \break \pageBreak
  s1*2 \break s1*3 \break s1*2 \break s1*3 \break s1*2 \break s1*3 \break \pageBreak
  s1*2 \break s1*3 \break s1*2 \break s1*3 \break s1*3 \break s1*3 \break \pageBreak
  s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break\pageBreak
  s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*3 \break
}

breaksII = {
      s1*3 s2. \bar "" \break
   s4 s1*3 s2  \bar "" \break
   s2 s1*4             \break
      s1*4             \break
      s1*4             \break
      s1*3 s2. \bar "" \break
   s4 s1*3 s4  \bar "" \break
   s2. s1*2 s2  \bar "" \break
   \pageBreak

}

\score {
  \new PianoStaff <<
    \new Staff = "up" { 
      << \breaksII \right >>
    }
    \new Staff = "down" { \clef bass << \breaksII \left >> }
  >>
  \layout { }
}
