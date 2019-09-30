\version "2.18.2"
\header{
  title = "Le Cygne"
  subtitle = "(The Swan)"
  piece = "Violin"
  arranger = "Camille Saint-Saens"
  enteredby= "Vijay Lulla (2019.09.29)"
}


downarrow=\markup{\combine \draw-line #'(0 . 2) \arrow-head #Y #DOWN ##f}
uparrow=\markup{ \combine \draw-line #'(0 . -2) \arrow-head #Y #UP ##f }

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/28)
  }
}

voiceconsts = {
  \key g \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Adagio" 4 = 60
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c'' {
          \voiceconsts
          %% \set Score.markFormatter = #format-mark-circle-numbers
          \time 6/4 \clef treble
          R1*6/4 |
          g'4(\p^"III" fis4 b,4^"I") e4(^"III"_2 d4 g,4^"1") |
          a2(~ a8 b8) c2 r4 | e,2^"I" fis8 g8 a8 b8 c8^"2" d8^"1" e8 fis8 |
          b2.(^2 b8) r8 r4 r4 | g4(^"4" fis4 b,4)^"1" e4(^4 d4 g,4) |
          ais2(~^\downarrow ais8 b8) cis2. | \barNumberCheck #8
          fis,4.(^2 bis8) ais8^\downarrow b8^1 cis8^2 d8^1 e8 fis8 gis8^\uparrow ais8 |
          d2.(^4 d8) r8 r4 r4 | d4(^4 b4 g4) e4( fis4 g4) | d2(~ d8 e8) fis2 r4 |
          c'4(^3 a4 f4) d4( e4 f4) | c2(~^2 c8 d8) e2 r4 | e4(^2\< a,4^0 b4) c2 d8^1 e8 \! |
          fis2.(^1\> e2) \!r4\breathe | e4(^2\<\downbow a,4^0 b4^1) cis2 d8^1 e8\! |
          f2.(\> fis2.) | g4(\p fis4 b,4)^3 e4(^2 d4 g,4) | a2(~ a8 b8) c2 r4\breathe |
          e,2^1 fis8 g8 a8 b8 c8^2 d8^1 e8 fis8 | b1.^2\< | b4(\mf a4 e4^2) g4( fis4^3 c4^2) |
          b2. c4(^2_\markup{\italic "dim."} d4 b4) | e2.^\markup{\italic"rit."} e4(^\markup{\italic "lento"} fis4 d4) |
          g1.(^\markup{\italic "a tempo"}\pp | g2.~) g8 r8 r4 r4 |  R1*6/4^\markup\fermata
          \bar"|."
        }
      }
    }
  }
}

