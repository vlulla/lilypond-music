\version "2.18.2"

\header {
  title = "We Wish You a Merry Christmas"
  arranger = "Shannon M. Crow"
}

\score {
  \new StaffGroup <<
    \new Staff {
      \relative c' {
        \time 3/4 \numericTimeSignature
        \clef treble
        \tempo "Allegro" 4 = 95
        \partial 4 g4_\f\downbow |
        c4 c8 d^4 c b |
        a4 a a |
        d d8 e d c |
        b4 g g |
        e' e8 f e d |
        c4 a g8 g|
        a4 d b |
        c2 g'4_\p\upbow |
        c c c |
        b2 b4 |
        c b a |
        g2 d4 |
        e d8 d c c |
        g'4 g, g8 g |
        a4 d b |
        c2 g'4_\f\upbow |
        c4 c8 d c b |
        a4 a a |
        d d8 e^4 d c |
        b4 g g |
        e e8 f e d |
        c4 a g'8-"rit." g |
        a4 d b
        c2\downbow
      }
    }
    \new Staff {
      \relative c' {
        \partial 4 g4_\f\upbow|
        c4 c8 d^4 c b |
        a4 a a |
        d d8 e d c |
        b4 g g |
        e'4 e8 f e d |
        c4 a g8 g |
        a4 d b |
        c2 g'4_\p\upbow |
        e4 e e |
        g2 g4 |
        e g f |
        e2 d4 |
        e4 d8 d c c |
        g'4 g, g8 g|
        a4 d b |
        c2 g'4_\f\upbow |
        e4 e8 f e g |
        f4 f f |
        fis4 fis8 g fis e |
        d4 b b |
        c e8 f e d |
        c4 a e'8-"rit." e |
        f4 f f |
        e2\downbow
      }
    }
  >>
}
