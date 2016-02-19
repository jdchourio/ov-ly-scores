\version "2.18.2"

\header {
  title = "K95"
  tagline = ##f
}

cstl = \change Staff = "down"
cstr = \change Staff = "up"
sd = \stemDown
su = \stemUp

global = {
  \key c \major
  \time 12/8
}

two = \relative c' {
  \global
  \voiceTwo

  \partial 4.
  \repeat volta 2 {
    \repeat unfold 5 { c8 e g }
    \repeat unfold 4 { b, d g }
    \repeat unfold 4 { c, e g }
    \cstl \su g, \cstr \sd c e
    \repeat unfold 2 { \cstl \su g, \cstr \sd c d }
  }

  \repeat volta 2 {
    \cstl \voiceOne 
    \repeat unfold 5 { e, g c }
    \repeat unfold 4 { f, a c }
    \repeat unfold 4 { fis, a d }
    \repeat unfold 4 { g, b d }
    
    \repeat unfold 3 {
      \repeat unfold 2 { g, \cstr \sd c e \cstl \su }
      \repeat unfold 2 { g, \cstr \sd b d \cstl \su }
    }
    \repeat unfold 2 { g, \cstr \sd c e \cstl \su }
    <<{ \cstr <b d>4. \cstl } 
      \new Voice { \crossStaff { \su g } }>> 
    %<g, b d>4. 
    
    \repeat unfold 5 { e8 g c }
    \repeat unfold 4 { f, a c }
    \repeat unfold 4 { fis, a d }
    \repeat unfold 4 { g, b d }
    \repeat unfold 4 { b d \cstr \sd g \cstl \su }
    
    \cstr \voiceTwo
    \repeat unfold 4 { c, e g }
    \repeat unfold 4 { f a c }
    \repeat unfold 4 { e, g c }
    
    \repeat unfold 4 { d, f b }
    c, e g \cstl \voiceOne e, g c 
    f, a d g, b d
    \cstr \voiceTwo 
    \repeat unfold 3 { c e g }
  }
}
 
one = \relative c'' {
  \global
  \voiceOne
  
  \partial 4.
  \repeat volta 2 {
    g8 r r
    c4. s s c4 b16 c
    d4. s s d4 c16 d
    e4. s s e
    e-\trill d s
  }

  \repeat volta 2 {
    g,
    \grace { a16 bes } c4. bes! s \grace { g16 a } bes4.-\prall
    a s s a
    \grace { b16 c } d4. c s \grace { a16 b } c4.-\prall
    b4. s s d
    
    <e g> s <d f> s
    <c e> s <b d> s
    <c e> s <d f> s
    
    <c e> s s g
    \grace { a16 bes } c4. bes! s bes4.-\prall
    a s s a
    \grace { b16 c } d4. c s \grace { a16 b } c4.
    b s s d
    
    \grace { e16 f } g4. f s f-\prall
    e s s g4-\prall f16 g
    a4. s s a4-\prall g16 f
    g4. s s \grace { e16 f } g4-\prall f16 e
    
    f4. s s f4-\prall e16 d
    e4. c s b4-\prall a16 b
    c4. s s
  }
}

three = \relative c' {
  \global
  
  \partial 4.
  \repeat volta 2 {
    s4.
    s g c, s
    s g' g, s
    s c c, s
    \voiceTwo s s g'
  }

  \repeat volta 2 {
    s
    s s c s
    s c f, s
    s s d' s
    s d g, s
    
    \repeat unfold 3 { s g s g }
    s g g s
    s s c s
    s c f, s
    
    s s d' s
    s d g, s
    s s g' s
    
    s g c, s
    s c' f, s
    s c' e, s
    
    s c' d, s
    s s d s
    \oneVoice s c, c
  }
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
}

\score {
  \new PianoStaff <<
    \new Staff = "up" {
      << 
        %\breaks
        \new Voice \one
        \new Voice \two
      >>
    }
    \new Staff = "down" { 
      <<
        %\breaks
        \clef bass \three
      >>
    }
  >>
  \layout { indent = 0 }
}
