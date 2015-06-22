\version "2.18.2"

\header {
  title = "K347"
  meter = "Moderato e cantabile"
  tagline = ##f
}

global = {
  \key g \minor
  \time 2/2
}

right = \relative c'' {
  \global
 
  \repeat volta 2 {
    <bes d g bes>4 r <a c d fis a> r
    \tuplet 3/2 { <g bes d g>8 d' bes } g8*2/3[ d bes] r4 d'8*2/3 ees f
    \acciaccatura f ees[ d c] \acciaccatura d' c bes a g4 fis-\prall
    g8*2/3[ d bes] g d bes r4 \appoggiatura g''16 f8*2/3 ees d
    
    \acciaccatura \parenthesize f8*2/3 ees[ d c] \acciaccatura \parenthesize d' c[ bes a] g4 fis4-\prall
    \repeat unfold 2 {
      g1 ~
      g8*2/3[ ees d] c[ a' g] fis[ c' bes] a[ g fis]
    }
    
    \appoggiatura c'16 bes8*2/3[ a bes] 
    \appoggiatura bes16 a8*2/3[ g a] 
    \appoggiatura a16 g8*2/3[ fis g] 
    \appoggiatura g16 f8*2/3[ ees f]
    
    \appoggiatura f16 ees8*2/3[ d ees]
    \appoggiatura ees16 d8*2/3[ c d]
    <<{ \appoggiatura { \once \slurDown d16 } c4 ~ c ~
        c8*2/3 d c ~ c4 ~ c8*2/3 d c ~ c4 ~
        c8*2/3[ d cis] ~ cis[ e d] } \\
      { c8*2/3[ bes a] g[ fis g]
        fis4 g8*2/3[ fis g] fis4 g8*2/3[ fis g]
        fis4 }>>
    r2-\fermata
    
    r16 d( ees e f32 fis g a bes b c cis) d2 ~
    d8*2/3[ d c] 
    \appoggiatura d16 c8*2/3[ bes a]
    \appoggiatura f'16 ees8*2/3[ d c]
    \appoggiatura d16 c8*2/3[ bes a]
    
    \appoggiatura c'16 bes8*2/3[ a bes]
    \appoggiatura \parenthesize bes16 a8*2/3[ g a]
    <<{ \appoggiatura { \once \slurDown a16 } g4 ~ g ~
        g8*2/3 a g ~ g4 ~ g8*2/3 a g ~ g4 ~ 
        g8*2/3[ a fis] ~ fis[ b a] } \\
      { g8*2/3[ f e] [ d cis d] 
        cis4 d8*2/3 cis d cis4 d8*2/3 cis d 
        cis4 }>>
    r2-\fermata
    
    r16 a( bes b c32 cis d e f fis g gis) a2 ~
    a8*2/3[ a g] 
    \appoggiatura a16 g8*2/3[ f e]
    \appoggiatura c'16 bes8*2/3[ a g]
    \appoggiatura a16 g8*2/3[ f e]
    
    \appoggiatura g16 f8*2/3[ e f]
    \appoggiatura a16 g8*2/3[ f e]
    d4 cis-\prall
    
    <<{ s4 \appoggiatura { \once \slurDown g'16 } f8*2/3 e f ~ f4 
        \appoggiatura { \once \slurDown f16 } e8*2/3 d e ~ 
        e4 \appoggiatura { \once \slurDown \parenthesize e16 }
        d8*2/3 cis d ~ d4 cis
        
        s4 f8*2/3[ g a]
        \appoggiatura { \once \slurDown g16 } f8*2/3[ e d]
        e f g
        
        \appoggiatura { \once \slurDown f16 } e8*2/3[ d cis]
        d[ cis d] ~ d4 cis
        d2. cis4-\prall
        d1 } \\
      { \repeat unfold 2 {
          d4 a g g f f e8*2/3[ bes' a] g[ f e] }
        d[ e f] g[ f e] f4 e
        f1 
    }>>
  }

  \repeat volta 2 {
    <g b d g>8*2/3[ d' b] g[ d b] g[ f' ees] d[ c b]
    <b' d f aes>[ f' d] b[ aes f] d[ f' ees] d[ c b]
    c'[ g ees] c[ g g'] f[ aes g] \appoggiatura g16 f8*2/3[ ees d]
    
    ees-\prall[ d ees] d[ aes' g]
    <<{ f4 ~ f ~
        f8*2/3 g f ~ f4 ~ f8*2/3 g f ~ f4 ~
        f8*2/3[ g fis] ~ fis[ a g] } \\
      { f8*2/3[ ees d] c[ b c]
        b4 c8*2/3 b c b4 c8*2/3 b c
        b4 }>>
    r2-\fermata
    
    r16 g( aes a bes32 b c d ees e f fis) g2 ~
    g8*2/3[ g f]
    \appoggiatura g16 f8*2/3[ ees d]
    \appoggiatura c'16 aes8*2/3[ g f]
    \appoggiatura g16 f8*2/3[ ees d]
    
    \appoggiatura f16 ees8*2/3[ d ees] d[ c d]
    <<{ c4 ~ c ~ 
        c8*2/3 d c ~ c4 ~ c8*2/3 d c ~ c4 ~
        c8*2/3[ d cis] ~ cis[ e d] } \\
      { c8*2/3[ bes a] g[ fis g]
        fis4 g8*2/3 fis g fis4 g8*2/3 fis g 
        fis4 }>>
    r2-\fermata
    
    r16 d( ees e f32 fis g a bes b c cis) d2 ~
    d8*2/3[ c bes]
    \appoggiatura d16 c8*2/3[ bes a]
    \appoggiatura f'16 ees8*2/3[ d c]
    \appoggiatura d16 c8*2/3[ bes a]
    
    bes-\prall[ a bes] \appoggiatura d16 c8*2/3[ bes a] g4 fis-\prall
    g 
    <<{ bes'8*2/3-\prall[ a bes] ~ bes4
        \appoggiatura { \once \slurDown bes16 } a8*2/3[ g a] ~
        a4 \appoggiatura { \once \slurDown a16 } g8*2/3[ fis g] ~ g4 fis } \\
      { d c c bes bes a8*2/3[ ees' d] c[ bes a] }>>
    
    <<{ g'4 bes8*2/3[ c d] 
        \appoggiatura { \once \slurDown \parenthesize c16 }
        bes8*2/3[ a g] a[ bes c] } \\
      { g,4 d' c c }>>
    
    <<{ \appoggiatura { \once \slurDown bes'16 }
        a8*2/3[ g fis] g[ a bes] ~ bes[ a g] ~ g[ a fis]
        g2. fis4 g1-\fermata } \\
      { bes,4 bes c a
        g8*2/3[ a bes] c[ d ees] d[ c bes] a[ g a]
        g1 }>>
  }
}
 
left = \relative c {
  \global
  
  \repeat volta 2 {
    <g d' g>4 r <d a' d> r
    <g d' g> r g'8*2/3^"G" d bes g4
    c c' <d, g bes d> <d a' c>
    <g, d' g> r g'8*2/3 d bes g4
    
    c c' <d, g bes d> <d a' c>
    \repeat unfold 2 {
      g,8*2/3[ bes d] g[ bes 
      \change Staff="right" \voiceTwo 
      d] g[ bes d] bes[-\prall a g]
      \change Staff="left" \oneVoice
      d,,2. d'4 }
    
    <g, g'> <a fis'> <bes g'> <b g'>
    <c c'> <d bes'> <ees c'> q
    <d c'> <ees c'> <d c'> <ees c'>  
    d d, r2-\fermata
    
    r2 r16 d'( ees e f32 fis g a bes b c cis)
    d4 d, r <fis d'>
    <g d'> <a cis> < bes d> <g g'>
    <a g'> <bes g'> <a g'> <bes g'>
    a4 a, r2-\fermata
    
    r2 r16 a'16( bes b c32 cis d e f fis g gis)
    a4 a, r <cis, a'>
    <d a'> <bes' g'> <a f'> <a e'>
    <d, d'> d, e e'
    f, f' g, a
    
    d, d e e'
    f, f' g, a
    bes g a a 
    d,1
  }
  
  \repeat volta 2 {
    <g d' g>4 r r <g g'>
    <g d' f>4 r r q
    <ees' g c> q <d f c'> <g d'>
    
    <c ees g> <bes d g> ~ <aes c g'> <aes c f>
    \repeat unfold 2 { <g d' f> <aes c f> }
    g g, r2-\fermata
    
    r2 r16 g'( aes a bes32 b c d ees e f fis)
    g4 g, r <b, g'>
    <c g' c> <d bes' d> ~ <ees g d'> <ees g c>
    \repeat unfold 2 { <d a' c> <ees g c> }
    d d, r2-\fermata
    
    r2 r16 d'( ees e f32 fis g a bes b c cis)
    d4 d, r <fis d'>
    <g d'> <ees c'> <d bes' d> <d a' c>
    g, g' a, a'
    bes, bes' <c, c'> <d a' c>
    
    g, g' a, a'
    bes, bes' <c, c'> <d d'>
    <ees d'> <ees c'> d d,
    g1-\fermata
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
        \breaks
        \clef bass \left 
      >>
    }
  >>
  \layout { indent = 0 }
}
