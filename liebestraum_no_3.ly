\version "2.18.2"
\header {
  title = "LIEBESTRAUM No. 3"
  subtitle = "Violin I"
  piece = \markup { \column{\italic "simplified arrangement for" 
                        \italic "string orhestra by" 
                        \bold "JEFF MANOOKIAN" } }
  opus = \markup{ \bold "FRANZ LISZT" }
  enteredby = "Vijay Lulla (2017.06.02)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MulitMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
  }
}

voiceconsts = {
  \key c \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo  "Poco allegro" 4 = 70
}

%% showLastLength = R1*8 %% show only last few measures %% comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c'' {
          \voiceconsts
          \time 3/4
          \clef treble
          \set Score.markFormatter = #format-mark-circle-alphabet
          \partial 4 g,4\p\upbow |
          e'2. |
          e2. |
          e2.( |
          e2) e4 |
          e2 e4 |
          f2( e4) |
          e2. |
          a,2 a4 |
          a4( b c) |
          e2( d4) |
          c2.( |
          c4) r4 a4 |
          \mark \default e'2. |
          e2. |
          e2.( |
          e2) e4 |
          e2 e4 |
          f2( e4) |
          a2.~ |
          a4 r4 a,4 |
          a4( b c) |
          e2( d4) |
          c2.( |
          c4) r4 c4 |
          \mark \default c2( b4) |
          c2( d4) |
          e2.( |
          e2) e4 |
          e2( dis4) |
          e2( fis4) |
          gis2.\< |
          gis2 e'4\f |
          \mark \default e2 dis4 |
          e2 fis4 |
          gis2 fis4 |
          e2 gis4 |
          gis2\< g4 |
          gis2 ais4 |
          \mark \default c2.\ff |
          c2. |
          c2 b4 |
          a4 b,4( c) |
          e2. |
          d2 c4 |
          c2 b4 |
          a4 b,4( c) |
          \mark \default e2\< d4 |
          g2 f4 |
          b2 a4 |
          e'2 d4 |
          a'2.\fermata\sfz |
          r4 r4 g,4\p |
          \mark \default e'2. |
          e2. |
          e2.( |
          e4) r4 e4 |
          e2 e4 |
          f2( e4) |
          e2. |
          a,2 a4 |
          a4( b c) |
          e2( d4) |
          c2.( |
          c4) r4 g4 |
          \mark \default e'2. |
          e2. |
          e2.( |
          e2.) |
          e2.\fermata |
          r4 r4 a,,4\mp |
          \mark \default e'2( d4) |
          e2( d4) |
          c2 d4 |
          e4\<( g c) |
          d2.( |
          d2.) |
          f2.(\mf \> |
          f2.) |
          \mark \default d2.\p |
          g,2. |
          e2.( |
          e4) dis4( e) |
          g2.\< |
          f2 e4 |
          e2.\pp\fermata \bar"|."
        }
      }
    }
    \layout{}
    \midi{}
  }
}
