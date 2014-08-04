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
  \key d \major
  \time 2/2
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \override ParenthesesItem #'font-size = #+2
}

right = \relative c'' {
  \global
 
  \repeat volta 2 {
    \repeat unfold 2 {
      d4 d, fis-\trill e8 d
      <d' fis>4 d, fis-\trill e8 d
      <fis' a>4 d, fis-\trill e8 d
      <d' b'>4 a'8 g fis e d cis
    }
    \once \su d4 r a'2 ~
    
    a4 g8 fis e d cis g'
    \once \su fis4 r << {a2 ~
    a2. g4} \\ {s2 a4 g8 fis e d e cis} >>
    \once \su fis4 r << {a2 ~
    
    a2. gis4} \\ {s2 a4 gis8 fis e d cis b} >>
    \once \su a'4 r e2 ~
    e8 fis e d cis b a gis
    a4 r << {a'2 ~
    
    a2 gis} \\ {s2 a4 gis8 fis e d cis b} >>
    \once \su a'4 s2.
    fis,8 s s2.
    a8 s s2.
    
    fis8 s s2.
    a8 e a b c a e c'
    b f d f gis f d f
    a e c e c' a e c'
    
    b f d f gis f d f
    a e c e c' a e a
    b gis d gis d' gis, e gis
    c a e a c a e a
    
    b gis d gis d' gis, e gis
    c a e a e' a, e e'
    e a, f a d b f b
    d b e, b' d b e, b'
    
    d b e, b' d b e, b'
    cis! a fis' d e cis d b
    cis d e d cis b a gis
    a gis fis e d cis b a
    
    cis d e d cis b a gis
    a cis e a cis, e a cis
    \sd e, a cis e a, cis e a
    a,1-\trill-\fermata
  }
  
  \repeat volta 2 {
    \sn a4 a, cis-\parenthesize-\trill b8 a
    \once \su <a' cis>4 a, cis-\parenthesize-\trill b8 a
    <cis' e>4 a, cis-\parenthesize-\trill b8 a
    <a' fis'>4 e'8 d cis b a gis
    a'4 a,, cis-\parenthesize-\trill b8 a
    
    \once \su <a' cis>4 a, cis-\parenthesize-\trill b8 a
    <cis' e>4 a, cis-\parenthesize-\trill b8 a
    <a' fis'>4 e'8 d cis b a gis
    a2 a' ~
    a4 g!8 fis e d cis b

    \once \su e2 a ~
    a4 g8 fis e d cis b
    a2 a' ~
    a8 g fis e d cis b a
    g2 g' ~
    
    g8 fis e d cis b a g
    fis2 a' ~
    a8 g fis e d cis b a
    \once \su b2 b' ~
    b8 a g fis e d cis b
    
    e d cis b a g fis e
    fis a g fis e d cis b
    cis a cis e f d a f'
    e bes g bes d bes g bes
    e cis a cis f d a f'
    
    g bes, g bes g' bes, g bes
    g' cis, a cis f d a d
    e bes g bes d bes g bes
    e cis a cis f d a d
    g bes, g bes g' bes, g bes
    
    
    g' cis, a cis e cis a cis
    a' d, a d a' d, a c
    a' d, bes d g d bes d
    g bes, g bes g' bes, g bes
    g' cis, a cis f cis a cis
    
    f d a d f d a d
    f bes, g bes e bes g bes
    e a, g a e' a, g a
    e' a, f a d a f a
    d a f a d a f a
    
    d bes g bes e bes g bes
    e cis a cis f cis a cis
    f d bes d g d bes d
    g e cis e a e cis e
    a f d f bes g d g
    
    a f d f e' g, e g
    \repeat unfold 3 {
      f' a, f a e' bes g bes
      d a f a cis g e g
    }
    d'[ cis b! a g fis e d]
    fis[ g a g fis e d cis]
    
    \clef bass d[ cis b a g fis e d]
    fis[ g a g fis e d cis]
    d fis a d \clef treble a d fis a
    d, fis a d a d fis a
    d,1-\trill-\fermata
  }
}
 
left = \relative c, {
  \global
  
  \repeat volta 2 {
    \repeat unfold 2 { d2 r d2 r d2 r g a}
    \cstr d''8 \cstl d,, fis a \clef treble d fis a d
    
    \clef bass a,,1
    \cstr fis'''8 \cstl d,, fis a \clef treble d fis a d
    \clef bass a,,1
    \cstr d''8 \cstl d,, fis a \clef treble d fis a d
    
    \clef bass e,,,1
    \cstr cis'''8 \cstl a,, cis e a cis e a
    e,,1
    \cstr a''8  \cstl a,, cis e a cis e a
    
    e,,1
    \cstr cis'''8 \cstl a,, cis e \su a \cstr \sd cis'^"D" a e
    fis \cstl \su d_"G" fis a e \cstr \sd d' b gis
    a \cstl \su a, cis e a \cstr \sd cis a e
    
    fis \cstl \su d fis a e \cstr \sd d' b gis 
    \cstl \sn a,2 \clef treble e''^"G"
    f \clef bass d,,^"G"
    c \clef treble e''
    
    f \clef bass d,, 
    c \clef treble a'''
    gis \clef bass b,,,
    a \clef treble a'''
    
    gis \clef bass b,,,
    a \clef treble a'''
    \clef bass d,,, \clef treble b'''
    \clef bass e,,, \clef treble b'''
    
    \clef bass gis,,, e
    a d
    e e,
    a d
    
    e e,
    a a
    a a
    a1-\fermata
  }
  
  \repeat volta 2 {
    \repeat unfold 2 { a2 r a r a r <d, d'> <e e'> }
    \cstr a''8 \cstl a,, cis e a cis e a
    a,,1
    
    \cstr cis''8 \cstl g,, cis e g cis e a
    g,,1
    \cstr a''8 \cstl fis,, a d fis a d fis
    fis,,1
    \cstr g''8 \cstl e,, g cis e g cis e
    
    e,,1
    \cstr fis''8 \cstl d,, fis a d fis a d
    d,,1
    \cstr b'''8 \cstl g,, b d g b d g
    g,,1
    
    a2 a'
    d g,
    a, \clef treble f'''^"G"
    g \clef bass bes,,,_"G"
    a \clef treble a'''
    bes \clef bass g,,,
    
    a \clef treble a'''
    g \clef bass bes,,,
    a \clef treble a'''
    bes \clef bass g,,,
    
    
    a \clef treble a'''
    \clef bass f,,, \clef treble a'''
    \clef bass g,,, \clef treble g'''
    \clef bass e,,, \clef treble e'''
    \clef bass f,,, \clef treble f'''
    
    \clef bass d,,, \clef treble d'''
    \clef bass e,,, \clef treble e'''
    \clef bass cis,,, \clef treble cis'''
    \clef bass d,,, \clef treble d'''
    \clef bass f,,, \clef treble f'''
    
    \clef bass g,,, \clef treble g'''
    \clef bass a,,, \clef treble a'''
    \clef bass bes,,, \clef treble bes'''
    \clef bass <cis,,,, cis'> <a a'>
    d g
    
    a a
    d g 
    a a,
    d g
    a a,
    
    d g
    a a,
    d g
    a a,
    
    d g,
    a a
    d, d
    d d
    d1-\fermata
  }
}
