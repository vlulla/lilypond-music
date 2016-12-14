\version "2.18.2"

\header { title = "Cripple Creek" }

\score {
  \relative c'' { %% Middle C is c' . We need one octave higher!
    \time 4/4
    \clef treble
    d d8 d a4 f | g b a2 | d4 d8 d a4 f | e d d2 |
    d'4 d8 d a4 f | g b a2 | d4 d8 d a4 f | e d d2 |
    f4 f8 f8 e4 d8 d8 | f8 f8 a4 a2 | f'4 f8 f8 e4 d8 d8 | 
    a8 a8 b4 d2 | f,4 f8 f8 e4 d8 d8 | f8 f8 a4 a2 | 
    f4 f8 f8 e4 d8 d8 | 
    a'8 a8 b4 d2 | d4 a8 a8 b4 a4 | r4 c d r4
    \bar "||"
  }
  \layout {
    \numericTimeSignature
    \context { 
      \Score \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }
}
