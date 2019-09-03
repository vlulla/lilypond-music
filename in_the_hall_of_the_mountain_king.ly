\version "2.18.2"
\header {
  title="In the Hall of the Mountain King"
  subtitle="from 'Peer Gynt'"
  arranger = "Edward Grieg (1843-1907)"
  enteredby = "Vijay Lulla (2019.08.30)"
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
  \key c \major
  \numericTimeSignature
  \compressFullBarRests
  %% \tempo "<<<TEMPO HERE>>>" 4 = 60
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score!

\book {
  \score {
    \new Staff {
      \new Voice {
	\relative c' {
	  \voiceconsts
	  %% \set Score.markFormatter = #format-mark-circle-numbers
	  \time 4/4 \clef treble
          \repeat volta 2 {
	  a8\mp b8 c8 d8 e8 c8 e4 | dis8 b8 dis4 d8 bes8 d4 | a8 b8 c8 d8 e8 c8 e8 a8 |
          g8 e8 c8 e8 g2 }
          \barNumberCheck #5
          \repeat volta 2 {
          e8 e8 e8 e8 e8 e8 e8 e8 | e8 e8 e8 e8 e8 e8 e8 e8 | e8 e8 e8 e8 e8 e8 e8 e8 |
          e8 e8 e8 e8 e2 }
          \barNumberCheck #9
          a8 b8 c8 d8 e8 c8 e4 | dis8( b8) dis4 d8( bes8) d4 | a8( b8 c8 d8) e8( c8 e8 a8) |
          g8( e8 c8 e8) g2 | \barNumberCheck #13
          r4\f \grace gis16( a4-.->) r2 | r4 \grace gis16( a4-.->) r2 |
          a,8\mf(^"poco a poco accel." b8 c8\< d8) e8( c8 e8 a8) |
          gis8( e8 gis8 b8) a2\! | r4\f \grace gis16( a4-.->) r2 | \barNumberCheck #18
          r4\f \grace gis16( a4-.->) r2 | a,8\mf( b8 c8\< d8) e8( c8 e8 a8) |
          gis8( e8 gis8 b8) a2 | r4 \grace gis16( a4-.-> \f) r2 | r4 \grace gis16( a4-.->\f) r2 |
          r4 \grace gis16( a4-.->) r2 | r4\ff \grace gis16( a4->) \grace gis16( a4->) \grace gis16( a4->) |
          \grace gis16( a4->) \grace gis16( a4->) \grace gis16( a4->) \grace gis16( a4->) |
          r2 a,,8 a8\< a8 a8 | a8 a8 a8 a8 a8 a8 a8 a8 | a4\! \grace gis''16( a4-.->) r2 \bar "|."
	}
      }
    }
  }
}

