\version "2.18.2"

\include "../../tagline.ily"

breaks = {
  %s2.*4 \break s2.*5 \break s2.*5 \break s2.*5 \break s2.*5 \break s2.*5 \pageBreak
  %s2.*5 \break s2.*5 \break s2.*5 \break s2.*5 \break s2.*5 \break s2.*6 \pageBreak

  s2.*9 \break s2.*10 \break s2.*11 \break s2.*12 \break s2.*8 \break s2.*9 \break \pageBreak
  s2.*9 \break s2.*10 \break s2.*8 \break s2.*8 \break s2.*8 \break s2.*8 \break 
}

#(set-global-staff-size 16)

\paper {
  #(set-paper-size "a4" 'landscape)
  print-page-number = ##f
  between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  oddFooterMarkup = \gitTagline
  evenFooterMarkup = \gitTagline
}



\include "../side-ornementations.ily"

cstr = \change Staff = "right"
cstl = \change Staff = "left"

\header {
  title = "La Poule"
  tagline = ##f
}

global = {
  \key g \minor
  \time 3/4
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  %\set Timing.beamExceptions = #'( (end . (((1 . 16) . (4 4 4 4)))) )
  \override Staff.Rest #'style = #'classical
}

right = \relative c'' {
  \global
  
  \repeat volta 2 {
    r8 g g g g g
    \stemUp g32[ bes d16] g,8 g g g g \stemNeutral
    g64*2 bes d g r8 r4 r8 d
    \para \parb ees[ ees ees ees ees8. g32*2/3 a c]
    
    c,8[ c c c c8. ees32*2/3 fis a]
    \voiceOne a,8 ees' d c bes\prall  a
    \para \parb bes4. a8 g4
    \para ees'4 \para ees4. g16 cis,
    cis4( \para d) r
    
    \para d \para d4. f16 b,
    b4( \para c) r
    c8 ees d c bes\prall a
    bes16 a \para bes d bes16 a \para bes d a g \para a d
    bes16 a \para bes d bes16 a \para bes d a g \para a c
    
    bes a \para bes c bes8 d c\prall bes
    a2\prall \oneVoice r4
    r8 f_\markup { \italic fort } f f f f
    f32 bes d16 f,8[ f f f f]
    \voiceOne f64*2 bes d f r8 s2
    
    \repeat unfold 2 {
      << { g,8[ g g g g8. bes32*2/3 ees g]
           f,8[ f f f f8. bes32*2/3 d f] 
         } \\ {
           ees,8 ees ees ees ees ees
           d d d d d d
         } >> }
    ees8 c'16 bes a8 g f ees
    
    \oneVoice ees4\prall d r
    \para g8 g \para g g g a\prallup
    bes16 f ees d \repeat unfold 2 { <<{f^\markup { \italic g. }} \\ {d}>> d[^\markup { \italic d. } c bes] }
    g'8_\markup { \italic doux } g \para g g g a\prallup
    bes16 f ees d \repeat unfold 2 { <<{f^\markup { \italic g. }} \\ {d}>> d[^\markup { \italic d. } c bes] }
    
    g'8_\markup { \italic fort } g \para g g g a\prallup
    bes8 f <<{ <f d'>2( <g bes>8.) c16 a4.-\prall bes8 <f bes> bes \para bes bes bes bes } \\
    { d,2 c4 r s8 ees d }>> 
    bes'16*2/3 d f bes,8[ bes bes bes bes]
    bes64*2 d f g ~ g8 ~ g4 aes
    g2\lineprall f4
    ees4.\lineprall d8 c4
    r8 c_\markup { \italic doux } c c c c
    c32*4/3 ees g c,8[ c c c c]
    c32*4/3 ees g c8 ~ c4 bes
    a2\lineprall g4
    fis4.\lineprall e8 d4

    r8 a_\markup { \italic fort } a a a a
    \voiceOne bes16 a \para bes c d8 d4 c16\prall bes
    a g \para a bes c8 c4 bes16\prall a
    bes a \para bes c d8 d4 c16\prall bes
    <fis a>2\prall r4
    bes16 a \para bes d bes a \para bes d b a \para b d
    c b \para c ees c b \para c e cis b \para cis e
    d cis \para d f d cis \para d f e d \para e g

    \para f8 f\turn g f e\prall d
    cis4.\prall b8 a4
    \oneVoice r8 e e e e e
    ees64*2 g a cis r8 r4 r
    r8 g g g g g
    g32*2 a cis e16 ~ e2 ~
    e ~ e32 d cis b a g fis ees
    <<{ f8 a d4. cis8\prall } \\ { f,4. f8 e g }>>
    <<{ \set tieWaitForNote = ##t c4( 
        \once \override Beam #'positions = #'(5 . 4) 
        d16) ~ a ~ fis ~ \tieDown d ~ <d fis a d>4 } \\
      { \voiceTwo g4 s d }>>
  }

  \repeat volta 2 {
    r8 d_\markup { \italic Reprise } d d d d
    d32 f a16 d,8[ d d d d]
    d64*2 f a d f,8[ f f f f]
    a64*2 d f a a,8 [a a a a]
    d32*4/3 f a d4. ~ d16 c bes a
    \voiceOne bes c a bes g a f g e g d e
    cis d b cis a bes g a f g e g
    \oneVoice f8\prall e \para f e \para f g\prallup
    <<{ <e a>2. } \\ { cis2. }>>

    \voiceOne \para f'8[ f \para f f f \para g16 a]
    f4.\prall e8\noBeam \para \parb f r
    \para g[ g \para g g g a16 bes]
    g4.\prall f8 \para g a
    \para \parb bes4. bes8\prallup c bes
    a4.\prall g16 a bes c a bes
    g4.\prall a32*4/3 bes c e,8\prall f
    g2\lineprall r4
    <<{ \para d8 d \para d d d e\prallup f16 c bes a } \\ 
      { f8_\markup { \italic fort. }  f f f f g a r }>>
    <<{ c16^\markup { \italic "g." } } \\ { a }>>
    a^\markup { \italic "d." } g f
    <<{ a16^\markup { \italic "g." } } \\ { f }>>
    a^\markup { \italic "d." } g f

    <<{ d'8 d \para d d d e\prallup f16 c bes a } \\ 
      { f8_\markup { \italic doux. }  f f f f g a r }>>
    <<{ c16^\markup { \italic "g." } } \\ { a }>>
    a^\markup { \italic "d." } g f
    <<{ a16^\markup { \italic "g." } } \\ { f }>>
    a^\markup { \italic "d." } g f
    <<{ d'8[ d \para d d d \para ees16 f] } \\ 
      { f,8_\markup { \italic fort. }  f f f f f }>>
    <<{ <f b>2.\prall } \\ { d }>> 
    \repeat unfold 3 { c'16 b \para c ees }
    \repeat unfold 3 { a, g \para a c }
    \repeat unfold 3 { bes a \para bes d }
    \repeat unfold 3 { g, fis \para g bes }

    \repeat unfold 3 { a g \para a c }
    fis,2\prall r4
    <<{ \para ees'8 ees \para ees ees d fis\prall \parb g16 d c bes } \\ 
      { g8 g g g a a bes r } >>
    <<{ d16^\markup { \italic g. } } \\ { bes }>>
    bes^\markup { \italic d. } a g
    <<{ bes^\markup { \italic g. } } \\ { g }>>
    bes^\markup { \italic d. } a g

    <<{ ees'8_\markup { \italic doux. } ees \para ees ees d fis\prall \parb g16 d c bes } \\ 
      { g8 g g g a a bes r } >>
    <<{ d16^\markup { \italic g. } } \\ { bes }>>
    bes^\markup { \italic d. } a g
    <<{ bes^\markup { \italic g. } } \\ { g }>>
    bes^\markup { \italic d. } a g

    <<{ \para c8 c \para c c \para c c } \\ { <ees, g> q q q <ees a> <ees g> }>>
    <<{ c'16 ees d c } \\ { <d, fis>8 r } >>
    <<{ c'16^\markup { \italic g. } } \\ { a }>>
    c^\markup { \italic d. } bes a
    <<{ <fis a>^\markup { \italic g. } } \\ { d }>>
    c'^\markup { \italic d. } bes a


    \voiceOne bes8[ d] c16[ bes] a[ g] bes[ a] g[ fis]
    \oneVoice \parb \para g4 r r
    r8 g g g g g
    g64*2 bes d g r8 r4 r
    <<{ <ees g>8[ q q q] <d f> q } \\ { <g, bes>[ q q q] <g b> q }>>
    <<{ <c ees>[ q q q] <bes d> q } \\ { g[ g g g] <d g> q }>>
    <<{ <a' c>[ q q q] <g bes> q } \\ { <d fis>[ q q q] d d }>>
    <<{ <d fis a>[ q q q] <d g> q } \\ { c[ c c c] bes bes }>>

    
    <d fis>2\prall r4
    r8 a' a a a a
    a64*2 c d fis r8 r4 r
    r8 \voiceOne c c c c c
    \oneVoice c16*2/3 d fis a8 ~ a2 ~
    \voiceOne a ~ a32 g fis e d c bes a
    <<{ bes8 d g4. fis8\prall } \\ { bes,4. g8 f a }>>
    <<{ \set tieWaitForNote = ##t f'4( 
        \once \override Beam #'positions = #'(6 . 5) 
        g16) ~ d ~ bes ~ \tieDown g ~ <g bes d g>4 } \\ 
      { c4 s g }>>
  }
}

left = \relative c' {
  \global
  
  \repeat volta 2 {
    R2. R2.
    <<{ r8 bes bes bes bes bes 
        c c c c c c 
        a a a a a a 
        <a c> q <a d> q q q
        d2 \once \stemDown g,,4
      } \\ {
        r8 g' g g g g
        g g g g g g
        g g g g g g
        fis fis fis fis fis fis
        \once \tieUp g2 ~ \once \stemUp g4
      }>>

    \cstr \voiceTwo <g' bes>8_\markup { \italic doux } q q q q q
    <fis a> q q q q q
    
    <f aes> q q q q q
    <e g> q q q q q
    <fis a> q q q fis fis
    \repeat unfold 2 { g4 \cstl \stemUp g,8[ \cstr \stemDown g'] fis d }
    
    g4 \cstl \stemUp g,8 \cstr \stemDown bes' a g
    d8.[ \cstl \stemUp a16 fis d a d,] \stemNeutral \oneVoice r4
    R2. R2.
    <<{ \cstr \voiceThree c''8\rest d d d d d } \\ { \cstl bes\rest bes bes bes bes bes }>>
    
    \repeat unfold 24 { bes }
    << { c c c c c c } \\ { bes bes a a a a } >>
    
    << { bes2 r4 } \\ { r bes, r }>>
    \repeat unfold 2 { 
      <<{ bes'8 bes bes bes bes c d16 r r8 s2 } \\
      { ees,8 ees ees ees ees ees d16 r r8 }>>
    }
    <<{ bes'8 bes bes bes bes c } \\ { ees, ees ees ees ees ees }>>

    <<{ d'4 r r s f,2 bes, r4 } \\
      { d4. c8 d bes ees c r4 f, bes,2 r4 }>>
    R2.
    <<{a''8\rest}\\{bes,\rest}\\{e\rest}>>
    <<{ <d f> q q q q <d g> q q q q q <ees g> r r4 r }\\
      { bes8 bes bes bes bes b b b b b b c c c c c c }>>
    c64*2 ees g c r8 r4 r
    R2.
    <<{a8\rest}\\{bes,\rest}\\{e\rest}>>
    <<{ <ees g> q q q q <e a> q q q q q <fis a> r r4 r } \\
      { c8 c c c c cis cis cis cis cis cis d d d d d d }>>

    d64*2 fis a d b8\rest b4\rest b8\rest d8
    \cstr \voiceTwo g16 fis \para g a bes8[ bes bes a16\prall g]
    fis d fis g a8[ a a g16\prall fis]
    g16 fis \para g a bes8[ bes bes a16\prall g]
    d2 r4
    g8_\markup { \italic doux }[ g] g[ g] d[ f]
    ees[ g] ees[ g] e[ g]
    f[ a] f[ d] \cstl cis[ a]

    \cstr d d' g, a bes g
    a \cstl \oneVoice a,,_\markup { \italic fort } a a a a
    a64*2 cis e a r8 r4 r4
    r8 a, a a a a
    a64*8/5 cis e a cis r8 r4 r
    r8 a, a a a a
    \stemUp a16*4/7 cis e a \cstr \stemDown cis e g ~ g4. \cstl \stemNeutral cis,!8
    d c! bes a g a
    \once \stemUp d,2 ~ d16 a fis d
  }

  \repeat volta 2 {
    R2. R2.
    <<{c'8\rest}\\{f\rest}\\{b\rest}>>
    <<{ <f a> q q q q q q q q q q } \\ { d d d d d d d d d d d }>>
    d32*4/3 a f d2 \cstr \voiceTwo d''8
    g a bes4. g8
    a e \cstl \oneVoice cis4. a8
    d cis d cis d bes
    \stemDown a e cis a \stemUp a, c\rest \stemNeutral

    \cstr \voiceTwo <a''' c>_\markup { \italic doux. } q q q q q
    <bes d> q q q q q
    <b d> q q q q q
    <c ees> q q q q q
    <d f> q q q <e g> q
    f4. e8 <d f> <c e>
    <bes d>4. <a c>8 <g bes> <f a>
    <<{ e2
    	-\tweak Y-offset #ly:self-alignment-interface::y-aligned-on-self
    	-\prall
    	r4 } \\ { c2 r4 }>>
    \cstl \oneVoice bes8 bes bes bes bes bes
    a r8 s2

    bes8 bes bes bes bes bes 
    a r s2
    bes8 bes bes bes aes aes
    g2.
    <<{ <c e>8 q q q q q
        q q q q q q
	<bes d> q q q q q
	q q q q q q
	c c c c c c
	<a d>2
    } \\ {
      g8 g g g g g
      fis fis fis fis fis fis
      f f f f f f
      e e e e e e
      <ees a> q q q q q
      d2
    }>>
    <<{ d4\rest } \\ { a'\rest } \\ { d\rest }>>
    \repeat unfold 2 { c8 c c c c c bes8 r s2 }
    s2. s2.


    \cstr \voiceTwo g'8 bes g ees c d
    \cstl \oneVoice \once \stemDown \once \override Beam #'positions = #'(0 . 1) 
    g, g,^\markup { \italic doux. } g g g g
    g64*2 bes d g r8 r4 r
    r8 g^\markup { \italic fort. }[ g g g8. a32*2/3 bes d]
    ees,4. f32*4/3 g bes d,8. f64*4/3 g b
    \once \stemDown c,4. ees32*4/3 g c bes,8. c64*4/3 d g
    a,4. c32*4/3 d fis \stemDown g,8. bes64*4/3 d g \stemNeutral
    fis,4. g32*4/3 a d g,8. a64*4/3 bes d


    <<{ a'2 r4 } \\ { \once \override Beam #'positions = #'(-1.5 . -2.5) \once \stemUp d,,8 d' d d d d } >>
    d64*2 fis a d r8 r4 r
    r8 d, d d d d
    \voiceTwo d64*8/5 fis a \cstr d fis r8 r4 r
    \cstl \oneVoice r8 d, d d d d
    d32*8/7 fis a \cstr d fis a c ~ c4. \voiceTwo fis,!8
    g f ees \cstl d c d
    \oneVoice \once \stemUp \once \tieUp g,2 ~ g32*8/6 d bes g d g,
  }
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        \breaks
        \new Voice = "right" { \right }
        \new Lyrics \lyricsto "right" {
          \markup { \smaller \italic Co }
          \repeat unfold 6 { \markup { \smaller \italic co } }
          \markup { \smaller \italic dai }
        }
      >>
    }
    \new Staff = "left" { 
      <<
        \breaks 
        \new Voice { \clef bass \left }
      >>
    }
  >>
  \layout { 
    indent = 0 
    \context {
      \Score
      \override NonMusicalPaperColumn.line-break-permission = ##f
      \override NonMusicalPaperColumn.page-break-permission = ##f
    }
  }
}
