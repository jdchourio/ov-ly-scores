\version "2.16.2"

%sujet = 
%-\tweak #'extra-offset #'(0 . -4.5) 
%-\tweak #'layer #-1
% ^\markup { \with-color #(rgb-color 0.75 0.75 0.75) \filled-box #'(-3 . 3) #'(-3 . 3) #0 }

%sujet = -"[S]"

sujet = {}

\header {
  title = "K417"
  meter = "FUGA"
}

%{
\paper {
  #(set-paper-size "a4")
  %annotate-spacing = ##t
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}
%}

tempoMark = {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature key-signature)
  \once \override Staff.TimeSignature #'break-align-anchor-alignment = #LEFT
  \mark \markup \bold "Allegro moderato"
}

global = {
  \tempoMark
  \key d \minor
}

rightOne = \relative c'' {
  \global

  r1 r1 r1 | s1 s1 s1 s1 | d4 \sujet c bes a8 g | f4 e8 d cis a r a' | bes g cis a d e f g |
  f e d cis a'4 \sujet g | f e8 d c4 b8 a | gis e r e' f d gis e | a b c d c b a gis |
  a4 g f8 g a4 ~ | a g8 f e f g4 ~ | g f8 e d e f4 ~ | f e8 d cis d e4 | d8 r a2. ~ |
  a2 ~ a8 g f e | r2 d' ~ | d8 e f g f e d c | bes c d c bes a g f | c'1 ~ |

  c8 d e f e d c bes | a bes c g f g a bes | f'4 \sujet e d c8 bes | a4 g8 f e c r c' |
  d bes e c f g a bes | a g f e f2 | e8 c fis d g2 | f8 d gis e a4 \sujet g | f e8 d c4 b8 a |
  gis e r e f d gis e | a b c d c b a gis | e'4 e2 d8 c | bes c d2 c8 bes |
  a bes c2 bes8 a | g a bes2 a8 g | f g a4 ~ a8 g f e | d''4 \sujet c bes a8 g |

  f4 e8 d cis a r a | bes g cis a d4 e | f8 d g e a4 g | g2 ~ g8 e f d |
  e2 ~ e8 d e cis | d2 s4 g ~ | g8 f e d c4 f ~ | f8 e d c bes a g f | c'2 bes8 g cis a |
  d2 c8 a d b | e2. e8 c | b c d2 c8 b | a b c2 b8 a | gis a b4 c4. b8 | a b c d e2 ~ |
  e8 d c b c b a g | d'4. c8 b a g f | c'4. b8 a b c a | b4 c ~ c8 a bes g | cis4 d2 cis4 |

  d e f8 a ~ a16 g f e | d cis d e f e f g a f e d cis e d f |
  e d cis bes a g f e d f e d e g f e | f bes a g a e' d cis d a e' cis f d g e |
  f8 g a2 g8 f | e f g2 f8 e | d e f2 e8 d | cis d e4 d ~ d16 c bes a |
  bes a g f g f e d r8 a'4 d8 ~ | d e4 g8 f e a4 ~ | a8 g4 f8 e f g4 | f \sujet e d c8 bes |
  a4 g8 f e4 fis4-\trill | g' \sujet f ees d8 c | bes4 a8 g fis4 g4-\trill | a' \sujet g f e8 d |
  
  c4 b8 a gis e r e'-\tag #'longo ~ | 
  e d4 d8-\tag #'longo ~ d c4 c8-\tag #'longo ~ | 
  c b4 b8-\tag #'longo ~ b a4 a'8-\tag #'longo ~ | 
  a g4 g8-\tag #'longo ~ g f4 f8-\tag #'longo ~ | 
  f e4 e8-\tag #'longo ~ e d4 d8-\tag #'longo ~ | 
  d c4 c8-\tag #'longo ~ c bes4 bes8 | 
  r16 bes a g a f b g c f, e d e c fis d |
  g c bes a bes g c a d4. d'8-\tag #'longo ~ | 
  d c4 c8-\tag #'longo ~ c bes4 bes8-\tag #'longo ~ | 
  bes a4 a8-\tag #'longo ~ a g4 f8 |

  ees4 d8 c bes4-\trill a8 g | fis d'4 c8 b4 c8 d | ees d c bes a4 bes8 c | bes'4 \sujet a g f8 ees |
  d4 c8 bes a4 b-\trill | c' \sujet bes aes g8 f | ees4 d8 c b4 cis-\trill | d' \sujet c bes a8 g |
  f4 e8 d cis a r a'8-\tag #'longo ~ | a g4 g8-\tag #'longo ~ g f4 f8-\tag #'longo ~ | 
  f e4 e8-\tag #'longo ~ e d4 d8 | cis e d f cis e d f |
  e cis a a'-\tag #'longo ~ a g4 f8 | e f g2 f8 e | d e f2 e8 d | cis d e2 d8 c | bes c d2 c8 bes |

  r a4. ~ a8 a bes c | d2 ~ d8 e f g | a4. g8 f4 e8 d | << { a'4. g8 f4 } \\ { a,2. } >> e'8 d |
  a'8 e f d bes g' cis, g' | f a, bes g' cis, g' f d | s2 d'4 \sujet c | bes a8 g f4 e8 d |
  cis a r8 a bes g cis a | d e f g f e d cis | d s2. a'8 ~ | a g16 f e f g8 ~ g f16 e d e f8 ~ |
  f e16 d cis d e8 ~ e d16 c bes f' e d | cis8 r r16 d a c bes g' f e f d e cis |
  d a bes g a f g e f8 s4 g,16 cis | d4 ~ d8. cis16 d4 s | d1 \bar "|."
}

rightTwo = \relative c'' {
  \global
  %\override NoteHead #'color = #red
  %\override Stem #'color = #red
  %\override Beam #'color = #red
  %\override Accidental #'color = #red
  %\override Rest #'color = #red

  s1 s1 s1 | a4 \sujet g f e8 d | c4 b8 a gis f r e' | f d gis e a b c d | c b a gis a4 g |
  r8 f g a r d, cis4 | d r r d ~ | d s s2 | s r8 a' b cis | d a gis4 a r | s a2 s4 |
  s1 | s2 f'8 e d c | bes c d2 c8 bes | a bes c2 bes8 a | g a bes2 a8 g |
  f4. e8 << { r8 g f e } \\ {d2 } >> | r8 d cis d e4 r | d8 g4 f16 e f8 g a bes |

  a1 | r | g8 a g f g f e f | g1 | r | r4 a2 e4 | f r r f ~ | f r r2 |
  c'8 bes a g r c d b | 
  
  \tag #'longo  { g4 a d,8 d' e cis | a4 d, e8 c' d e | r a, gis4 a2 | }
  \tag #'urtext { g4 a r8 d e cis | a4 r r8 c d e | r a, gis4 a4 s | }
  
  s1 | s1 | a8 g f e f g a4 ~ | a g8 f e f g4 ~ | g f8 e d e f4 ~ | f e8 d cis d e4 |
  f4. e8 d2 | d'2. cis4 | d  s2. | s1 | a2. bes4 | cis8 a d b a2 | 
  
  \tag #'longo  { d8 b cis a bes4 g | }
  \tag #'urtext { d'8 b c! a bes4 g | }

  a8 g f e d' c bes a | g2 c8 bes a g | f2 s | e8 c fis d g2 | f4 e2 d4 |
  a' g f8 g a4 ~ | a4 g8 f e f g4 ~ | g  f8 e d e f4 ~ |
  f e8 d c d e4 | f2 e8 fis gis a | b4 e,2 r4 | f8 e d2 r4 | e8 d c4 r f ~ |
  f8 d e c fis4 g ~ | g8 e f d gis e r a ~ | a g4 a8  s2 | s1*3 | d4. c8 bes c d4 ~ |

  d c8 bes a bes c4 ~ | c bes8 a g a bes4 ~ | bes a8 g f e d4 | s2 cis4 d | g a a d8 c |
  b4 c8 d g, d' c bes | a2 r8 f4 g8 | c,4 s2. | g'2 r8 g4 a8 | d,4 s2. | a'2 r8 a gis4 |
  a s2 s8 e | f4. f8 e4. e8 | d4. d8 cis4 d8 a' | bes4. bes8 a4. a8 | g4. g8 f4. f8 |
  e4. e8 d4 r | s1 | s2. s8 d' | ees4. ees8 d4. d8 | 
  \tag #'longo  { c4. c8 bes4. a8 | }
  \tag #'urtext { c4. c8 c8 bes4 a8 | }
  
  g4 fis g s | s2 r8 aes g fis | r2 r8 g f ees | bes'2 r8 bes a c | f,2 r | c' c4 d | g, aes g r |
  d'2 d4 e | a, bes s s8 a | bes4. bes8 a4. a8 | g4. g8 f4. f8 | 
  \tag #'longo  { a4. d8 a4. d8 | }
  \tag #'urtext { a4 s8 d a4 s8 d | }
  <a cis> s4 a8 b c d4 ~ | d c8 b a b c4 ~ | c b8 a gis a b4-\tag #'longo ~ | 
  \tag #'longo { b a8 } \tag #'urtext { a4. } g8 f g a4 ~ |
  a g8 f e f g4 | r8 c,4 d8 e fis g a | bes d,4 e8 f a4 d8 | cis d e4 a, bes |

  %<< { a2. s4 } \\ { cis8 d e4 d bes } >> | 
  cis8 d e4 d bes |
  \tag #'longo { s1 s1 | } \tag #'urtext { a4 s2. s1 | }
  r16 bes' a g f e d cis d2 |
  r8 d cis e r a, bes4 | s1 | f8 g a bes a g f e | f a' bes d, cis a'16 g f e d c |
  bes c d8 ~ d c16 bes a bes c8 ~ c bes16 a | g a bes8 ~ bes a16 g f g a8 ~ a g ~ |
  g16 g f e f4 r8 bes a g | f d4 cis8  d16 a bes e a, d g,8 ~ |
  g16 \change Staff = "left" \voiceThree g fis e fis a g8 ~ g16 g fis e fis d' e, cis' |
  a1 \bar "|."
}

left = \relative c' {
  \global

  d4 \sujet

  c bes a8 g |
  f4 e8 d cis a r a' | bes g cis a d e f g | f d e cis d4 c8 b |
  a4 g8 f e4 c | d d'c8 b a g16 f | e8 e'4 d8 cis a b cis | d d, e f g4 a | bes2 a4 f |
  g g' f8 e d c16 bes | a8 a'4 g8 f4 e | d e f2 | e4 c d \clef treble d' |
  c8 b a g16 f e8 e'4 d8 | cis8 a b cis d, e f d | g a bes g c, d e c | f g a f bes, c d bes | 
  e f g e a, b cis a | \clef bass d4 \sujet c bes a8 g | f4 e8 d cis a r a' |
  bes g cis a d e f g | f e d cis d c bes a | g4 g' ~ g8 f e d | e f e d e d c d |
  e d c b c d e c | f4 \sujet e d c8 bes | a f g a bes4 c | d2 c4 a | 

  \tag #'longo { bes4 bes' a8 g f e | }
  \tag #'urtext { \tiny bes4 \normalsize bes' a8 g f bes, | }
  c4. bes8 a f b g | 
  \tag #'longo  { c4 a bes8 g cis a | d4 b c8 a b c | }
  \tag #'urtext { c4 a << { d } \\ { bes8 g } >> cis a | d4 << { d4 e} \\ { b c8 a } >> b c | }
  
  d4 e f2 | e4 c8 a d4 << d \\ b >> |
  << e \\ c >> f8 d e, e'4 d8 | cis a b cis d e f d | g, a bes g c d e c | f, g a f bes c d bes |
  e, f g e a b cis a | d,4 \sujet c bes a8 g | f d e f g4 << { a' ~ a g a } \\ { a, bes2 a4 } >> f'8 d |
  g4 a bes8 g cis a | << d1 \\ { d,4 e f8 d g e } >> | a4 b cis d |
  << { r4 e2 e4 } \\ { a,2 g } >> | << { f'8 e d c d2 } \\ { f,2 bes8 a g f } >> |
  << { e'8 d c bes a g f e } \\ { e2 } >> | << { d'8 c bes a g f e d } \\ { d2 } >> |

  c4 d g a | << { a4 b } \\ { f8 d gis e a4 b } >> | 
  \tag #'longo  { c8 a b c d,8 e f d | }
  \tag #'urtext { c'8 a b cis << { d2 } \\ { d,8 e f d } >> | }
  g a b g << { c2 } \\ { c,8 d e c } >> | f g a f << { b2 } \\ { b,8 c d b} >> |
  e fis gis e a4 \sujet g | f e8 d c4 b8 a | gis e fis gis << { a'8 g f e } \\ { a,2 } >> |
  << { d'8 c b a g f e d } \\ { d2 r } >> | << { c'8 b a g } \\ { c,2 } >> f | g4 c, d g |
  a d, e a | bes cis d \sujet c | bes a8 g f4 e8 d | cis a r a' bes g cis a | d e f g f e d cis |

  d16 cis d e f e f d g, f g a bes a bes g | c b c d e d e c f, e f g a g a f |
  bes a bes c d c d bes e, d e f g f g e | a g a b cis b cis a d c bes a bes a g f |
  g f e d e d cis bes a a' g a f a d, f | e g cis, e a, a' cis, a' d, d' e, cis' f, a d, f |
  g d' f, d' e, c' d, b' c, e d f e g c, e | f e f g a bes c a bes d c bes a bes g a |
  f a g f e f d e c c'bes c d, c' bes a | bes c bes a g a bes g c ees d c bes d a c |

  g bes a g f g ees f d d' c d e, d' c b | c d c b a b c a d, d' c d e d c b |
  a g f e d e f d e e' d e c e a, c | d, d' c d b d g, b c, c' b c a c f, a |
  b, b' a b gis b e, gis a, a' g a f a d, f | g, g' f g e g c, e f, f' e f d f bes, d |
  e, e' d e cis e a, cis d cis d e f e f g | a g a b c b c a bes a bes c d c d e |
  f4. d8 c4. a8 | g4. ees8 d16 d' c d bes d g, bes |

  c, c' bes c a c f, a bes, bes' a bes g bes ees, g | a, a' g a fis a d, fis g fis g a bes a bes g |
  c, c' bes c d, c' a c ees, f ees d c d ees c | 
  d d' c d b d aes d g, d' f, d' \tag #'longo ees, \tag #'urtext e c' d, b' |
  c, c' bes c a c g c f, c' ees, c' d, bes' c, a' | bes, a bes c d c d bes ees g f ees f g a f |
  bes a g f ees g f ees f f' e f g, f' ees d | ees f ees d c d ees c f ees d c b d c b |
  c bes aes g f g aes f g g' \tag #'longo f \tag #'urtext fis g aes, g' f e |
  f g f e d e f d g f e d cis e d cis |

  d c bes a g a bes g a, a' g a f a d, f | g, g' f g e g c, e f, f' e f d f bes, d |
  e, e' d e cis e a, cis d cis d e f e f g | a, a' g a f a d, f a, a' g a f a d, f |
  a, a' g a f a d, f g b a c b d g, b | c, e d f e g c, e f a g b a c f, a |
  b, d c e d f b, d e gis fis a gis b e, gis | a gis a b cis b cis a d, cis d e f e f d |
  g f g a bes a bes g c, b c d e d e c | f a g f e g d f c g' fis g bes, g' a, fis' |

  g, g' f e f a e a d, a' cis, a' d, a' bes, g' | a, a' b, g' cis, e a, cis d, d' f d g, g' bes g |
  a, a' b, g' cis, e a, cis d, d' f d g, g' bes g | a, a' cis a d,, d' f d g, g' bes g a, a' cis a |
  d,, d' f d g, g' bes g a, a' cis a d,, d' f d | g,4 a d16 cis d e f e f d |
  g, g' f g a, a' g a d,, d' f d g, g' bes g | a, a' g a f a d, f g, g' bes g g, g' f e |

  f a cis, e d f bes, g' a, a' g a a, a' g, g' | f, f' d f g, g' bes g a, a' cis a d, d' f d |
  g,, g' bes g c, c' e c f,, f' a f bes, bes' d bes | e,, e' g e a, a' cis a d,, d' f d g, g' bes g |
  a, a' b cis d d, f d g g, bes g a8 a' | d, g, a a d, <g g'> <a f'> <a e'> |
  d,2 d | d1 \bar "|."
}

longoBreaks = {
  s1*3 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak 
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*4 \break \pageBreak 
  s1*4 \break s1*4 \break s1*4 \break s1*4 \break s1*3 \break \pageBreak 
  s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break \pageBreak 
  s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break \pageBreak 
  s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break \pageBreak 
  s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break s1*2 \break \pageBreak 
  s1*2 \break s1*2 \break s1*2 \break s1*2 \break
}

jonesBreaks = {
  s\breve * 3 \break
  s\breve*3 \break
  s\breve*3 \break
  s\breve*3 \break
  s\breve*3 \break
  \pageBreak

  s\breve*3 \break
  s\breve*3 \break
  s\breve*3 \break
  s\breve*3 \break
  s\breve*3 \break
  s\breve*3 \break
  \pageBreak

  s\breve*3 \break
  s\breve*3 \break
  s\breve*3 \break
  s\breve*3 \break
  s\breve*3 \break
  s\breve*3 \break
  \pageBreak

  s\breve*3 \break
  s\breve*3 \break
  s\breve*3 \break
  s\breve*2 \break
  s\breve*2 \break
  s\breve*2 \break
  \pageBreak

  s\breve*2 \break
  s\breve*2 \break
  s\breve*2 \break
  s\breve*2 \break
  s\breve*2 \break
  s\breve*2 \break
  \pageBreak

  s\breve*2 \break
  s\breve*2 \break
  s\breve*2 \break
  s\breve*2 \break
  s\breve*2 \break
  s\breve*2 \break
  \pageBreak

  s\breve*2 \break
  s\breve*2 \break
  s\breve*2 \break
  s\breve*2 \break
  s\breve*2 \break
  \pageBreak

  s\breve*2 \break
  s\breve*2 \break
  s\breve*2 \break
  s\breve*2 \break
  s\breve*2 \break
  \pageBreak

  s\breve*2 \break
  s\breve*2 \break
  s\breve*2 \break
  s\breve*2 \break

}

%showLastLength = R1 * 13
#(set-global-staff-size 16)
%#(set-global-staff-size 24)
  
%
% Edition de Longo
%
%{
\bookpart {
  \score {
    \new PianoStaff <<
      \time 4/4
      \new Staff = "right" {
        << \longoBreaks  
           { \keepWithTag #'longo \rightOne } 
           \\ 
           { \keepWithTag #'longo \rightTwo }
        >>
      }
      \new Staff = "left" { 
        \clef bass \keepWithTag #'longo \left 
      }
    >>
    \layout { }
  }
} 
%}


%
% Edition URTEXT
%
%{
\bookpart {
  \score {
    \new PianoStaff <<
      \time 4/2
      \new Staff = "right" {
        << \jonesBreaks 
           { \shiftDurations #-1 #0 \keepWithTag #'urtext \rightOne } 
           \\ 
           { \shiftDurations #-1 #0 \keepWithTag #'urtext \rightTwo } 
        >>
      }
      \new Staff = "left" { 
        \clef bass \shiftDurations #-1 #0 \keepWithTag #'urtext \left 
      }
    >>
    \layout { }
  }
}
%}

%
% Edition pratique
%
% {
\bookpart {  
  \score {
    \new PianoStaff <<
      \time 4/4
      \new Staff = "right" \with {
        midiInstrument = "harpsichord"
        \override StaffSymbol #'staff-space = #(magstep -3)
      } 
      << { 
          \keepWithTag #'urtext \rightOne 
         } \\ {
          \keepWithTag #'urtext \rightTwo
         }
      >>
      \new Staff = "left" \with {
        midiInstrument = "harpsichord"
        \override StaffSymbol #'staff-space = #(magstep -3)
      } {
        \clef bass 
        \keepWithTag #'urtext \left
      }
    >>

    \layout {
      %#(layout-set-staff-size 16)
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

%
% Edition voies séparées
%
%{
\bookpart {
  \score {
    \new PianoStaff <<
      \time 4/4
      \new Staff = "right" {
        << \longoBreaks
        \keepWithTag #'urtext \rightOne 
        >>
      }
      \new Staff = "right" {
        \keepWithTag #'urtext \rightTwo
      }
      \new Staff = "left" { 
        \clef bass \keepWithTag #'urtext \left 
      }
    >>
    \layout { }
  }
}
%}
