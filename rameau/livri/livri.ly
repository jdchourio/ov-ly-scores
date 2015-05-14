\version "2.18.2"

\include "../../include/tagline.ily"
\include "../../include/side-ornementations.ily"

su = \stemUp
sd = \stemDown
sn = \stemNeutral
tu = \tieUp
td = \tieDown
tn = \tieNeutral
cstr = \change Staff = "right"
cstl = \change Staff = "left"

global = {
  \override Staff.TimeSignature #'style = #'single-digit
  %\set Timing.beamExceptions = #'()
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  %\override ParenthesesItem #'font-size = #+2
  \override Staff.Rest #'style = #'classical
  %\override Staff.Accidental.glyph-name-alist = #alteration-hufnagel-glyph-name-alist
  %\override Accidental #'font-size = #+2
  $(remove-grace-property 'Voice 'Stem 'direction)
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \key c \minor
  \time 2/2
}

violon = \relative c'' {
  \global
  \partial 2 g4^8 c
  \sd c8[( bes]) \su aes[( g]) \appoggiatura g8 aes4. bes8
  \appoggiatura aes8 g4 \sd c \su f,4. g8
  \appoggiatura f8 ees8.[( f16]) ees8[( f16 g]) \appoggiatura g8 f4._+ ees8
  d2_+ g4 \sd c 
  c8[( bes]) \su aes[( g]) \appoggiatura g8 aes4. bes8
  \appoggiatura aes8 g4 \sd c \su f,4. g8
  \appoggiatura f8 ees8.[ g16 f8._+ ees16] d4._+ c8
  \once \override HorizontalBracket #'direction = #UP 
  c2^\startGroup c^\stopGroup ees4\rest ees8\rest <<{ ees^u }  \\ { bes }>>
  
  \break
  
  <<{ \slurDown ees4( d8) f\rest f4\rest f8\rest f
      f4( ees8) f\rest f4\rest f8\rest f
      g4( f8) f\rest a4\rest a8\rest aes
      aes4( g8) f\rest } \\
    { g,2 s4. g8
      g2 s4. bes8
      bes2 s4. bes8
      bes2 }>>
  r4 \once \override Beam #'positions = #'(-2 . 0) \sd bes'8. \su ees,16
  \sd c'4. c8 \slurUp \grace c8( d4.) ees8
  d2^+ f
  bes, \once \override Beam #'positions = #'(0.5 . 2) ees8 \su bes aes_+ g
  \repeat unfold 2 { 
    \appoggiatura g8 f4._+ ees16( d) \appoggiatura d8 ees bes' aes_+ g }
  \once \override Beam #'positions = #'(-1 . 1) \sd c \su d, ees aes f4._+( ees16 f)
  ees2
  
  \break
  
  c2_\markup "2e Reprise" \breathe \sd ees'4^u c8.^+( bes32 c)
  d4 \su g, \sd c \appoggiatura bes8 \su a4_+
  \appoggiatura a8 bes4 \appoggiatura a8 g4 \sd bes4. c8
  \su a2_+ \sd d4. bes8
  \appoggiatura a8 \su g2 \sd c4 \appoggiatura bes8 \su a!4
  fis2_+ \sd d'4. ees8
  d4. g8 fis4.^+ g8
  d4 b^+ \appoggiatura b8 c8.( d16) d8.^+( c32 d)
  \once \override Beam #'positions = #'(0 . 2.5) ees8. \su fis,16 g8. a16 a4._+ g8
  g2
}

viole = \relative c {
  \global
  
  \partial 2 \sd c8^\markup "Rondeau gracieux" d ees c
  g'4 e8.^+( d32 e) f4 d8.^+( c32 d)
  ees!4 \su c8._+( b32 c) \sd d4 \su b!8._+( a32 b)
  c4 \sd c'8( d16 ees) \slurUp \grace ees8( d4.^+) c8
  g f ees^+ d c d ees c
  g'4  c4. f,8 \once \override Dots #'extra-offset = #'(4 . 0) bes4.
  ees,8 aes4. d,8 \once \override Dots #'extra-offset = #'(4 . 0) g4.
  c8[ aes f16.*16/24^+ ees32 f] g4 \su g,
  \once \override HorizontalBracket #'direction = #UP
  c,8^\startGroup g' a^\markup "Fin." b c,2^\stopGroup b''4\rest b8\rest \sd c8
  
  \break
 
  c4( b8) b\rest b4\rest d8\rest d
  d4( c8) b\rest b4\rest b8\rest ees
  ees4( d8) b\rest b4\rest b8\rest f'
  f4( ees8) f\rest g,4\rest g4
  aes4. g8 \slurUp \grace g8( f4.^+) ees8
  bes'2. aes4
  g2 \clef "mensural-c3" \key c \minor g'8\rest g f^+ ees
  \repeat unfold 2 {
    \su aes,4 bes \once \override Beam #'positions = #'(1 . -1) g8 \sd g' f^+ ees }
  \su aes,4 g8 aes bes4 \clef bass \key c \minor bes,
  \sd ees8 f ees^+ d
  
  \break
  
  \su c,8( g') a( b) \breathe \sd c( ees) g( c)
  bes,( d) e(g) \su a,( \sd g') fis( d)
  g[( d]) \su bes( g) \clef "mensural-c3" \key c \minor \sd g''2
  \appoggiatura g8 fis2 f
  \appoggiatura f8 e2 ees 
  
  \su d8( c) bes_+( a) bes( d) 
  %\override Staff.NoteCollision #'merge-differently-Headed = ##t
  <<{ \shape #'((0 . 1) (0 . 1) (0 . 1) (0 . 1)) Tie g4 ~ g8 d g4 } \\ 
    { \slurUp \shape #'((0.5 . -0.5) (0.5 . -0.5) (0 . 0) (0 . 0)) Slur g8( c,) bes4. bes8 } \\
    { \hideNotes \slurDown s4 bes8( f') }>>
  <<{ a,8[( d c]) bes } \\ { a4. g8 }>>
  <<{ \slurDown fis[ a] f[( d']) \once \override Beam #'positions = #'(-0.5 . -1) 
       ees,[( \sd ees']) \su d,[( b']) } \\ { fis4 f ees d }>>
  \clef bass \key c \minor \su c8. a16 bes8. c16 \sd d4 \su d,
  g8 g a b
}

right = \relative c' {
  \global
 
  \partial 2
  %\repeat volta 2 {
    <<{ \su \slurUp ees8( g c, \cstl a) ~ \cstr \td
        \sd \cstr s8 s \sd \cstr g' s \sd \cstr s s \sd \cstr f s 
        \sd \cstr s s \sd \cstr ees s \sd \cstr s s \sd \cstr d s 
        \sd \cstr s s \sd \cstr c s }
      { s2
        \su \cstl a8 \su \cstl bes s \su \cstl c ~ 
        \su \cstl c \su \cstl aes s \su \cstl bes ~ 
        \su \cstl bes \su \cstl g s \su \cstl aes ~ 
        \su \cstl aes \su \cstl f s \su \cstl g ~ 
        \su \cstl g \su \cstl ees s \su \cstl g }
      \new Voice { 
        s2
        \override Stem.cross-staff = ##t
        \override Flag.transparent = ##t
        \override Stem.length = #10
        %\override Stem.X-offset = #1.2
        \override Stem.Y-offset = #-5
        \override NoteHead.X-offset = #1
        \slurUp \cstr \su g'8 
        s s s g
        s s s f
        s s s ees
        s s s d
      }
      \new Voice {
        s4. s16 
        \autoBeamOff
        \hideNotes 
        \slurUp 
        \cstr \sd \shape #'((1 . 1) (0 . 0.5) (0 . 0) (-1 . 0.5)) Slur g16( g8 
        \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . 0.5)) Slur g)( g
        \shape #'((3 . 0.5) (2 . 0) (0 . 0) (-1 . .5)) Slur f)( f 
        \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) Slur f)( f
        \shape #'((4 . .25) (4  . 0) (0 . 0) (0 . .25)) Slur ees)( ees 
        \shape #'((0 . -0.25) (0 . 0) (0 . 0) (0 . 0)) Slur ees)( ees
        \shape #'((3 . 0.25) (3 . 0.25) (0 . .25) (0 . 0.25)) Slur d)( d 
        \shape #'((0 . -0.5) (0 . -0.5) (0 . -0.5) (0 . -1)) Slur d)( d
        \shape #'((4 . 0) (4 . 0) (0 . 0) (0 . 0)) Slur d)( d 
        \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0)) Slur c)( c 
        \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0)) Slur c)
      }
    >>
    
    aes8( f d \once \sd d') 
    b-\prall a g4
    
    \cstr 
    <<{ \su \slurUp ees'8( g c,) \cstl a! ~ \cstr \td
        \sd \cstr s8 s \sd \cstr g' s \sd \cstr s s \sd \cstr f s 
        \sd \cstr s s \sd \cstr ees s \sd \cstr s s \sd \cstr d s 
        \sd \cstr s s \sd \cstr c s }
      { s2
        \su \cstl a8 \su \cstl bes s \su \cstl c ~ 
        \su \cstl c \su \cstl aes s \su \cstl bes ~ 
        \su \cstl bes \su \cstl g s \su \cstl aes ~ 
        \su \cstl aes \su \cstl f s \su \cstl g ~ 
        \su \cstl g \su \cstl ees s \su \cstl aes 
        \cstr \sd c \su \cstl d, c' <f, g b> 
      }
      \new Voice { s2*6 c'4}
      \new Voice { 
        s2
        \override Stem.cross-staff = ##t
        \override Flag.transparent = ##t
        \override Stem.length = #10
        %\override Stem.X-offset = #1.2
        \override Stem.Y-offset = #-5
        \override NoteHead.X-offset = #1
        \slurUp \cstr \su g'8 
        s s s g
        s s s f
        s s s ees
        s s s d
      }
      \new Voice {
        s4. s16 
        \autoBeamOff
        \hideNotes 
        \slurUp 
        \cstr \sd \shape #'((1 . 1) (0 . 0.5) (0 . 0) (-1 . 0.5)) Slur g16( g8 
        \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . 0.5)) Slur g)( g
        \shape #'((3 . 0.5) (2 . 0) (0 . 0) (-1 . .5)) Slur f)( f 
        \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) Slur f)( f
        \shape #'((4 . .25) (4  . 0) (0 . 0) (0 . .25)) Slur ees)( ees 
        \shape #'((0 . -0.25) (0 . 0) (0 . 0) (0 . 0)) Slur ees)( ees
        \shape #'((0 . 0.25) (0 . 0.25) (0 . .25) (0 . 0.25)) Slur d)( d 
        \shape #'((0 . -0.5) (0 . -0.5) (0 . -0.5) (0 . -1)) Slur d)( d
        \shape #'((4 . 0) (4 . 0) (0 . 0) (0 . 0)) Slur d)( d 
        \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0)) Slur c)( c 
        \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0)) Slur c)
      }
    >>
    \once \override HorizontalBracket #'direction = #UP
    \cstr <\parb ees, g \parb c>2\startGroup 
    \slurDown
    q \stopGroup ees'4\rest ees8\rest <c ees>8
    
    \break
    
    q4( ^\markup "P.re Reprise "  <b d>8) ees8\rest a4\rest a8\rest <d, f>
    q4( <c ees>8) f8\rest a4\rest a8\rest <ees g>
    q4( <d f>8) f8\rest c'4\rest c8\rest <f, aes>
    q4( <ees g>8) g8\rest <<{g4\rest}\\{c4\rest}>> g8 bes
    
    <<{ bes4.( s8) aes4. g8 } \\ 
      { \once \override Beam #'positions = #'(-3 . 1) 
        bes8 \su \cstl c, \cstr ees g \sd aes d, \su \cstl bes \cstr \sd ees }>>
    <<{ <d f>4^\prall \sd bes'8 c \once \override Beam #'positions = #'(-0.4 . -0.4) 
        d ees f d } \\ { s2 f, }>>
    <<{ \once \override Beam #'positions = #'(0.4 . 2) 
        \sd \para ees'8 \su bes aes^\prall g 
        \once \override Beam #'positions = #'(-1 . 1) 
        \sd bes \su \slurUp ees,( g \cstl bes,) \cstr } \\
      { \override Stem.cross-staff = ##t
        \override Stem.length = #16
        <bes ees g>2 }>>
    
    \repeat unfold 2 {
      \cstr \slurUp \sd \shape #'((0 . 0) (0 . 1) (0.5 . 1) (0 . 0)) Slur c8( 
      ees \cstl \su \slurDown \shape #'((0 . 0.5) (0 . 1) (0 . 1) (0 . 1.5)) Slur <f, aes>)( 
      \sd \cstr <bes d>) \cstl \su 
      <<{ <g bes> \slurUp \cstr \sd \shape #'((0 . 0) (0 . 1) (0.5 . 1) (0 . 0)) Slur 
      ees'( g \cstl \su bes,) }
        \new Voice { 
          \once \override Stem.cross-staff = ##t
          \once \override Flag.transparent = ##t
          \once \override Stem.length = #10
          \once \override Stem.Y-offset = #-5
          \once \override NoteHead.X-offset = #1
          \su \cstr ees8
        }
      >>
    }
    \cstr <<{ \slurDown c[ d] ees( c) ees4. d8 }
      \new Voice { \hideNotes s4 \shape #'((0 . -0.5) (0 . -0.5) (0 . -0.5) (0 . -0.5)) Slur ees'4( ees) }>>
    \partial 2 ees,2 \bar "|."
    
    \break
    
    <<{ \once \override Stem.cross-staff = ##t
        \once \override Stem.length = #13
        \once \override Stem.Y-offset = #-3
        \parb c2 } 
      \new Voice { \su \cstl <\parb ees, g> }>>
    \breathe c'8(^\markup "2e Rep." ees g a)
    <<{ \slurDown d, fis( g bes) } \\ { bes,2 }>>
    \cstl a8( \cstr c d fis!)
    \cstl g,( bes d \cstr \sd g)
    \slurUp d'[( bes]) ees( c)
    
    ees( a, c ees) bes( a! d bes)
    d( g, bes d) \su \once \override Beam #'positions = #'(2 . -2) a( g \sd c ees)
    \su <fis, a>2^\prall <<{ g8 d bes' a! } \\ { s8 d,4 ees8 }>>
    \slurDown g( d bes' g) <<{ c4 <fis, a>8 <g bes> } \\ { c8 \su d, ~ \sd d4 }>>
    
    <<{ \once \override Beam #'positions = #'(-2 . 1)
        \sd a'8 \su d, \sd d' \su g, ~ \sd g4 f } \\ 
      { s2 \once \override Beam #'positions = #'(1 . 3) g'8 \su ees 
       \once \override Beam #'positions = #'(4 . 4) b8.^\prall a32 b }>>
    <ees, g c>8[ a] <d, d'>8. <ees g>16 fis4.^\prall g8
    <b, d g>2
    
}
 
left = \relative c {
  \global

  \partial 2
  %\repeat volta 2 {
    <<{ \once \override Stem.length = #4 \sd \para c2} \\ {c,4\rest \su c }>>
    <<{ s8( \sd g'') s( \sd ees) s( \sd f) s( \sd d) s( \sd ees) s( \sd c) s( \sd d) s( \sd bes) }
      { \su g s \su e s \su f s \su d s \su ees s \su c s \su d s \su b }>>
    
    << { c2 } \\ { c'4\rest c4 } >> \su f,4. d8
    \once \override Beam #'positions = #'(-0.5 . -2) \su g \sd f' ees_\prall d 

    <<{ \once \override Stem.length = #4 \sd c2} \\ {c,4\rest \su c }>>
    <<{ s8( \sd g'') s( \sd ees) s( \sd f) s( \sd d) s( \sd ees) s( \sd c) s( \sd d) s( \sd bes) }
      { \su g s \su e s \su f s \su d s \su ees s \su c s \su d s \su b }>>
    
    \su c( \sd c') \su f,4
    <<{ \override Stem.length = #7 g,4\rest g4 } \\ 
      { \override Stem.length = #4 \para g'2 }>>
    \partial 2 c,8\startGroup g' aes bes \bar ":|.:"
    c,\stopGroup ees g c \sd ees g \para c \su c,
    
    \break
    
    \once \override Beam #'positions = #'(1.5 . 1) g b d \sd g 
    \once \override Beam #'positions = #'(1 . 3) b \cstr d \para f \cstl \su g,,
    c, ees g c \sd \once \override Beam #'positions = #'(-1 . 2) ees g \para c \su ees,
    \sd bes d f bes \cstr d f \para aes \cstl \su bes,,
    \once \override Beam #'positions = #'(1 . 0) ees, g bes \sd ees 
    \once \override Beam #'positions = #'(0 . 2.5) g bes \cstr ees \cstl \su ees,
    \sn \para aes4. g8 f4.^\prall ees8
    bes2 bes'4 aes
    g2 g,
    \repeat unfold 2 {
      \sd aes4 bes \su \once \override Stem.length = #5 g2
    }
    <<{ \sd \once \override Beam #'positions = #'(-0.5 . 0) ees'8 f 
        \once \override Stem.length = #4 g4 \su f8 bes aes4 }
      \new Voice { \tieDown s2 \hideNotes f4 ~ \unHideNotes \once \override Stem.length = #4 f }
      \new Voice { \sd aes,4 g8 aes \once \override Stem.length = #4 bes2 }
      \new Voice { s2 bes,4\rest \once \override Stem.length = #5 bes4 }
    >>
    
    \partial 2
    <<{ \once \override Stem.cross-staff = ##t
        \once \override Stem.length = #14
        <g'' bes>2 }
      \new Voice { 
        \sd \once \override Beam #'positions = #'(-1.5 . -2) 
         ees 8 f ees^\prall d 
      }
      \new Voice { 
        \override Flag.transparent = ##t
        \override Stem.X-offset = #0
        \override NoteHead.X-offset = #-0.9
        \su ees, }
    >> \bar "|."
    
    \break
 
    \once \override Beam #'positions = #'(-2.5 . -4) 
    \su c8 \sd g' a b \breathe <<{ c,4\rest c } \\ 
      { \once \override Stem.length = #4 \para c'2 }>>
    <<{ b,4\rest bes a\rest aes g\rest g g'\rest g } \\ 
      { \override Stem.length = #4 \para bes2 \para a \para g 
        \para g' }>>
    
    fis2^\prall <<{ f,4\rest f } \\ { \once \override Stem.length = #4 \para f'2 }>>
    e2^\prall <<{ ees,4\rest ees } \\ { \once \override Stem.length = #4 \para ees'2 }>>    
    \su \once \override Beam #'positions = #'(2 . 0)
    <d, d'>8 \sd c'' bes^\prall a bes4. c8
    bes2 a4. g8
    fis4^\prall f ees d
    \su c bes8. c16 
    <<{ a'4 c } 
      \new Voice { \sd \once \override Stem.length = #4 d,2 }
      \new Voice { d,4\rest d }
    >>
    << { \sd \once \override Beam #'positions = #'(-4 . -3.5) g 8 g a b }
      \new Voice {
        \override Flag.transparent = ##t
        \override Stem.length = #6
        \override Stem.X-offset = #-0.4
        \override NoteHead.X-offset = #-1.5
        \su g,
    }>> \bar "|."

  %}
}


\header {
  title = "La Livri"
  %tagline = ##f
}

#(set-global-staff-size 19)

  % {
\paper {
  #(set-paper-size "a3" 'landscape)
  %print-page-number = ##f
  %between-system-padding = #0.1
  %between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  oddFooterMarkup = \gitTagline
  evenFooterMarkup = \gitTagline
}
%}

\score {
  \new StaffGroup <<
    \new Staff {
      \override Staff.BarLine #'allow-span-bar = ##f
      << { \violon } >>
    }
    \new Staff {
      \override Staff.BarLine #'allow-span-bar = ##f
      << { \clef bass \viole } >>
    }
    \new PianoStaff << 
      \set StaffGroup.systemStartDelimiter = #'SystemStartBracket
      \new Staff = "right" {
        \override Staff.BarLine #'allow-span-bar = ##f
        \right
      }
      \new Staff = "left" { 
         \clef bass \left 
      }
      >>
    >>
  \layout {
    indent = 0
    \context {
      \Voice
      \consists "Horizontal_bracket_engraver"
    }
  }
}
