\version "2.18.2"
\header{
  title = "Te deum"
  piece = "Violin 1"
  arranger = "Aurelien Solor"
  composer = "Marc Antoine Charpentier"
  enteredby= "Vijay Lulla (2018.09.08)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/24)
  }
}

voiceconsts = {
  \key c \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo 4 = 95
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          %% \set Score.markFormatter = #format-mark-circle-numbers
          \time 4/4 \clef treble
          \partial 4 g'4 \upbow | c4 c8 d8 e4 c4 | g'2\prall e4. e8 |
          f4 g8 f8 e8 f8 g4 | d8 c8 d8 e8 d4 g,4 | c4 c8 d8 e4 c4 |
          \barNumberCheck #6 g'2 e4. e8 | f8 g8 e8 f8 d4. c8 |
          c2. g4 | c4 c8 d8 e4 c4 | g'2 e4. e8 | f4 g8 f8 e8 f8 g4 |
          \barNumberCheck #12 d8 c8 d8 e8 d4 g,4 | c4 c8 d8 e4 c4 |
          g'2 e4. e8 | f8 g8 e8 f8 d4. c8 | c2. g'8\mf f8 | e4 c4 f4 f8 e8 |
          \barNumberCheck #18 d4. c8 b4 e4 | d4 c8 d8 b4 e4 |
          c4. b8 a4 a'4 | a4 g4 g4. f8 | e4. d8 c8 d8 e8 fis8 |
          g4. a8 fis4. g8 |
          \barNumberCheck #24 g2. g,4\f | c4 c8 d8 e4 c4 | g'2 e4. e8 |
          f4 g8 f8 e8 f8 g4 | d8 c8 d8 e8 d4 g,4 | c4 c8 d8 e4 c4 |
          \barNumberCheck #30 g'2 e4. e8 | f8 g8 e8 f8 d4. c8 |
          c2. e4\mf | e4 f8 e8 d4. e8 | f2 f4. g8 | e4. f8 d4. e8 |
          \barNumberCheck #36 e2( e8) f8 e8 d8 | cis4 a4 a'4. g8 |
          fis4. e8 d4 e8 fis8 | g4 b,4 c4. d8 | b4. a8 g4 g4\f |
          c4 c8 d8 e4 c4 |
          \barNumberCheck #42 g'2 e4. e8 | f4 g8 f8 e8 f8 g4 |
          d8 c8 d8 e8 d4 g,4 | c4 c8 d8 e4 c4 | g'2 e4. e8 |
          f8 g8 e8 f8 d4. c8 | \barNumberCheck #48 c2. r4
          \bar"|."
        }
      }
    }
  }
}

