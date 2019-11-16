\version "2.18.2"
\header {
  title="The Coventary Carol"
  arranger = "Traditional"
  enteredby = "Vijay Lulla (2019.11.15)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
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
	\relative c' {
	  \voiceconsts
	  %% \set Score.markFormatter = #format-mark-circle-numbers
	  \time 3/4 \clef treble
	  e4\f e4 dis4 | e2 g4 | fis4. fis8 e8 e8 | dis2. | e4 fis4 g4 | a4 fis2 |
          e2.( | e2) b'4 | \barNumberCheck #9
          a2 g4 | fis2 g4 | fis2 e4 | dis2. | e4 dis4 e4 | a4 fis2 | gis2. | e4 e4 dis4 | e2 g4 |
          \barNumberCheck #18
          fis2 e4 | dis2. | e4 fis4 g4 | a4 fis2 | e2.( | e2) b'4 | a2 g4 | \barNumberCheck #25
          fis2 g4 | fis2 e4 | dis2. | e4 dis4 e4 | a4 fis2 | gis2. \bar "|."
	}
      }
    }
  }
}

