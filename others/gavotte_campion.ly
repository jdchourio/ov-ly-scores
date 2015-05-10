\version "2.18.2"

\include "../tagline.ily"
  
#(set-global-staff-size 18)
  
\header {
  composer = "François Campion"
  title = "Gavotte"
}

\paper {
  #(set-paper-size "a4")
  oddFooterMarkup = \gitTagline
  evenFooterMarkup = \gitTagline
}

#(define RH rightHandFinger)

global = {
  \key c \major
  \time 2/2
  \override Staff.NoteCollision #'merge-differently-headed = ##t
  \set fingeringOrientations = #'(left)
  \set strokeFingerOrientations = #'(up)
}

upVoice = \relative c' {
  \global
  \partial 2
  
  \repeat volta 2 {
    <c-1-\RH #3 >8 <b-0-\RH #2 > <c-1> <d-3>
    <b-0>4 <c-1> <d-3>8 <e-0> <f-1> <d-3>
    <e-0>4 <c-1> <e-0>8 <d-3> <e-0> <f-1>
    <d-3> <f-1> <e-0> <d-3> <c-1> <e-0> <d-3> <c-1>
    <b-0>2
  } \break
  
  \repeat volta 2 {
    <g'-3>8 <e-0> <f-1> <g-3>
    <e-0>4 <d-3>8 <e-0> <f-1> <e-0> <d-3> <c-1>
    <b-0>4 <a-2>8 <b-0> <c-1>4. c8
    <a-2>8 <b-0> <c-1> <d-3> d4. <c-1>8
    c2
  }
}

downVoiceOne = \relative c {
  \global
  \partial 2

  \repeat volta 2 {
    <e-2-\RH #3 >8 <d-0-\RH #2 > <e-2> <f-3>
    <g,-3-\RH #1 > <g'-0-\RH #3 > <a,-0> <g'> <b,-2> <d'-3> <g,,-3> <b'-0>
    \override StrokeFinger #'staff-padding = #1.5
    <c,-3-\RH #1 > <c'-1-\RH #3 > <e,-2-\RH #1 > <g-\RH #2 > <c>4 <c>
    \revert StrokeFinger #'staff-padding
    <g-0> <b-0> <a-2> <a> <g-0>2
  }

  \repeat volta 2 {
    <g c-1>4 <g d'-3>
    <c-1>8 <g-0> <bes-3> <c-1> <a-2> <c-1> <f,-3> <a-2>
    <g-0> <d-0> <f-1> <g-0> <g c-1>4 <e-2 bes'-3>
    <a-3>8 <g-0> <a-2> <f-3> <g-0>4 <g-0 b-0>
    <e-2 c'-1>2
  }
}

downVoiceTwo = \relative c {
  \global

  \repeat volta 2 {
    <c-3>2
    g4 a b g
    c2 c4 <a-0>
    <b-2> <g-3> <a-0> <fis-2>
    <g-3>2
  }

  \repeat volta 2 {
    <e'-2>4 <b-2>
    <c-3>2 a'4 f
    <g,-3>2 <e'-2>4 <c-3>
    <f-3>2 g4 <g,-3>
    <c-3>2
  }
}

\score {
  \new PianoStaff <<
    \new Staff { 
      \clef "treble_8" 
      \hide Fingering 
      \hide StrokeFinger 
      \upVoice 
    }
    \new Staff { 
      \clef "treble_8"
      <<{ \hide Fingering 
          \hide StrokeFinger 
          \downVoiceOne 
        } \\ { 
          \hide Fingering 
          \hide StrokeFinger 
          \downVoiceTwo 
        }
      >>
    }
  >>
  \layout { indent=0 }
}

\score {
  \new PianoStaff <<
    \new Staff { 
      \clef "treble_8" 
      \upVoice 
    }
    \new Staff { 
      \clef "treble_8"
      <<{ \downVoiceOne
        } \\ { 
          \downVoiceTwo 
        }
      >>
    }
  >>
  \layout { indent=0 }
}

\score {
  \new StaffGroup <<
    \new Staff { 
      \clef "treble_8" 
      \hide Fingering 
      \upVoice 
    }
    \new TabStaff { 
      \upVoice 
    }
    \new Staff { 
      \clef "treble_8"
      <<{ \hide Fingering 
          \downVoiceOne 
        } \\ { 
          \hide Fingering 
          \downVoiceTwo 
        }
      >>
    }
    \new TabStaff { 
      <<{ \downVoiceOne 
        } \\ { 
          \downVoiceTwo 
        }
      >>
    }
  >>
  \layout { indent=0 }
}
