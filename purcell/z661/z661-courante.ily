\version "2.18.2"

\include "../../include/purcell-ornements.ily"

cstr = \change Staff = "right"
cstl = \change Staff = "left"

global = {
  \key g \minor
  \time 3/2
  \override Staff.Rest #'style = #'classical
  %\override Staff.NoteCollision #'merge-differently-dotted = ##t
  %\set Timing.beamExceptions = #'( (end . (((1 . 16) . (4 4 4 4)))) )
}

right = \relative c'' {
  \global
  
  \partial 8
  \repeat volta 2 {
    \voiceOne d8 
    << { d2. } \\ { <g, bes> }>> r8 g' f4.^\plainShake ees8
    d2.^\plainShake g4 f8 ees d c
    bes4.^\plainShake c8 d a bes g fis4.^\plainShake g8
    \oneVoice \stemUp r a4 d,8 r bes'4 bes8 bes4 a
    
    a^\shake g r8 d'4 d8 d4 c
    c^\shake bes r8 \stemDown ees4 ees8 ees4 d
    r8 g4 g8 g4 f f16 g aes4 g8
    \stemUp f4.^\plainShake ees8 d c bes c bes4.^\shake a8
    
    bes4. f8 <<{ s2 bes2 } \\ { d,2 ~ d } \\ { r4 f ~ f2 }>>
  }
  
  \partial 8 
  \repeat volta 2 {
    d'8
    <<{ d4. } \\ { <f, bes> }>> e'8 f4\prall f f4.^\plainShake e8
    \stemNeutral \repeatGliss e f4.-\prall g8 a g bes a g4.^\plainShake f8
    r e4 f e d8 d4.^\plainShake cis8
    
    d4.-\prall ees8 d c bes c a4.^\plainShake \stemUp d8
    bes4^\plainShake \stemNeutral       a8 g\glissando ees'4. ees8 ees4.^\plainShake d8 
    c4.^\plainShake c8\glissando f4. f8 g[( f]) e( d)
    bes'4.-\prall a8 g4\glissando c e,4.^\plainShake a8
    
    fis2. bes8[ a g f ees^\shake d]
    \repeatGliss d ees4\glissando c f4-\prall f8 ees d c bes^\shake a
    \repeatGliss a \stemUp bes4\glissando g c c8 bes a bes a g
    fis4.^\shake bes4 a g8 g4.^\shake fis8
    <<{ g1 g2 } \\ { r8 d a2. <g bes d>2 }>>
  }
}

leftUp = \relative c {
  \global
  
  \partial 8
  \repeat volta 2 {
    \voiceOne s8
    r4 r8d r4 bes' r c
    r r8 d g2.fis4
    g2 r4 d2 c4
    r a r f' r ees
    
    r d g2. fis4
    r d r bes'2 a4
    ees2 d c4 bes
    a2 bes f
    
    d1 ~ d2
  }
  
  \repeat volta 2 {
    s8
    r4 \voiceTwo \once \stemUp bes' ~ bes a \voiceOne r bes
    r c f2 e4 d
    cis a' g f e2
    
    r4 a, d1
    g,1 ~ g4 c
    r a d2 ~ d
    s1 r4 c ~
    
    c a d c b2
    s1 fis2
    s1 r4 c' ~ 
    c d c bes a2
    r4 r8 g,8 ~ g4 d g2
  }
}

leftDown = \relative c {
  \global
  
  \partial 8
  \repeat volta 2 {
    r8 \voiceTwo 
    g2 g' a
    bes1 a2
    r4 g f2 ees
    d d' c
    
    bes2. bes4 a2
    g \clef treble g' f
    \clef bass r4 ees, r d s2
    r4 f r ees r f,
    
    s1 bes,2
  }
  
  \repeat volta 2 {
    s8
    bes'2 \voiceOne c' \voiceTwo g
    f2. f4 g2
    a1 ~ a4 g
    
    f1 d2
    r g, c
    f2. d4 bes'4. a8
    g4 f ees d c2
    
    d1 r4 g
    c4. bes8 a4 g r d
    g4. f8 ees4 d c2
    d1 ~ d4 d
    s2 g,,2 ~ g
  }
}

\score {
  \header {
    title = "Corant"
    opus = "Z661"
  }

  \new PianoStaff <<
    \new Staff = "right" {
      %<< 
        %\breaks
        \new Voice { \right }
        %>>
    }
    \new Staff = "left" { 
      <<
        %\breaks 
        \new Voice { \clef bass \leftUp }
        \new Voice { \leftDown }
      >>
    }
  >>
  \layout { indent = 0 }
}
