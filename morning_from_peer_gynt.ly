\version "2.18.2"
\header{
  title = "Morning from Peer Grynt"
  arranger = "E. Grieg"
  enteredby= "Vijay Lulla (2019.09.02)"
  copyright = \markup { "Sheet music from 8notes.com" \char ##x00A9 " Copyright
  2018 Red Balloon Technology Ltd"}
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/48)
  }
}

voiceconsts = {
  \key g \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Andante" 8 = 90
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c'' {
          \voiceconsts
          %% \set Score.markFormatter = #format-mark-circle-numbers
          \time 6/8 \clef treble
          d8\mp( b8 a8) g8( a8 b8) | d8( b8 a8 g8) a16( b16 a16 b16) |
          d8( b8 d8) e8( b8 e8) | d8( b8 a8) g4. | g2.( | g2.) |
          g4. g4. | fis2. | fis'8( dis8 cis8) b8( cis8 dis8) |
          fis8( dis8 cis8 b8) cis16( dis16 cis16 dis16) |
          fis8( dis8 fis8) g8( dis8 g8) | fis8( dis8 cis8) b4. |
          \barNumberCheck #13
          fis'8( dis8 cis8) b8( cis8 dis8) | R1*6/8 | fis8( dis8 b8) r4. |
          r4. fis'8( dis8 b8) | b'8( gis8 fis8) e8( fis8 gis8) |
          b8( gis8 fis8 e8) fis16( gis16 fis16 gis16) |
          b8(\<^"III" gis8 b8) cis8( gis8 cis8) | cis8(\f a gis8) fis4. |
          cis8(^"I" a8 gis8) fis8( gis8 a8) | cis8( a8 gis8 fis8) gis16( a16 gis16 a16) |
          \barNumberCheck #23
          cis8( a8 cis8) dis8( a8 dis8) | dis8( b8 dis8) e8( b8 e8) |
          e8( cis8 e8) fis8 cis8 fis8 | gis2. | gis4.\p fis4. | e4. fis4. |
          gis4.\f e4(\p fis8) | gis4.\f e4(\p fis8) | gis2.(\f | gis4.) r4. |
          c,8(\p a8 g!8 f!8) g16( a!16 g16 a16) | \barNumberCheck #34
          c8( a8 g8 f8) g16( a16 g16 a16) | c2. | d2. | f2.( | fis2.)
          \bar"|."
        }
      }
    }
  }
}

