\version "2.18.2"

su = \stemUp
sd = \stemDown
sn = \stemNeutral
tu = \tieUp
td = \tieDown
tn = \tieNeutral
cstr = \change Staff = "right"
cstl = \change Staff = "left"

global = {
  \key fis \minor
  \time 4/4
  \set Timing.beamExceptions = #'()
}

right = \relative c' {
  \global
 
  \repeat volta 2 {
    r16 fis a fis cis' cis eis cis fis fis, a fis cis' cis, eis cis
    fis8 <fis a> gis cis a a' gis cis,
    
    a fis' d b gis e' cis a'
    <<{ s8 a ~ a[ gis] a4 } \\ { fis16 gis a a, d cis d e cis8 cis b e }>>
    
    cis8 a b e, <b' d> <b d> cis fis
    d b cis fis, <cis' e> <cis e> dis gis
    
    e cis dis gis, eis cis' a fis'
    d b gis e' cis a fis d'
    
    b gis eis cis' a16 b cis cis, <<{ cis'8 b } \\ { fis16 eis fis gis }>>
    cis cis eis cis gis' gis, bis gis cis gis eis gis cis eis gis, cis
    eis, gis r8 r4 r2
  }
  
  \repeat volta 2 {
    r16 cis eis cis gis' gis, bis gis cis8 cis a a'
    gis cis, ais fis' d b cis fis
    
    dis b g g' fis b gis e
    cis a b e cis a' fis d
    
    b gis' eis cis a16 fis a fis cis' cis e cis
    fis fis, a fis cis' cis, eis cis <fis a>8 <fis a> <eis gis> cis'
    
    a a' gis cis, a16 cis d fis a, fis' gis, eis'
    fis fis, a fis cis' cis e cis fis fis, a fis gis8 cis
    
    <fis, a> a' gis cis, a16 cis d fis, a fis gis eis
    fis cis' d fis a, fis' gis, eis' fis cis a cis fis a cis, fis
    a, cis fis, a r4 r2
  }
}
 
left = \relative c {
  \global
  
  \repeat volta 2 {
    fis4 r r2
    r16 fis a fis cis' cis, eis cis fis fis, a fis cis' cis, eis cis
    
    fis fis a fis b b d b e e gis e a a cis a
    d8 cis b e r16 a, cis a e' e, gis e
    
    a a, cis a e' e, gis e r b'' d b fis' fis, ais fis
    b b, d b fis' fis, ais fis r cis'' e cis gis' gis, bis gis
    
    cis cis, e cis gis' gis, bis gis cis cis eis cis fis fis, a fis
    b b d b e e gis e a a cis a d d, fis d
    
    gis gis b gis cis cis, eis cis fis8 e d b'
    <cis, cis'>4 r r2
    r8 cis16 eis gis, cis eis, gis cis,4 r-\fermata
  }
  
  \repeat volta 2 {
    <cis' cis'>4 r r16 cis' eis cis fis fis, a fis
    cis' cis, eis cis fis fis, ais fis b b d b fis' fis ais fis
    
    b b, dis b e e g e b' b dis b e e, gis e
    a a, cis a e' e, gis e a a cis a d d fis d
    
    gis gis b gis cis cis, eis cis fis8 fis, e e'
    d d, cis cis' r16 fis a fis cis' cis, eis cis
    
    fis fis, a fis cis' cis, eis cis fis8 b cis cis,
    fis fis ' e e, d d' r16 cis' eis cis
    
    fis fis, a fis cis' cis, eis cis fis8 b cis cis,
    fis b, cis cis, fis4 r 
    r cis'16 fis a, cis fis,4 r
  }
}

