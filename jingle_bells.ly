\version "2.18.2"

\include "helpers.ly"

\header { title = "Jingle Bells"
         arranger = "Shannon Crow"
        }
\layout {
  \context { \Score 
    \override SpacingSpanner.uniform-stretching = ##t
  }
}

\book {
  \score {
    \new StaffGroup <<
      \new Staff {
        \relative c'' {
          \time 4/4 \numericTimeSignature
          \clef treble
          \key g \major
          \tempo "Allegro" 4 = 100
          b8_\f\downbow b8 b4 b8 b8 b4 |
          b8 d8 g,8 a8 b2 |
          c8 c c c c b b4 |
          b8 a a b a4 d4 |
          b8\downbow b8 b4 b8 b8 b4 |
          b8 d g,8 a b2 |
          c8 c c c c b b b |
          d8 d c a g2\upbow^"Fine" |
          d8\downbow b' a g d4. d8 |
          d8 b' a g e4. e8 |
          e8 c' b a fis4. fis8 |
          d'8 d8 c a b4. r8 |
          d,8 b' a g d4. d8 |
          d8 b' a g e4. e8 |
          e8 c' b a d d d d |
          e8^4 d c a g4 d'4\upbow\dcafh |
        }
      }
      \new Staff {
        \relative c' {
          \time 4/4 \numericTimeSignature
          \key g \major
            g'8_\f g g4 g8 g g4 |
            g8 b g a^4 g2 |
            e8 e e e e d d4 |
            d8^4 c c d c4 fis |
            g8\upbow g g4 g8 g g4 |
            g8 b g a g2 |
            e8 e e e e d d d |
            fis fis d c b2\upbow |
            b2.\downbow b4 |
            b2 c2 |
            c2 a2 |
            a2 b2 |
            b2.\downbow b4 |
            b2 c2 |
            c2 d2^4 |
            d4 d b d\upbow
        }
      }
    >>
  }
}
