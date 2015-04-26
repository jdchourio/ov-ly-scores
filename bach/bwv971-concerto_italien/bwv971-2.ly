\version "2.18.2"

\include "../../tagline.ily"

breaks = {
}

#(set-global-staff-size 17)

\paper {
  #(set-paper-size "a4")
  print-page-number = ##f
  %between-system-padding = #0.1
  %between-system-space = #0.1
  %ragged-last-bottom = ##f
  %ragged-bottom = ##f
  oddFooterMarkup = \gitTagline
  evenFooterMarkup = \gitTagline
}

cstr = \change Staff = "right"
cstm = \change Staff = "middle"
cstl = \change Staff = "left"

\header {
  %title = "Concerto Italien"
  piece = "Andante"
  tagline = ##f
}

global = {
  \key f \major
  \time 3/4
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  %\override Staff.Rest #'style = #'classical
  %\override Beam #'damping = #5
  \override Stem.details.beamed-lengths = #'(4.5 4.5 5 6)
}

right = \relative c''' {
  \global
  
  R2.*3
  a4-\mordent^\markup { \italic "forte" } ~ a16 g( f e d cis d) f(
  f32) e d16 e8 ~ e16 g a bes ~ bes cis,( d e)
  a,32( g f16) g8 ~ g16 a bes! cis ~ cis d8 e16 ~ 
  e g, f-\prall e f bes a-\prall g a b32( cis d e f g)
  
  f e d e f16 d \appoggiatura c8 bes2 ~
  bes16 a32 g f g e16 \appoggiatura e8 a2 ~
  a16 b32 cis d cis b a d16 bes a-\prall g ~ g32 a g fis g16. g32
  g16 e'8. ~ e32 d cis d e d cis b a16 g ~ g32 bes a g
  
  f g f e f a cis,16 cis( d) r8 r d' ~
  d16 c bes-\prall a bes g bes d g d bes'8 ~
  bes32 c bes a bes g a bes f16( e) r8 r c32 d e16 ~
  e32 bes c d c bes a g a f g a bes c d e f e d c a'8-\mordent ~
  
  a16 d, d32-\prall c d16 d g8. ~ g4 ~
  g32 bes( a g f e d c) c16 f8. ~ f4-\downprall ~
  f32 e d e f16 d c32 bes a16 bes8-\mordent ~ bes32 c bes a bes16. bes32
  bes16 g'8. ~ g32 f e f g f e d c16 bes32 a bes16. g'32
  
  bes,16( a) a'8 ~ a32 g f g a g f e d c bes a g f e f
  f16 e ~ e32 g f e bes' c bes a bes16 c ~ c d8 e16 ~
  e32 g f e f c d e f e f g f g a g a bes a bes c a bes c
  c16 f,8 e16 ~ e32 d e f e g f e d c bes a bes16. g'32
  
  g f e g f e d f e d c e d c bes d c bes a c bes a g bes
  bes16 c,8 e16 g bes d c ~ c32 bes a g a16 c ~
  c32 g f e f16 d' a32 bes a g a g f g g8.-\downprall f32 g
  f4 r r
  
  r f'2-\mordent ~
  f16 e32 d cis16 d g,32 a bes8 bes16 ~ bes32 c bes a bes c bes a
  bes16 g'8 cis,16 ~ cis e8 g16 ~ g bes8 a16 ~
  a32 g f e f16 d ~ d32 cis d e d cis b a ~ a16 d8 f16 ~
  
  f32 g f e f16 bes ~ bes a8 g16 ~ g f32 e d c bes a
  g b d f ~ f16 e ~ e32 d c b! c16 g ~ g c8 e16 ~
  e32 f ees d ees16 c' ~ c32 bes a16 ~ a32 g f16 ~ f32 ees! d ees f ees d ees
  f, a g f c' bes a ees' d32 cis d8. ~ d32 d, cis d e f g a
  
  bes d bes a bes d bes a g fis g8. ~ g32 bes g fis g e' g, fis
  g16( bes! cis e) ~ e32 d cis d e d cis b a16 g32 f g16. e'32
  g,16( f) f'8 ~ f32 e d e f e d c bes16 a32 g a16. f'32
  a,16( g) g'8 ~ g32 f e f g f e d cis16 bes!32 a bes16. g'32
  
  bes,16( a8) cis16 ~ cis d8 e32 f g a bes a bes16. bes32
  bes16 cis,8( d32 e) e16 g,8( a32 bes) bes e f g ~ g16 bes,
  a32 d e f ~ f16 gis, ~ gis32 b a gis a b cis d e bes a gis a g fis g
  g4-\mordent ~ g32 a cis e g bes a16 ~ a32 g f e f16 a ~ 
  
  a32 e d cis d16 bes' f32 g f e f e d e e8.-\downprall d32 e
  d8 c32( d ees16) ~ ees32 d c16 ~ c32 bes a16 ~ a32 g fis e d cis d16 ~
  d e32 fis g d g a bes g bes c d a cis d e f g a bes d, cis d
  d16 g, ~ g32 a g f g16 cis32 d e16 g, f32 a b cis d16 bes
  gis16 a8 d,32 g f16 ~ f64 g f e f e d e d cis d e 
  \once \override Script.X-offset = #1.5 e8.-\downprall d32 e
  d4 r r \bar "|."
}

middle = \relative c' {
  \global \voiceOne
  
  f8 r r f g a
  bes r r a g f
  e r r g f e
  f r r f g a
  
  bes r r a g f
  e r r g f e
  f r r e d cis
  d r r f e d
  
  e r r e d cis
  d r r d cis b
  cis r r cis d e
  f r r f g a
  
  bes r r a g f
  e r r e f g
  a r r g f ees
  d r r d c bes
  
  c r r c bes a
  bes r r a g f
  e r r e f g
  a r r f g a
  
  bes r r g a bes
  c r r c bes a
  bes r r bes a g
  a r r a g f
  
  g r r g a e
  f4 ~ f8 e16 d e8 bes'
  a8 r r a b cis
  d r r f g a
  
  bes r r a g f
  e r r g f e
  f r r f g a
  bes r r bes, c d
  
  e r r e f g
  a r r a, bes c 
  d r r c bes a
  g r r f e d
  
  cis r r cis d e 
  f r r d e f
  g r r e f g
  a r r a g f
  
  g r r g f e 
  f r r f e d
  e r r e f cis!
  d4 ~ d8 cis16 b cis8 g'
  
  fis r r fis! g a
  bes r r a g f
  g r r e f a
  d,2 ~ d16 cis g'8 ~
  g f r4 r \bar "|."
}

left = \relative c' {
  \global \voiceTwo
  
  \cstm d8 \cstl d, d \cstm d' e f
  g \cstl d, d f' e d
  cis d, d e' d cis
  d d, d d' e f
  
  g d, d f' e d 
  cis d, d e' d cis 
  d d, d g f e
  d d, d d'' c bes
  
  c c, c c' bes a
  bes bes, bes bes' a g
  a a, a a' b cis!
  d d, d d' e f
  
  g g, g f' e d
  c c, c c' d e
  f f, f e' d c
  bes bes, bes bes' a g
  
  a a, a a' g f
  g g, g f' e d
  c c, c c' d e
  f c, c d' e f
  
  g c,, c e' f g
  a c,, c a'' g f
  g c,, c g'' f e
  f c, c f' e d
  
  e c, c e' f c
  d bes c2
  f8 f, f g' f e
  d d, d d'' e f
  
  g d, d f' e d
  cis d, d e' d cis
  d d, d d' e f
  g g,, g g' a bes
  
  c c, c c' d e
  f f,, f f' g a
  bes bes, bes a' g f
  e e, e d' cis b
  
  a a, a a' b cis
  d a, a b' cis d 
  e a,, a cis' d e
  f a,, a f'' e d
  
  e a,, a e'' d cis
  d a, a d' cis b
  cis a, a cis'! d a
  bes g a2
  
  d8 d, d d' e fis!
  g d, d f' e d
  e d, d cis' d f
  b, bes a gis a4
  d r r \bar "|."
}

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
        \new Voice { \clef bass \middle }
        \new Voice { \clef bass \left }
      >>
    }
  >>
  \layout { 
    indent = 0 
    \context {
      \Score
      %\override NonMusicalPaperColumn.line-break-permission = ##f
      %\override NonMusicalPaperColumn.page-break-permission = ##f
    }
  }
}

