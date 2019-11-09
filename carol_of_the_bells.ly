\version "2.18.2"
\header {
  title="Carol of the Bells"
  subtitle="(Ukranian Christmas Carol)"
  enteredby = "Vijay Lulla (2019.11.08)"
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
  \key bes \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Presto" 4 = 180
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score!

\book {
  \score {
    \new Staff {
      \new Voice {
	\relative c'' {
	  \voiceconsts
	  %% \set Score.markFormatter = #format-mark-circle-numbers
	  \time 3/4 \clef treble
	  bes4\p a8( bes8) g4 | bes4 a8( bes8) g4 | bes4 a8( bes8) g4 | bes4 a8( bes8) g4 |
          bes4 a8( bes8) g4 | bes4 a8( bes8) g4 |
          \barNumberCheck #7
          bes4 a8( bes8) g4 | bes4 a8( bes8) g4 | bes4 a8( bes8) g4 | bes4 a8( bes8) g4 |
          bes4 a8( bes8) g4 | bes4 a8( bes8) g4 | bes4\mf a8(\< bes8) g4 |
          \barNumberCheck #14
          bes4 a8( bes8) g4 | bes4\f a8( bes8) g4 | bes4 a8( bes8) g4 | d'4 c8(\< d8) bes4 |
          d4 c8( d8) bes4\! | d4 c8( d8) bes4 | d4 c8( d8) bes4 | \barNumberCheck #21
          g'4\ff g8 g8 f8( ees8) | d4 d8 d8 c8( bes8) | c4 c8 c8 d8( c8) | bes4 a8( bes8) g4 |
          a8(\mf\< e8 fis8 g8 a8 bes8) | c8(\! d8) c4 bes4 | \barNumberCheck #27
          d,8(\< e8 fis8 g8 a8 bes8) | c8(\! d8) c4 bes4 | bes4\p a8( bes8) g4 | bes4 a8( bes8) g4 |
          bes4 a8( bes8) g4 | bes4 a8( bes8) g4 | \barNumberCheck #33
          bes4 a8( bes8) g4 | bes4 a8( bes8) g4 | bes4 a8( bes8) g4 | bes4 a8( bes8) g4 |
          bes4 a8( bes8) g4 | bes4 a8( bes8) g4 | bes4 a8( bes8) g4 | \barNumberCheck #40
          bes4 a8( bes8) g4 | bes4 a8( bes8) g4 | bes4 a8( bes8) g4 | bes4 a8( bes8) g4 |
          bes4 a8( bes8) g4 | bes4\mf a8(\< bes8) g4 | bes4 a8( bes8) g4 | bes4\f a8( bes8) g4 |
          \barNumberCheck #48
          bes4 a8( bes8) g4 | d'4 c8(\< d8) bes4 | d4 c8( d8) bes4 | d4 c8( d8) bes4 |
          d4 c8( d8) bes4 | \barNumberCheck #53
          g'4\ff g8 g8 f8( ees8) | d4 d8 d8 c8( bes8) | c4 c8 c8 d8( c8) | bes4 a8( bes8) g4 |
          a8\mf( e8 fis8 g8 a8 bes8) | c8 d8 c4 bes4 | \barNumberCheck #59
          d,8( e8 fis8 g8 a8 bes8) | c8( d8) c4 bes4 | bes4\p a8( bes8) g4 | bes4 a8( bes8) g4 |
          \barNumberCheck #63
          bes4 a8( bes8) g4 | bes4 a8( bes8) g4 | g2.( | g2.)( | g2.)( | g2.)( | g2.\fermata) \bar"|."

	}
      }
    }
  }
}
