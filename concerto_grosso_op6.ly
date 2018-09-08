\version "2.18.2"
\header{
  title = "Concerto Grosso op. 6 Nr. 8 - Pastorale"
  arranger = "A Corelli (Violin 1)"
  enteredby= "Vijay Lulla (2018.09.07)"
}

\layout {
  indent = #0
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
  }
}

voiceconsts = {
  \key g \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo 8 = 85
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c'' {
          \voiceconsts
          %% \set Score.markFormatter = #format-mark-circle-numbers
          \time 12/8 \clef treble
          b4(\mf c8) d4( b8) e4( d8) e8( d8 c8) |
          d4( c8) d4( b8) c8( d8 b8) a4( d8) |
          b4( c8) d4( b8) fis4( g8) a4( fis8) |
          b4( a8) b8( a8 g8) a4( g8) a4( fis8) |
          \barNumberCheck #5 g8( a8 fis8) e4( a8) fis4( g8) a4( fis8) |
          g'2. g2. | g2. g4. fis4. | g4. r4 b8^"III"\mp_2 c8( b8 a8) d4( d,8) |
          \barNumberCheck #9 g4( g,8) r4 c'8 a8( g8 fis8) b4( b,8) |
          e4( e,8) r4 a'8 fis8( e8 d8) g4( g8) |
          g4. r4 fis8\mf b,8( cis8 d8) a8( d8 cis8) |
          \barNumberCheck #12 d4. r4 a8\mp b4( a8) b8( a8 g8) |
          a4( fis8) r4 d'8 e4( d8) e8( d8 c8) |
          d4( b8) r4 d8 g4( c,8) fis4( b,8) |
          e4( a,8) d4( g,8) c4. b4. |
          \barNumberCheck #16 a4. r4 d'8^"III"_4 c2._3 |
          b4. ais4. a2. | a2. a2. | a4. r4 d,8^"I"_3\mf c8( d8 b8) a4. |
          \barNumberCheck #20 g4( d'8) g2( g8) e8 a4. |
          r4 fis8^"III"_3 b2_2( b8) g8 c4. |
          r4 b8\mp a4( d8) r4 g,8 fis4( b8) |
          r4 e,8^"I"_0 d4( g8) c,4. r4 b8\mf |
          \barNumberCheck #24 e,8( fis8 g8) d4( fis8) g4. e'4. |
          r4. d4. r2. | c4( b8) a4. g4. r4 b8 | b4. b4. b4. r4 c8\mp |
          \barNumberCheck #28 b4. c4. b4. r4 d8\mf |
          cis4. d4. cis4. r4 fis8\mp | fis4( e8) e4( e8) e4( d8) r4 d8\mf |
          d4( c8) c4( b8) ais4( fis8) b4.( |
          \barNumberCheck #32 b4.) ais4. b4( fis'8) b4.(^"III"_2 |
          b4) fis8 b2( b8) fis8 b4.( | b4) b,8 e2( e8) fis8 d4( cis8) |
          d4. cis4. b4. r4. |
          \barNumberCheck #36 b4(\mp c8) d4( b8) e4( d8) e8( d8 c8) |
          d4( c8) d4( b8) c8( d8 b8) a4( d8) | b4( c8) d4( b8) fis4( g8) a4( fis8) |
          b4( a8) b8( a8 g8) a4( g8) a4( fis8) |
          \barNumberCheck #40 g8( a8 fis8) e4( a8) fis4( g8) a4( fis8) |
          g'2. g2. | g1( g8) fis4. | g4. r4 b8^"III"_2 c8( b8 a8) d4( d,8) |
          \barNumberCheck #44 g4( g,8) r4 c'8 a8( g8 fis8) b4( b,8) |
          e4( e,8) r4 a'8 fis8( e8 d8) g4( g8) |
          g4. r4 fis8\mf b,8( cis8 d8) a8( d8 cis8) | d1.(\mp |
          \barNumberCheck #48 d1.)( | d2.)( d8) c8 b8 c4. |
          c8( b8 a8) b2( b8) e,8 a4.( | a4) d,8 g2. fis4. | g4. g4.\f g2. |
          \barNumberCheck #53 g2. g2. | g2. g2. | fis4. g4.\mf g4. r4 fis8 |
          g4. r4. a4.\mp r4. | b1 r4.
          \bar"|."
        }
      }
    }
  }
}

