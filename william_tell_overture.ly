\version "2.18.2"

\header {
  title = "William Tell Overture"
  subtitle = "(Finale)"
  composer = "Gioachino Rossini"
  arranger = "Richard Meyer"
}
\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
      %% \override MultiMeasureRest.expand-limit = #3
  }
}
voiceconsts = {
  \key g \major
  \time 4/4
  % numericTimeSignature
  \compressFullBarRests
  \tempo "Allegro" 4 = 130
}

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts 
          \clef treble
          d2\f\downbow r4\breathe d8\downbow d |
          d2 r4\breathe d8\downbow d|
          d4 b g b |
          d4 b d g |
          d4 b g b |
          d4 b d g |
          d2 r4\breathe d8\downbow d |
          d2. \breathe d'8 d |
          d4 d8 d d4\upbow d8 d|
          d2. \breathe d,8\p\downbow d %% \bar "||"
          \repeat volta 2 {
            d4\downbow d8 d d4\upbow d8 d |
            g4 a b d,8\upbow d\downbow |
            d4\upbow d8 d g4 b8 b |
            a4 fis d d8\downbow d\upbow |
            d4\downbow d8 d d4 d8 d|
            g4 a b \breathe g8\f\downbow b |
            d2-> d8(\upbow c) b a | 
          }
          \alternative {
            { g4-> b-> g-> \breathe d8\p\downbow d }
            { g4-> b-> g-> \breathe b8\p\downbow b }
          }
          \repeat volta 2 {
            b4\downbow b8 b b4 b8 b |
            b4 e-4 b e |
            b4 e b a |
            g4 fis e\breathe b'8\downbow b |
            b4\downbow b8 b b4 b8 b |
            b4 e b e |
            b4 e d cis
          }
          \alternative {
            { d4 cis d \breathe b8\downbow b }
            { d2. r4\breathe }
          }
          a4\f\downbow a8 a a4-.(\upbow b4-.) |
          c a2-> c4 |
          b4 g2-> b4 |
          a2. r4\breathe |
          a4\downbow a8 a a4-.(\upbow b-.)\upbow |
          c4 a2-> c4 |
          b g2-> b4 |
          a2. \breathe d,8\p\downbow d |
          d4 d8 d d4\upbow d8 d |
          g4 a b d,8\upbow d\downbow |
          d4 d8 d g4 b8 b |
          a4 fis d d8\downbow d\upbow |
          d4\downbow d8 d d4 d8 d8 |
          g4 a b4 \breathe g8\f\downbow b |
          d2-> d8(\upbow c) b a |
          g4-> b-> g8\< d e fis\! 
          \repeat volta 2 {
            g4\ff\downbow g8 g g4-.(\upbow g4-.)\upbow |
            b2. a4\upbow |
            g4 fis g e |
            d2 d'4-.(\upbow e-.-4)\upbow |
            c2 c4-.( d4-.) |
            b2 b4-.( c4-.) |
            a4 b a b
          }
          \alternative {
            { a4 d, e fis }
            { a4 b a a }
          }
          g4 d g \breathe b8\f\downbow b 
          \repeat volta 2 {
            b4\downbow b8 b b4 b8 b |
            b4 e b e |
            b4 e b a |
            g4 fis e \breathe b'8\downbow b |
            b4 b8 b b4 b8 b |
            b4 e b e |
            b e d cis
          }
          \alternative {
            { d4 cis d \breathe b8\downbow b }
            { d2. \breathe d,8\p\downbow d}
          }
          \repeat volta 2 {
            d4\p d8\f d d4 d8 d |
            g4 a b d,8\upbow d |
            d4 d8 d g4 b8 b |
            a4 fis d d8\downbow d |
            d4 d8 d d4 d8 d |
            g4 a4 b \breathe g8\f\downbow b |
            d2-> d8(\upbow c) b a 
          }
          \alternative {
            { g4-> b-> g-> \breathe d8\f\downbow d }
            { g4-> b-> g-> \breathe d8\f\downbow d}
          }
          d4\downbow d8 d d4 d8 d |
          g4 a b \breathe d8\downbow d |
          d4 d8 d d4 d8 d |
          b4 c d r4\breathe |
          g,4\downbow a b r4\breathe |
          b,4 c d r4 |
          R1^"GP" |
          d1->\f\upbow |
          g4\p\downbow fis g fis |
          g4\< fis g fis |
          g2\f r2\breathe |
          b2\downbow r2\breathe |
          g1->\ff\downbow\fermata \bar "|."
        }
      }
    }
    \layout { }
    \midi { }
  }
}

%% Last modified: 2016.07.13 01:22:59-0400
