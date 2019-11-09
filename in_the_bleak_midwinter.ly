\version "2.18.2"
\header {
  title="In the Bleak Midwinter"
  arranger="Gustav Holst"
  enteredby = "Vijay Lulla (2019.11.08)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
  }
}

voiceconsts = {
  \key g \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "" 4 = 60
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score!

\book {
  \score {
    \new Staff {
      \new Voice {
	\relative c'' {
	  \voiceconsts
	  %% \set Score.markFormatter = #format-mark-circle-numbers
	  \time 4/4 \clef treble
	  b4.\upbow c8 d4 b4 | a2 g2 | a4. b8 a4 e4 | a1 | b4. c8 d4 b4 | a2 g2 |
          a4 b4 a4. g8 | g1 | c4. b8 c4 d4 | d4 e4 b4 r4 | d4 b4 a4 g4 |
          \barNumberCheck 11
          fis2. r4 | b4. c8 d4 b4 | a2 g2 | a4 b4 a4. g8 | g2. r4 | r4 r4 r4 b4 |
          a4 b4 a4. g8 | g1 | c4. b8 c4 d4 | d4 e4 b4 r4 | d4 b4 a4 g4 |
          fis2. r4 | b4. c8 d4 b4 | a2 g2 | a4 b4 a4. g8 | g2. r4 \bar "|."
	}
      }
    }
  }
}

