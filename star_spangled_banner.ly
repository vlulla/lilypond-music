\version "2.18.2"

\header {
  title = "The Star-Spangled Banner"
}
\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
      \override MultiMeasureRest.expand-limit = #3
  }
}

voiceconsts = {
  \key g \major
  \time 3/4
  \numericTimeSignature
  \compressFullBarRests
  \tempo 4 = 70
}

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          \clef treble
          \partial 4 d8. b16 |
          g4 b d |
          g2 b8. a16 |
          g4 b,4 cis |
          d2 d8 d |
          b'4. a8 g4 |
          fis2 e8 fis |
          g4 g4 d |
          b4 g d'8. b16 |
          g4 b d |
          g2 g8. a16 |
          g4 b, cis |
          d2 d8 d8 |
          b'4. a8 g4 |
          fis2 e8 fis8 |
          g4 g d |
          b g r4 |
          R1*3/4*4 |
          g'4. fis8 g4 |
          fis2 e8. fis16 |
          g4 b,4 cis |
          d2 d4 |
          g4 g g8 fis |
          e4 e e |
          a4 c8 b a g |
          g4 fis4 d8 d |
          g4. a8 b c |
          d2 g,8 a |
          b4. c8 a4 |
          g2. \bar "|."
        }
      }
    }
    \layout { }
    \midi { }
  }
}

%% Last modified: 2016.07.13 01:23:37-0400
