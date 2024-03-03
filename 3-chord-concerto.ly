\version "2.24.1"
\header {
  title="3 Chord Concerto"
  piece="Violin"
  arranger = "Chris Grouleau"
  enteredby = "Vijay Lulla (2024.03.03)"
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
  \key c \major
  \numericTimeSignature
  \compressEmptyMeasures
  \tempo "Allegretto" 4 = 120
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score!

\book {
  \score {
    \new Staff {
      \new Voice {
	\relative c'' {
	  \voiceconsts
	  \time 4/4 \clef treble
	  c'8\f b8 a8 g8 b8 a8 g8 f8 | a8 b8 f8 e8 g8 f8 e8 d8 | c2 r2 | R1*11 | r2 r4 e,4\ff | d4. e8 d8 c8 b8 c8 | d4 r4 r2 | \barNumberCheck #18
          e4 r8 f8 e8 d8 c8 d8 | e4 r4 r2 | g4. a8 g8 f8 e8 c8 | d4 r4 r8 f8 e8 d8 | e8 g8 f8 e8 d8 f8 e8 d8 | c8 r8 r4 r2 | R1*15 | \barNumberCheck #39
          R1 | R1 |\time 4/4 R1 | \time 3/4 r4 r4 g'4-. | g4-. r4 e4-. | e4-. r4 r4 | r4 r4 r4 | r4 r4 g4-. | g4-. r4 f4-. | f4-. r4 r4 | r4*3 | r4*3 | r4 fis4 g4 | \barNumberCheck #52
          e'2.~ | e4 r4 e,4 | e2-> d4 | a'2-> g4 | c,4-> r4 c'4-> | \time 2/4 c4-.-> r4 | r4 e4\ff | d4 r8 e8 | d8 c8 b8 c8 | d4 r4 | r4 r4 | e4 r8 f8 | \barNumberCheck #64
          e8 d8 c8 d8 | e4 r4 | r4 r4 | g,4. a8 | g8 f8 e8 c8 | d4 r4 | r8 f8 e8 d8 | e8 g8 f8 e8 | d8 f8 e8 d8 | c8 r8 r4 | r4 e4\ff | \barNumberCheck #75
          d4 r8 e8 | d8 b8 c8 b8 | r8 r8 r4 | r4 r4 | e4 r8 f8 | e8 d8 c8 d8 | f8 r8 r4 r4 r4 | g4. a8 | g8 f8 e8 c8 | d4 e4 | \barNumberCheck #86
          \time 4/4 f2.-> r4 | R1*5 | r2 r4 r8 e'8\ff | a,1 | a8 b8 c2.~ | c2 d2 | e4 f4 g2 | g2. e8 f8 | g1 | a2\< b2 | c1:32 | R1\! | c1:32~\sfz|c1:32
          \bar "|."
	}
      }
    }
  }
}

