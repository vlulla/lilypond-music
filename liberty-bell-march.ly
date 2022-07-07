\version "2.22.1"
\header {
  title="Liberty Bell March"
  piece="Allegro con brio"
  arranger = "J P Souza"
  enteredby = "Vijay Lulla (2022.07.06)"
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
  \key a \major
  \numericTimeSignature
  \compressEmptyMeasures
  \tempo "Fast" 4 = 100
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
          a'4-.\f gis8 fis4-. eis8 | e4-. dis8 d4-. cis8 | b8( cis8 d8) cis4-. b8 | e8-. r8 r8 e8-. r8 r8 |
          \repeat volta 2 { \bar ".|:"
            e4-. e8 e8( dis8 e8) | e4-. e8 e4 e8 | e4 e8 e4 e8 | e4.( e4) e8 | d4 d8 d8( cis8 d8) | d4 d8 d4 d8 |
            e4 e8 e4 e8 | e4.( e4) e8 | e4 e8 e8 dis8 e8 | e4 e8 e4 e8 | fis4 dis8 dis4 dis8 | dis4 dis8 dis4 dis8 | 
            e4 gis8 gis8 g8 gis8 | \barNumberCheck #18 fis4 dis8 dis4 dis8 | e4 fis8 e4 fis8 | e4. d4. |
          }  \barNumberCheck #21
          \repeat volta 2 { \bar ".|:"
            cis4 cis8 e4 e8 | cis4. a4. | a4. d4. | cis4. cis4. | d4. d4. | cis4 cis8 e4 e8 | e4 e8 a4 a8 | gis4 gis8 gis4 gis8 |
            d4\< d8 d4 d8 | cis4 cis8 b4 b8 | \barNumberCheck #31 cis4 cis8 a4\! a8 | gis4 gis8 gis4 gis8 | b4 fis'8 d4 b8 |
            a4 a8 cis4 cis8 | d4 d8 d4 b8 | cis4 cis8 cis4 r8 |
          }  \barNumberCheck #37
          \repeat volta 2 { \bar ".|:"
            d4\mf d8\< e4 e8 | eis4\! eis8 fis4 fis8 | d4 d8 d4 d8 | d4 d8 a4 fis'8 | d4 d8 e4 e8 | eis4 e8 fis4 fis8 |
            e4 e8 e4 dis8 | e4 e8 e4 fis8 | g4 g8 fis4 fis8 | g4 cis,8 cis4 cis8 | d4 d8 d4 d8 | d4 a8 gis4 a8 |
          } 
          \alternative {
            { a4 a8 cis4 cis8 | b4 b8 d4 d8 | e4. d4. | cis4. cis4. }
            { e4 e8 e4 e8 | d4 d8 cis4 cis8 | d4 d8 a4 fis'8 | fis4 fis8 fis4 r8 }
          }
          \bar "|."
	}
      }
    }
  }
}

