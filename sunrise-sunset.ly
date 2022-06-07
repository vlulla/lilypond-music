\version "2.22.1"
\header {
  title="SUNRISE, SUNSET"
  subtitle="(From \"Fiddler on the Roof\")"
  piece="VIOLIN MELODY"
  arranger = "Arranged by BRUCE CHASE"
  enteredby = "Vijay Lulla (2022.06.06)"
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
  \key f \major
  \numericTimeSignature
  \compressEmptyMeasures
  \tempo "Wistfully" 4 = 60
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score!

\book {
  \score {
    \new Staff {
      \new Voice {
	\relative c'' {
	  \voiceconsts
	  \set Score.markFormatter = #format-mark-box-numbers
	  \time 3/4 \clef treble
          a4\downbow\mf\< d4 f4^"Lo" | a4\f g8 f8 e8 f8 | d2.( | d2)\> r4 \bar "||"
          \barNumberCheck #5 \mark \default
          a4\mf\downbow\< d4 f4^"Lo" | e8\! d8 cis4^"Hi" e4 | d2. | a2.\> | a4\upbow\< d4 f4^"Lo" |
          e8\! d8 cis4^"Hi" e4 | d2.( | d4) r4 r4 | \mark \default | d4\downbow\mf\< g4 bes4^"Lo" |
          a8\! g8 fis4^"Hi" a4 | g2. | d2.\> | e2.\upbow\p | e2. | f2.(^"Lo"\f | f2.)\> |
          \barNumberCheck #21 \mark \default
          a,4\mf\downbow\< d4 f4^"Lo" | e8\! d8 cis4^"Hi" e4 | d2. | a2.\> | a4\downbow\< d4 f4^"Lo" |
          e8\! d8 cis4^"Hi" e4 | d2.( | d4) r4 r4 | 
          \barNumberCheck #29 \mark \default
          d4\downbow\mf\< g4 bes4^"Lo" | a8\! g8 fis4^"Hi" a4 | g2. | gis2.\< | a2.(\f | a2.)( | a2.)( | a2.) \bar "||"
          \barNumberCheck #37 \mark \default
          r4 f4^"Lo"\downbow\mp g4( | g4) f4 e4 | r4 f4\downbow g4( | g4) f4 e4 | r4 f4\downbow g4( | g4) f4 g4 |
          a2.( | a2.)\< | \mark \default \barNumberCheck #45 bes4\f\downbow^"Lo" bes4 bes4 | bes8 a8 g4 bes4 |
          a2. | f2.^"Lo" | g4\upbow g4 g4 | g8 f8 e4 g4 | f2. | cis4^"Hi"\> d4 e4 | \barNumberCheck #53 \mark \default
          r4 f4\downbow\f^"Lo" g4( | g4) f4 e4 | r4 f4\downbow g4( | g4) f4 e4 | r4 f4\downbow g4( | g4) f4 g4 |
          a2.( | a2.)\< | \barNumberCheck #61 \mark \default bes4\downbow\f^"Lo" bes4 bes4 | bes8 a8 g4 bes4 | a2. |
          f2.^"Lo" | g4\upbow_\markup{\italic "dim. e rit."} g4 g4 | g8 f8 e4 \breathe f4-.\fermata\upbow | d2\p e8 f8 | 
          g4\< a4 f4 | d2.\mf | d4\upbow d2\fermata

          \bar "|."
	}
      }
    }
  }
}

