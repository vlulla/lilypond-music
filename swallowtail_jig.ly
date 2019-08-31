\version "2.18.2"
\header {
  title="Swallowtail jig"
  piece=""
  arranger = ""
  enteredby = "Vijay Lulla (2019.04.04)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      %% \override SpacingSpanner.base-shortest-duration = #(ly-make-moment 1/20)
  }
}

voiceconsts = {
  \key d \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Moderate" 4 = 120
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score!

\book {
  \score {
    \new Staff {
      \new Voice {
	\relative c' {
	  \voiceconsts
	  %% \set Score.markFormatter = #format-mark-circle-numbers
	  \time 6/8 \clef treble
	  \repeat volta 2 {
	    \bar ".|:" % start repeat
	    \partial 8 fis8 | g8 e8 e8 b'8 e,8 e8 | g8 e8 e8 b'8 a8 g8 | fis8 d8 d8 a'8 d,8 d8 | d'8 cis8 d8 a8 g8 fis8 \bar "||"
	    \barNumberCheck #5
	    g8 e8 e8 b'8 e,8 e8 | g8 e8 e8 b'4 cis8 | d8 cis8 d8 a8 g8 fis8 | g8 e8 e8 e4.}
	  \repeat volta 2 {
	    b'8 cis8 d8 e4 fis8 | \barNumberCheck #10 e4 fis8 e8 d8 b8 | b8 cis8 d8 e4 fis8 | e8 d8 cis8 d4. |
	    b8 cis8 d8 e4 fis8 | \bar "||" e4 fis8 e8 d8 b8 | d8 cis8 d8 a8 g8 fis8 | g8 e8 e8 e4.
	  }
	  r1*3 | r1*3 |
	}
      }
    }
  }
}

