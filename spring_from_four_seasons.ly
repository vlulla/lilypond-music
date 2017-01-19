\version "2.18.2"

\header {
  title = "Spring from the Four Seasons"
  subtitle = "1. Allegro"
  enteredby = "Vijay Lulla (2017.01.19)"
}
\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      %% \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) %% reduce horizontal spacing
      %% \override MultiMeasureRest.expand-limit = #2
  }
}
voiceconsts = {
  \key d \major
  \time 4/4
  % numericTimeSignature
  \compressFullBarRests
  % \tempo 4 = 80
}

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts 
          \clef treble

          \partial 8 d'8\f |
          fis8 fis fis e16 d a'4. a16 g |
          fis8 g16 a16 g8 fis e8 cis a d\p |
          fis8 fis fis e16 d a'4. a16 g |
          fis8 fis fis e16 d a'4. a16 g |
          fis8 fis fis e16 d a'4. a16 g |
          fis8 g16 a g8 fis e4. d8\f |
          a'8 g16 fis g8 a b8 a4 d,8 |
          a'8 g16 fis g8 a b8 a4 d,8 |
          b'8 a4 g8 fis8 e16 d e4 |
          d4 r8 d8\p a'8 g16 fis g8 a |
          b8 a4 d,8 a'8 g16 fis g8 a |
          b8 a4 d,8 b'8 a4 d,8 |
          b'8 a4 g8 fis e16 d e4 |
          d8 fis,16( g) a( g a g) fis( g fis g) a( g a g) |
          fis16( g fis g) a( g a g) fis( g fis g) a( b a b) |
          cis16( d cis d) e( d e d) cis( d cis d) e( d e d) |
          cis16( d cis d) e( fis e fis) g( fis g fis) e( g fis e) |
          fis8( e16 d cis)( b a g) fis( g fis g) a( g a g) |
          fis16( g fis g) a( g a g) fis( g fis g) a( g a g) |
          fis4. fis'8 g2 |
          fis2 e2 |
          fis2 g2 |
          fis2 e4. a,8\f |
          e'8 d16 cis d8 e fis e4 a,8 |
          e'8 d16 cis d8 e fis e4 a,8 |
          fis'8 e4 d8 cis8 b16 a b4 |
          a4 a ais ais |
          b8\p fis' fis fis fis fis fis fis |
          g8 g gis gis a a ais ais |
          b1( |
          b1)( |
          b16) cis b cis b4( b16) cis b cis b4( |
          b16) cis b cis b cis b cis b2 |
          fis8 fis fis e16 fis g4. g16 fis |
          e8 e e d16 e fis4. fis16 g |
          a8 a a a16 g fis8 fis fis fis16 g |
          a8 a a a16 g fis8 fis fis fis16 g |
          a8 a a g16 fis e16 a, b a cis b d cis |
          e16 d fis e g fis a g a, g b a cis b d cis |
          e16 d fis e g fis a g fis d e d fis d e d |
          g16 d e d g d e d a' d, e d a' d, e d |
          b'8 cis d4 d16 a d a b a d a |
          b16 a d a b a d a d8 d, e4 |
          a8\ff g16 fis g8 a b8 a4 d,8 |
          a'8 g16 fis g8 a b8 a4 d,8 |
          b'8 a4 g8 fis e16 d e4 |
          d4. d8 a'8 g16 fis g8 a|
          b8 a4 d,8 a'8 g16 fis g8 a |
          b8 a4 d,8 b'8 a4 g8 |
          fis8 e16 d e4 d2
          \bar "|."
        }
      }
    }
    \layout { }
    \midi { }
  }
}
