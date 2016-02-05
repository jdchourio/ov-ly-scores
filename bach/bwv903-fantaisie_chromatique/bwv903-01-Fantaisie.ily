\version "2.18.2"

\header {
  title = "Fantasia"
}

cstl = \change Staff="left"
cstr = \change Staff="right"

global = {
  \key c \major
  \time 4/4
  \override Beam #'damping = #5
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \set PianoStaff.connectArpeggios = ##t  
}

right = \relative c' {
  \global
  
  r32 d( e f g a b cis) d( c bes a g f e d) cis d e f g a b e r4
  r16 a,32( b cis d e f g f e d c b a64 g f e) d32( e f a c[ d f16]) r4
  
  \voiceOne \tuplet 3/2 { r16 d f } r16*2/3 d g r d a' r d, bes' r cis,[ e] g bes g e cis a r8
  r16*2/3 f' d r g d r a' d, r bes' d, cis s s r8 r8 bes16*2/3 cis e
  
  r16*2/3 e[ f] bes8 r16*2/3 d,[ e] a8 r16*2/3 cis,[ d] g8 r16*2/3 bes,[ c] f8
  r16*2/3 bes, ees r a, d r g, cis r a d r f, bes r e, a r f bes r e, a
  
  r16*2/3 \oneVoice f bes gis f d r d f gis b d, r ees a fis ees c r c ees fis a c,
  r d g f e d r d b' f e d r \stemUp cis e f d \cstl gis, \cstr r cis e f d \cstl gis, \cstr
  
  r16*2/3 c f dis c \cstl a \cstr r \cstl a \cstr c dis fis \cstl a, \cstr 
  r \cstl bes \cstr e cis \cstl bes g \cstr r \cstl g bes \cstr cis e \cstl g,
  
  \voiceOne r a d b gis s r g c a fis s r g bes \cstr cis e cis \cstl bes g r s s s
  r f bes gis f s r e a fis ees s r d g e cis s r d f d b r
  r c ees r ees g r g c r c \cstr ees r cis e r e g r g bes r bes cis
  
  r bes cis g' f e r cis e bes' a g r bes, cis g' f e r cis e bes' a g
  r a, cis d e f r cis d f g a f e d c bes a \stemDown g f e \cstl d cis bes
  
  \oneVoice \cstr r g' cis e d cis r e, g bes a g r g cis e d cis r e, g bes a g
  r cis, d f g a r f gis a cis d \voiceOne r a cis d e f r cis d f gis a
  
  \oneVoice b gis a b d, e f b, c d gis, a b d, e f b, c d \cstl gis, a b \cstr cis d
  cis e d cis \cstl b a g f e d cis e a,\noBeam \cstr f'' e d \cstl bes a g f e d cis e
  
  \cstr r g' f e d cis bes' a g f e d' cis b a g f' e d c b gis' f e
  d cis e a e cis e[ cis a] cis[ a e] a[ e cis] e[ cis \cstl a] e[ cis a] \cstr a'''8*2/3-\mordent s16*2/3
  
  r32 e, f g a b cis d e f g a bes a g f e f g f e d cis d e d cis b a g bes a
  g f e f g f e d \stemUp cis d e d cis \cstl b a g \stemNeutral bes a g f e f g f e d cis d e d cis b
  
  a b cis d e f g f e g f e d cis b a b cis d e f g a bes a g f a g f e d
  cis d e f g a bes a \stemDown g a b cis \cstr d e f g f g a e f cis d \cstl a f g a f d f e d
  
  gis fis e b' a gis d' c b \cstr f' e d gis f e b' a gis d' c b f' e d gis16( a64 gis fis fis gis16.-\trill fis64 gis)
  \stemNeutral \tuplet 3/2 { a16[ d a] } f16*2/3[ a f] d[ f d] a[ d a] f[ a f] d[ f d] \cstl a[ d a] f[ a f]
  
  \override TupletBracket.bracket-visibility = ##f
  \tuplet 3/2 { d16[ f a} \cstr \tuplet 3/2 { d] f[ a } \tuplet 3/2 { d a f] } \tuplet 3/2 { d[ \cstl a f] } \cstr 
  <<{ e''2 f fis g gis } \\ 
    { <e, g bes>_"arpeggio"
      <f a d> <a c e>
      <g bes d> <b d f> }>>
  
  <<{ a'16. a32 bes a g a  a8.-\trill g32 a bes2 ~
      \stemDown bes32 a g f e f g e } \\
    { <a, cis e>4 s <cis e g>2 }>>
  \stemDown cis32[ d e cis] \stemUp g[ a bes g] \stemDown e[ f g e] 
  \stemUp cis[ d e cis] \cstl \stemDown g[ a bes g] \stemUp e[ f g e]
  
  \stemDown cis[ d e cis] a[ b! cis d] \stemUp e[ f g e] \stemDown cis[ d e f] 
  \stemUp g[ a bes g] \stemDown e[ f g e] \stemUp cis[ d e cis] \stemDown a[ b! cis a] \cstr \stemNeutral
  
  <<{ ees'''2 d4 c
      bes2 c
      cis d 
      d c
      c des
      ees cis
      d c
      <g bes> <g bes~>
      <g bes> <f a>
      \slurDown a ~ a16( g f e f cis d \cstl a) } \\
    { <fis' a c>2_"arpeggio" <d fis a>
      <dis fis a> q
      <e g bes> <f gis b>
      <e gis b> <e a>
      <ees a> <ees bes'>
      <f a c> <e g bes>
      <f a> <fis a>
      ees ees4 d
      <cis e>2 q
      <d f> }>>
  
  \cstl \stemUp bes16( gis a e f cis d a) bes( d f a) \cstr d( f a gis)
  a[ fis dis c \cstl b] \stemNeutral a[ fis e] \cstr
  <<{ <fis' a>2 } \\ { c4_"arpeggio" b }>>
  
  <<{ <e a>2 <e gis>
      <b' c> <a c>
      <a c> <fis b>4 <fis a>
      <e a>2 <e a>4 <e gis>
      <e a>2 ~ a16_"Recitativo" bes a g } \\
    { <a, c>2 <b d>
      <e gis> <c e>
      <c e> <b dis>4 <c dis>
      <a c>2 <b d>4 <b d>
      d cis }>>
  fis 32 g fis g g-\trill fis64 g a fis d32

  <<{ r4 a'8 aes } \\ { dis,8 c <c ees>4 }>> 
  r16 ees f g aes32 bes c des c des ees64 des c des
  <<{ ees8 r ees4 } \\ { r4 <ees, ges> } \\ { s4 bes'8 a }>> 
  r16 ees' ges f ees des c des32 bes
  
  <<{ bes8( a) <ees a>4 ~ a16 bes a bes bes8.-\trill a32 bes
      c8 r <a c>4 ~ c16 des c des des8.-\trill c32 des
      ees16 c a bes bes a <f a>8 } \\ 
    { r4 c ~ c16 des c des des8.-\trill c32 des
      ees8 r <ees ges>4 ~ ees16 f ees f f8.-\trill ees32 f
      ges4 r8 <c, ees> }>>
  r16 f a c ees ges f ees32-\prall des
  
  <<{ des8 r des4 ~ des16 des( fes ees des32 ces bes ces ces32.-\prall bes64 ces32 des)
      aes8( g) g4 } \\ { r4 <des ges bes> r2 s4 <bes des ees> }>>
  r16 g' ees f g aes32 g f16 aes32 g
  gis8-\mordent r <<{ \slurNeutral gis4 ~ gis32 b,( cis dis e fis gis a) } \\ { <b, e>4 }>> b'16 d cis e32 d
  
  d8-\mordent r32 <<{ eis,32 gis b d16 cis8. } \\ { \set tieWaitForNote = ##t eis,16.*1/3\noBeam ~ gis16 ~ <eis gis>4 }>> r8 b' b a
  a gis gis32 a b cis d b gis64 eis fis32 <<{ fis8[ eis] } \\ { d4 }>> r32 eis fis gis fis16.-\trill eis32
  <<{ b'16cis32 d cis16 b a gis32 b a16 gis32-\trill fis } \\ { b8 a16 gis fis8 eis }>>
  
  <<{ dis'4 \arpeggio } \\ { <fis, a>\arpeggio }>>
  r32 e'32 dis c bis c dis fis
  a8 a bis,32 dis fis a gis16 a32 fis
  <<{ fis8 e ~ \tuplet 3/2 { e16[ cis b] } cis16*2/3 gis fis } \\ { <gis cis>4 r }>>
  
  gis16*2/3[ e dis] e[ cis bis] cis[ e dis] e[ a gis] a[ cis b] cis[ e d] e[ fis g] g16-\trill ~ g64 fis g a
  <<{ ees16( d8.) d8 ~ d32 d c bes a32 bes c ees c bes a g } \\ { r4 <d fis a>4 }>> fis32 g a c a g fis e
  
  d e fis a g fis e d \stemUp c d ees fis ees d c \cstl bes \stemNeutral a bes c ees c bes a g fis g a c a g fis e
  d e fis g a bes c a \stemDown bes c f, g a bes \cstr c d ees c d ees \cstl a, bes c d \cstr e fis g a fis g a d,
  e fis g a bes c a bes c fis, g a bes c d ees
  c d ees a, bes c d e fis g a fis g a d, e
  fis g a bes c bes a g fis e d c bes a g fis e d c \cstl bes a g fis e \stemNeutral
  
  <<{ d16[ \cstr \once \stemDown c''] bes c32 a } \\ { \cstr s8 <d, fis> }>> \cstr
}

left = \relative c' {
  \global
  
  s1 s1 \change Staff="right" \voiceTwo
  d8 e f g a16*2/3 r s r8 r g16*2/3 f e
  d8 e f g \tuplet 3/2 { r16 bes g } e16*2/3[ cis a] cis e g r8

  d'8 r16*2/3 d g, c8 r16*2/3 c f, bes8 r16*2/3 bes e, a8 r16*2/3 a d,
  g8 f e f d cis d cis
  
  d8 s \change Staff="left" b s c s a s 
  bes s gis s a s a s
  
  a s fis s g s e s
  \scaleDurations 2/3 { fis8 s16 s s f e8 s16 s s ees d8 s s s f16 ees[ d cis] }
  
  \scaleDurations 2/3 { d8 s16 s s d cis8 s16 s s c b8 s16 s s bes a8 s16 s s aes }
  g8[ c] ees[ g] bes[ \cstr cis] e[ g]
  
  \cstl a,8 s \cstr g' s \cstl a, s \cstr g' s
  f s a s s2 \cstl
  
  a,8 s cis s a s cis s
  a s d s \cstr f s a s
  
  \cstl \oneVoice s1*2 a,,16 s s8 s2. 
  s1*7 s2 
  
  <<{ <e' g cis>2
      <f a d> <fis a c>
      <g bes d> <f gis b>
      <e a> <c e> } \\ 
    { d d d d d cis g }>>
  
  s1*2
  <<{ <a c ees>2 a'
      <fis a b> <fis a c>
      <bes cis> <b d>
      <e, gis b> <e a>
      <a c> <bes c>
      <a c> <g bes cis>
      < a d> q
      bes <bes, ees g>
      <cis e g> <cis e f>
      <d f> } \\
    { fis,2 fis' dis dis
      g gis c, c
      ges' ges f f
      f fis g g,
      a a bes }>> r2
  
  s1 s2 <<{ <fis' a> } \\ { dis }>>
  <<{ <a c e> <b e>
      <gis' b c> <e a>
      <a, c f> <a b dis>4 <a c dis>
      <a c e>2 <b e>4 q
      <e a>2 r } \\
    { e,2 e
      e' c4 a
      f2 fis4 fis
      e2 e4 e
      a2 r }>>
  
  <<{ r4 <aes c ees>4 s2
      r4 <ees' ges c> r2 } \\
    { r4 g, s2 r4 c r2 }>>
  r4 <<{ aes'4 } \\ { g r2 }>>
  
  <<{ r4 <c, ees ges> r2
      r4 r8 <a c f> r2
      r4 <ges bes des> r2
      r4 <bes ees> r2
      r4 <b e> r2 } \\
    { r4 a r2
      r4 r8 f r2
      r4 fes r2
      r4 ees r2
      r4 d r2 }>>
  
  r32 <<{ cis'32 eis gis cis4. } \\ 
    { \set tieWaitForNote = ##t cis,16.*1/3\noBeam ~ eis16*1/2\noBeam ~ 
      \once \hideNotes gis32 ~ <cis, eis gis>4. }>> r8 d' d cis
  
  cis8. b16 b8 cis16 d
  <<{ gis,4 r gis8 a16 b cis8 b } \\ { b,4 r eis8 fis cis4 }>>
  <<{ <dis fis a>4\arpeggio r r <bis dis gis>\arpeggio <e gis cis> r 
      r1 r4 <d fis a> r2 } \\
    { bis4\arpeggio r r gis\arpeggio cis r r1 r4 c r2 }>>
  
  s1*3 
  s2. \voiceTwo r8 <<{ <fis a> } \\ { d }>>
}

breaks = { \repeat unfold 79 { s2 \bar "" s2 \bar "|" } }

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        \breaks
        \new Voice = "right" { \right }
      >>
    }
    \new Staff = "left" { 
      <<
        \breaks 
        \new Voice { \clef bass \left }
      >>
    }
  >>
  \layout { indent = 0 }
}
