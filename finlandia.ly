\version "2.18.2"
\header {
    title="Finlandia"
    composer="Jean Sibelius"
    arranger="Arranged by: Jack Bullock"
}

voiceconsts = {
  \key g \major
  \time 4/4 \numericTimeSignature
}

\layout {
    \context {
        \Score
        \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/70)
        %% \override SpacingSpanner.uniform-stretching = ##t
        \override Score.BarNumber.break-visibility = #end-of-line-invisible
        \override Score.BarNumber.Y-offset = #-4.0 % bar number below staff!
    }
}

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c'' {
          \clef treble
          \mark \markup{ \bold {Moderately slow}}
          r4 b_\p\downbow a b |
          c2.\downbow b4 |
          a b g a |
          a\downbow b2. |
          r4 b\upbow a b |
          c2. b4 |
          a4 b g a |
          b1 |
          r4 d4_\f\upbow d d |
          e2.\downbow b4 |
          b d d a |
          a\downbow c2.\upbow |
          r4 c4\upbow b a |
          b2. g4 |
          g a2 b4 |
          b1 \upbow |
          r4 d4\upbow d d |
          e2. b4 |
          b d d a |
          a\downbow c2.\upbow |
          r4 c\upbow b a |
          b2. g4 |
          g a2\upbow g4\upbow |
          g1\downbow\> \! |
          r4 g4_\p\upbow b d |
          g1 |
          g1 |
          g2.\downbow r4
        }
      }
    }
    \layout { }
    \midi { }
  }
}
