\version "2.18.2"
\header {
    title="Bolero"
    composer="Ravel"
    arranger="Arranged by: Shannon M. Crow"
}
\score {
    \relative c'' {
        \key d \major
        \clef treble
        \time 3/4 \numericTimeSignature
        %% \mark \markup{ \bold {Moderately slow}}

        R2. | R2. | d4( d8) cis16 d e d cis b |
        d8 d16 b d4 d8 cis16 d |
        b16 a fis g a2 | % measure 5
        a4( a16) b cis b a g fis e |
        fis16 e d4 d16 e fis8 g |
        e4 a2( |
        a2) r4 |
        e'4( e8.) d16 cis b cis d | % measure 10
        e16 d cis8( cis16) d cis b d cis b g |
        %% g8 g16(\staccato g16\staccato) g8(\staccato b)\staccato d16 b cis a
        g8 g16\staccato g16\staccato g8\staccato b\staccato d16 b cis a
        %% g8 g16(\staccato g)\staccato g8(\staccato b)\staccato cis16 a b g
        g8 g16\staccato g\staccato g8\staccato b\staccato cis16 a b g
        %% e8 e16 d e4( e8) e16(\staccato e)\staccato |
        e8 e16 d e4( e8) e16\staccato e\staccato |
        e8 g b16 g a fis e8 e16 d | % measure 15
        e4. e16 d e8 fis16 g |
        a2( a16) g fis e |
        d2. | d2. | d2.
    }
    \layout {
      \context {
          \Score
          %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/70)
          %% \override SpacingSpanner.uniform-stretching = ##t
          \override Score.BarNumber.break-visibility = #end-of-line-invisible
          \override Score.BarNumber.Y-offset = #-4.0 % bar number below staff!
      }
    }
}
