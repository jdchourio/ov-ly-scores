\version "2.18.2"

su = \stemUp
sd = \stemDown
sn = \stemNeutral
tu = \tieUp
td = \tieDown
tn = \tieNeutral
cstr = \change Staff = "right"
cstl = \change Staff = "left"

\header {
  title = "K77"
  meter = "Moderato e Cantabile"
  tagline = ##f
}

globalOne = {
  \key d \minor
  \time 3/4
  \override ParenthesesItem #'font-size = #+2
}

right = \relative c''' {
  \globalOne
 
  \repeat volta 2 {
    a4 r8. d,16 e8. f16
    g,4 ~ g8.[ bes16 a8. gis16]
    \appoggiatura gis16 a4 ~ a16 \once \slurDown b( cis d e g, f e)

    \appoggiatura e16 f4 ~ f16[ d( cis d e f g a])
    \appoggiatura a32 bes4 ~ bes16 \once \slurDown g( fis g a bes c d)
    \appoggiatura d32 e4 ~ e16 c( b c d e f g)
    \appoggiatura g32 a4 ~ a16 f( e f c' ees, d cis)
    
    \appoggiatura cis32 d4 ~ d16 f( e d e f g a)
    \appoggiatura d,32 c4 ~ c16 e( d c d e f g)
    \appoggiatura c,32 bes4 ~ bes16 c( d c bes a g f)
    \appoggiatura f32 e4 ~ e16 e( d e g e d e)
    
    bes'16 g( fis g e' bes a bes g' e d e)
    bes'4 r16 g fis g c bes a g
    \appoggiatura g32 a4 r16 bes,( a bes c bes a g)
    \appoggiatura g32 a4 ~ a16 g f e f e d c
    
    d e f g f g f g g8.-\trill f32 g
    \appoggiatura g32 f4 r2
  }
  
  \repeat volta 2 {
    c''4 r8. f,16 g8. a16
    bes,4 ~ bes8.[ d16 c8. b16]
    
    \appoggiatura b32 c4 r8. c16 d8. ees16
    \appoggiatura g,32 fis4 r8. fis16 g8. a16
    \appoggiatura ees32 d4 ~ d16 e fis g a bes c d
    \appoggiatura c32 \once \tu bes4 ~ bes8.[ a16 g8. fis16]
    
    \appoggiatura fis32 g4 ~ g16 a b c d ees f g
    \appoggiatura f32 ees4 ~ ees8.[ d16 c8. b16]
    \appoggiatura b32 c4 ~ c16[ d e! f g a bes! c]
    \appoggiatura bes32 a4 ~ a8.[ g16 f8. e16]
    
    \appoggiatura e32 f4 ~ f16 g( a g f e d cis)
    \appoggiatura cis32 d4 ~ d16 e( f e d c b a)
    \appoggiatura a32 gis4 gis16 a b a gis f! e d
    \appoggiatura d32 c4.-\trill b16 a a'4 ~
    
    a16[ b a gis a b a b] b8.-\parenthesize-\trill a32 b
    \appoggiatura b32 a4 r16 f[( e f g a bes c])
    \appoggiatura c32 d4 r16 g,[( fis g a b c d])
    \appoggiatura d32 e4 r16 \su a,[( gis a b cis d e]) \sn
    
    \appoggiatura e32 f4 ~ f16[ d( cis d e f g a])
    bes( g a f g e f d) ees cis d b
    \appoggiatura b32 cis4 r16 \sd cis( d e c bes a gis) \sn
    \appoggiatura gis32 a4 r16 e d e g e d e
    
    bes' g fis g cis g fis g e' bes a bes
    g'4 r16 e d e a g f e
    \appoggiatura e32 f4 r16 g, f g a g f e
    \appoggiatura e32 f4 ~ f16 d cis d cis'8 d ~
    
    d16 g f e a8 d,4 cis8
    \appoggiatura cis32 d4 ~ d8[ c16 bes a g f e]
    d g f e f4 e8.-\trill d32 cis 
    \appoggiatura cis32 d4 r r-\fermata
  }
  
  \time 3/8
  
  \mark "Minuet"
  \repeat volta 2 {
    d'16[ a] d,8 bes' ~
    bes16[ gis] a8 g' ~
    g16 e a d, e cis
    bes'8. d,16 ees gis
    \appoggiatura fis32 a8. cis,16 d fis!
    
    \appoggiatura fis32 g8. b,16 cis e
    \appoggiatura e32 f8. a,16 d c
    bes a g f ees d
    \appoggiatura d32 ees8. ees'16 g f
    ees( d c bes a g)
    
    g fis g g' bes a
    g f ees d cis d ~
    d cis d e a, e' ~
    e d e f a, f' ~
    f e f g a, g' ~
    
    g f g a a, a'
    g f e d cis d 
    e bes( a g f e)
    f[ d'] e,8 cis'
    d4.
  }
  
  \repeat volta 2 {
    d16[ a] d,8 \once \td c' ~
    c16[ a] bes8 g' ~
    g16 ees c bes a g
    \appoggiatura g32 fis8. a16 bes c
    \appoggiatura d32 ees8. g,16 aes cis
    
    \appoggiatura cis32 d8. fis,16 g b
    \appoggiatura b32 c8. e,16 fis a
    \appoggiatura a32 bes8. g16 g' f
    e d c bes a gis
    \appoggiatura gis32 a8. a16 d c
    
    bes a g f ees d ~
    d cis d e a, e' ~
    e d e f a, f' ~
    f e f g a, g' ~
    g f g a a, a'
    
    g f e d cis d
    e f g a bes g
    d' e f g a d,
    g[ e] f8 e-\trill 
    d4.
  }
}
 
left = \relative c {
  \globalOne
  
  \repeat volta 2 {   
    d4 f g |
    r a, b |
    cis a cis |
    
    d d, r |
    g' g, r |
    c' c, r |
    f f, r |
    
    bes' g e |
    a f d |
    g g, bes |
    c c, r |
    
    R2. c''4 c, e |
    f f, e |
    f f' a |
    
    bes c c,
    f r2
  }
  
  \repeat volta 2 {
    f4 a bes
    r c, \once \su d
    
    ees c r
    r d e
    fis d fis
    g g, a
    
    bes g b
    r c d
    ees c e
    f f, g
    
    a f a
    b d f
    e e, gis
    a a' c,
    
    d e e, 
    a a' r 
    bes b r
    c cis r
    
    d d, f
    g g, r
    a' a, r
    a' a, r
    
    R2.
    a'4 a, cis
    d d' cis
    d d, f
    
    g a a,
    bes g r
    gis' a a,
    d r r-\fermata
  }

  \time 3/8
  
  \repeat volta 2 {
    d4 g8
    cis,4 a8
    d4 a'8
    a g g
    g f f
    
    f e e
    e d d
    g r r
    g, r r
    g' r r
    
    g, r r 
    g' r r
    a, r r
    a' r r
    a, r r
    
    a' r r
    a, r r
    r r cis'
    d g, a
    d,4.
  }
  
  \repeat volta 2 {
    d4 fis8
    g4 g,8
    c4.
    d8 d' d
    d c c
    
    c bes bes
    bes a a
    a g g
    c c, e
    f f, f'
    
    g g, g'
    a, r r
    a r r
    a r r
    a r r
    
    a r r
    r a' g
    f d f
    g a a,
    d4.
  }
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      << 
        \breaks
        \right
      >>
    }
    \new Staff = "left" { 
      <<
        \clef bass \left 
        \breaks
      >>
    }
  >>
  \layout { indent = 0 }
}