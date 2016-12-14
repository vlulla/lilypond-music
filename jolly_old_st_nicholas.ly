\version "2.18.2"

\header {
  title = "Jolly Old St. Nicholas"
  arranger = "Shannon M. Crow"
}

\score {
  \new StaffGroup <<
    \new Staff {
      \relative c'' {
        \clef treble
        \time 4/4 \numericTimeSignature
        \tempo 4 = 120
        b4\downbow b b b | a a a2 | g4 g g g | b2 r2 |
        e,4 e e e        | d d g2 | fis4 g a b | a2 r2 |
        b4\downbow b b b | a a a2 | g4 g g g | b2 r2 |
        e,4 e e e        | d d g2 | a4 g a b | g2 r2 |
      }
    }
    \new Staff {
      \relative c'' {
        \clef treble
        \time 4/4 \numericTimeSignature
        g4\downbow g g g | fis fis fis2 | e4 e e e | d2 r2 |
        e4 e e e         | d d g2       | fis4 e fis g | fis2 r2 |
        g4\downbow g g g | fis fis fis2 | e4 e e e | d2 r2 |
        e4 e e e         | d d g2       | fis4 e fis d | g,2 r2 |
      }
    }
  >>
}
