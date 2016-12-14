\version "2.18.2"
\header {
  title = "Dreidl Song"
  arranger = "Shannon M. Crow"
}

\book {
  \score {
    \new StaffGroup <<
      \new Staff {
        \relative c' {
          \clef treble
          \time 2/4 \numericTimeSignature
          \tempo "Moderato" 4 = 100
          \key g \major
          \partial 8 d8\upbow
          g g a a 
          b g r b\upbow
          d d c b
          a4-> r8 d
          a a b b
          c a r d\upbow
          d c b a
          g4-> d'4->
          d8\downbow b d b
          d b r b\upbow
          d d c b
          a4-> r8 a8
          c a c a
          c a r d\upbow
          d c b a
          g4-> \downbow r8
        }
      }
      \new Staff {
        \relative c' {
          \clef treble
          \key g \major
          \time 2/4 \numericTimeSignature
          \partial 8 d8\upbow
          b b c c
          d b r g'\upbow
          b b a g
          fis4-> r8 d
          fis fis g g
          a fis r fis\upbow
          fis e d c
          b4-> fis'->
          b8\downbow g b g
          b g r g\upbow
          b b a g
          fis4-> r8 fis
          a fis a fis
          a fis r fis\upbow
          fis e d c
          b4\downbow r8
        }
      }
    >>
    \layout {
      \context { 
        \Score 
        %% \override SpacingSpanner.uniform-stretching = ##t
        \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
      }
    }
  }
}
