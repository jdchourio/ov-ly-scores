\version "2.18.2"

cstr = \change Staff = "right"
cstl = \change Staff = "left"

\header {
  title = "Sonata nach der Violinsonate a-moll"
  subtitle = "d-moll"
  meter = "Adagio"
  opus = "BWV 964"
  tagline = ##f
}

global = {
  \key d \minor
  \time 4/4
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
}

right = \relative c'' {
  \global
  
  \voiceOne
  <<{ a4 ~ a32 bes a g64 f e16 d } \new Voice { \voiceTwo <d f>4 }>>
  d16-\prall cis d8 ~ d16 d32 e f g a16
  <<{ bes16. a32 g16 f32 e e8 d32 cis d16 cis8 b!16 a }
    \new Voice { \voiceTwo d8 r b4 a8 }>>
  \cstl g16. bes!32 a g f g64 e
  
  \cstr \oneVoice s8 d'32 f a bes \voiceOne
  <<{ bes8.-\prall a32 bes c16. bes32 a16 g32 f f8 ees32-\prall d ees16
      d8. d'16 c32 bes16 a32 g16 a32 f e!32 d c d e f64 g a bes c e, f8.-\prall e32 f
      g8. c,16 }
    \new Voice { \voiceTwo r8 f <c f>4 r8 c
      bes4 r8 d c4 r8 c c }>>
  \oneVoice
  
  \tuplet 3/2 { bes16[ a g] } \tuplet 3/2 { d' c bes } 
  a16. \tuplet 3/2 { c64 d e } f16. \tuplet 3/2 { c64 d e }
  f64 g a16 e32 f g a c64 b
  <<{ \voiceOne b16 d f g32 e f c bes a bes8 a8. d16 e,8. f16 f8 ~ f32 c d e }
    \new Voice { \voiceTwo f4 r8 f f4 c c8 }>>
  
  \oneVoice f32 g a bes a g f e64 d cis32 a cis e g d bes g r16 r32 bes' a g f g64 e
  f8 e16-\prall d 
  <<{ \voiceOne b'8. b16 b8. c32 d c16 b c a
      a gis fis e } \new Voice { \voiceTwo 
      r32 g f e f16. d32 <d f>4 r8 e16 c b8 r }>>
  \oneVoice e'4 ~ e32 g! bes,!16 ~ bes32 c bes a g!-\prall fis g16 e' g,
  
  <<{ \voiceOne fis16. a32 b c d e f! e f16 gis, f' \appoggiatura f8 e8. d16 d c d b a8 r }
    \new Voice { \voiceTwo d,8 r r gis a8. b!16 b a b gis dis8 ~ dis32 e fis gis a[ fis dis16] }>>
  s8 <<{ a'16 ~ a64 b a gis a16 d!32 b \appoggiatura a8 gis!8. a16 
      a4 ~ a16 bes!32 a g! f! e f64 d }
    \new Voice { \voiceTwo e4 e e }>>
  \oneVoice cis8 ~ cis32 d e d cis[ b a16] s8
  
  d8 ~ d32 e d cis d e f g a bes c ees64 d 
  <<{ \voiceOne e16 d d c c bes c a } \new Voice { \voiceTwo r8. a16 a g a fis }>>
  <<{ bes16 d32 c d8 ~ d32 ees d c bes a g a64 fis
      g4 \cstl d,32[ g \cstr b d] f! aes g d } \new Voice { \voiceTwo
      g8 r s2 s16 b,16 \noBeam ~ b8 }>>
  
  \oneVoice ees8 g32[ b c ees] bes16 a!16.-\prall g32 fis g fis16. g32 a bes c a ees!4
  s32 s s g[ bes cis d ees]
  <<{ \voiceOne g,8 fis16.-\prall g32 g16. f64 ees d32 c bes c64 d }
    \new Voice { \voiceTwo d8 c! <bes d>4 }>> 
  s32 s s g' bes d c64 a bes32
  
  <<{ \voiceOne bes8 ~ bes64 g a bes c d e! f g16 e32 c bes16-\prall a a4 }
    \new Voice { \voiceTwo <c, e!>8 r r4 e8 ~ e32 g f e }>>
  \oneVoice d32 cis d f a cis d bes
  
  <<{ \voiceOne \appoggiatura a8 g16. a64 bes r16 a g8 f32-\prall e f16 e8 ~ e32 cis' d e \stemUp d[ cis b a g] }
    \new Voice { \voiceTwo d8[ cis] d b cis!4 }>> s32 s s
  
  \oneVoice r16 c!32 d ees16. d32 c32 b c16 a'16. c,32
  b32. d64 e32 f g a bes! c <<{ \voiceOne bes a bes g r16 bes } \new Voice { \voiceTwo r8 cis, }>>
  
  <<{ a'32 d c bes a bes g16 ~ g f g e d'8. e32 f } 
    \new Voice { \voiceTwo d,4 ~ d8 cis <d f b> }>>
  \oneVoice e'32 cis d bes a gis a d,
  
  d32 e f8 g!32 e e8.-\upprall d16 d32 e d cis d f bes16 ~ bes32 f e dis e gis a16 ~
  a32 a d cis d f e g \stemDown c, d a f s16 r32 \stemNeutral d ees e f fis g gis a64 g f g
  <<{ \voiceOne gis8.-\trill f32 gis } \new Voice { \voiceTwo d4 }>>
  <cis a'>1-\fermata \bar "|."
}

left = \relative c' {
  \global
  
  \voiceOne
  <<{ a4 a~ a8[ g] } 
    \new Voice { \voiceTwo d4 c bes } 
    \new Voice { \voiceThree f' e }
  >>
  <<{ f4 ~ f8 e4 e8 ~ e d4 \voiceThree cis8 } 
    \new Voice { \voiceTwo a4 g gis a2 }>>
  
  <<{ \voiceOne s16. a'32\noBeam  ~ a8 }
    \new Voice { \voiceOne \tieDown f16\noBeam  f\noBeam  ~ f8 }
    \new Voice { \voiceOne \tieDown s32 d16. ~ \stemDown d8 }
    \new Voice { \voiceTwo \tieDown d,32[ d' f a] } >>
  \oneVoice r8 d a4 r8
  
  <<{ \voiceOne a8 f4 r8 bes g4 r8 a g r r }
    \new Voice { \voiceTwo f8 bes,4 r8 bes bes4 r8 a e'4 r8 }>>
  <<{ \voiceOne g8 f4 r} \new Voice { \voiceTwo c8 f,4 r } \new Voice { \voiceThree { e'8 c4 } }>>
  
  <<{ d' r8 f, c' r r16 g bes8
      a8 s r a g4 e8 <cis e>
      d4 } 
    \new Voice { \voiceTwo
      d4 r8 d c bes c4
      <f f,>4 r8 f e[ d] cis a
      d,4 }>>
  \oneVoice r4 gis' r8 a
  
  e4 r16 e32 f! g! a bes! g
  <<{ \voiceOne r8 g bes4 } \new Voice { \voiceTwo cis,4. cis8 } \new Voice { \voiceThree s8 e4. }>>
  
  <<{ a4 r8 d, e f e4 a8 r s4 <a c> <b! d!> }
    \new Voice { \voiceTwo c,!4 r8 b c d e4 
      fis8 ~ fis32 gis a b c16. c32 b gis! a dis, e4  e}>>
  <<{ <a c>4 } \new Voice { \voiceTwo a, } \new Voice { \voiceThree e' }>> \oneVoice r4
  <<{ \voiceOne a4 } \new Voice { \voiceTwo g! }>> \oneVoice r16 r32 g f!16 g32 e
  
  <<{ \voiceOne a4 r [c8 a] d d, } 
    \new Voice { \voiceTwo f4 r fis r8 d } 
    \new Voice {\voiceThree s2 a'4 }>>
  <<{ s4 r8 d ~ d32 d c bes! a fis g ees }
    \new Voice { \voiceTwo g8. f!32 ees f8 d ees!4 d }>>
  
  \oneVoice c32 b' c ees r8 <<{ \voiceOne r <e,! a> a4 } \new Voice { \voiceTwo r8 cis,8 d4 }>>
  \oneVoice r16. fis64 g a32 bes c! a
  
  bes cis d s s8 
  <<{ \voiceOne a4 g } \new Voice { \voiceTwo d g, }>> \voiceTwo g'32 bes \cstr d \cstl s32 s8
  <<{ \voiceOne g,8 r r4 a8 r r4 } \new Voice { \voiceTwo c,8 r r4 f8 r r4 }>>
  
  <<{ \voiceOne bes8[ g] a gis a4 } \new Voice { \voiceTwo e4 d a }>> \voiceTwo s8 s32 \cstr e'' \cstl cis a
  \oneVoice fis4 <<{ \voiceOne r8 a g4 r8 g a bes a4 b } \new Voice { \voiceTwo r8 fis f4 r8 e f g a,4 gis' }>>
  
  \oneVoice r4 a8 g! a a, d d, c! c'!
  bes4 s8 d'32 a bes16 ~ bes8[ bes,]
  <<{ \voiceOne r16 f'! e d } \new Voice { \voiceTwo b4 }>>
  <a e'>1-\fermata \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        \breaks
        \new Voice { \right }
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
