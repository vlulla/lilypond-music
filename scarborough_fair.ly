\version "2.18.2"
\header {
  title = "Scaraborough Fair"
}

\book {
  \score {
    \relative c'' {
      \time 3/4
      \clef treble
      \key g \major
      \tempo "Lento"
      \numericTimeSignature
      a2 a4 | e'2 e4 | b4. c8 b4 | a2. |
      r4 e'4 g4 | a2 g4 | e4 fis d | e2. |
      a2 a4 | g2 e4 | e4 d4 c4 | b2. |
      a2 e'4 | d2 c4 | b4 a4 g4 | a2. a2.
    }
    \layout { }
    \midi { \tempo 4 = 100 }
  }
}

