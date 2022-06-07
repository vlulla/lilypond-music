\version "2.22.1"
\header {
  title="SIMPLE GIFTS"
  piece="VIOLIN MELODY"
  arranger = "Arranged by BRUCE CHASE"
  enteredby = "Vijay Lulla (2022.06.06)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#t #t #t)
      \override MultiMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
  }
}

voiceconsts = {
  \key d \major
  \numericTimeSignature
  \compressEmptyMeasures
  \tempo "Serenely" 4 = 60
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score!

\book {
  \score {
    \new Staff {
      \new Voice {
	\relative c'' {
	  \voiceconsts
	  \set Score.markFormatter = #format-mark-box-numbers
	  \time 4/4 \clef treble
	  d4\mp\downbow cis8( d8) b4 a4 | d8 e8 fis8( g8) a2 | a4 g8( fis8) e4 d4 | fis4 gis4^"Hi" a2 |
          a4\upbow b8 a8 g4^"Lo" d4 | e8 fis8 g4 fis2 | e8\> fis8 g4 fis4 d4 | cis8\p( d8) e4 d4 a8\downbow a8 \bar "||"
          \barNumberCheck #9 \mark \default
          d4 d8 e8 fis8 d8 fis8 g8 | a4 a8 g8 fis4 e8 d8 | e4 e4 e4 d4 | e8( fis8) e8 cis8 a4. a8 | 
          d8\downbow cis8 d8 e8 fis4 e8 e8 | fis4 g4 a4. a8 | e4 e8( fis8) e8 e8 d4 | e4 d8 b8 d2\< |
          \barNumberCheck #17 \mark \default
          a'2\downbow\f fis4.( e8) | fis8( g8) fis8 e8 d4. e8 | fis4 fis8 g8 a4 g8 fis8 | e4 e8 e8 e4. a,8 |
          d2\downbow d4. e8 | fis4 fis8 g8 a4 g8 fis8 | e4 e8 e8 fis4 fis8 e8 | d4\> d4 d2 |
          \barNumberCheck #25 \mark \default
          d4\downbow\mp cis8( d8) b4 a4 | d8 e8 fis8( g8) a2 | a4 g8( fis8) e4 d4 | fis4 gis4^"Hi" a2\< |
          a4\upbow\f b8 a8 g!4^"Lo" d4 | e8 fis8 g4 fis2 | e8\> fis8 g4 fis4 d4 | cis8(\p d8) e4 d4 r4 |
          \barNumberCheck #33 \mark \default
          fis4\downbow\p a2 a,4 | d4 d8 e8 fis8 d8 a4 | e'4 g2 b,4 | g'8( a8) g8 e8 cis2 | fis8 e8 fis8 g8 a4 g4 |
          fis4 e4 fis4 d4 | g4 g8( a8) g4 fis4 | b,4 d4\< d4 a4 |
          \barNumberCheck #41 \mark \default
          a'2\downbow\f fis4.( e8) | fis8( g8) fis8 e8 d4. e8 | fis4 fis8 g8 a4 g8 fis8 | e4 e8 e8 e4. a,8 | 
          d2\downbow d4. e8 | fis4 fis8 g8 a4 g8 fis8 | e4 e8 e8 fis4 fis8 e8 | d4\> d4 d2 |
          d2\mp g2 | d1\fermata \bar "|."

          \bar "|."
	}
      }
    }
  }
}

