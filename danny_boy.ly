\version "2.18.2"
\header {
   title = "Danny Boy"
   arranger = "Shannon Crow"
}

\book {
  \score {
    <<
      \new Staff {
        \set Staff.instrumentName = #"Violin"
        \relative c' {
          \time 4/4 \numericTimeSignature
          \clef treble
          \key g \major
          \tempo 4 = 60
          \partial 2 r8 fis\upbow g a |  %% See warning in Section 2.1.2 of the manual
          b4. a8 b e d b |
          a g e4. g8 b c |
          d4. e8 d b g b |
          a2( a8) fis g a  |
          b4. a8 b e d b |
          a8 g e4. fis8 g a |
          b4. c8 b a g fis |
          g2( g8) d' e fis |
          g4. fis8 fis e d b |
          d b g4. d'8 e fis |
          g4. fis8 fis e d b |
          a2( a8) d d d |
          b'4. a8 a g e g |
          d8 b g4. fis8 g a |
          b8 e d b a g e fis |
          g2. r4
       }
     }
     \new Staff {
       \relative c' {
         \clef "alto"
         \numericTimeSignature
         \key g \major
         \set Staff.instrumentName = #"Viola"
         r1
       }
     }
    \new Staff {
      \relative c' {
        \clef "bass"
        \numericTimeSignature
        \key g \major
        \set Staff.instrumentName = #"Double Bass"
        r1
      }
    }
    >>
  }
}
