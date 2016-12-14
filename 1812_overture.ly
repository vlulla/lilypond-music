\version "2.18.2"

\header {
  title = "1812 OVERTURE"
  composer = "PYOTR TCHAIKOVSKY"
  arranger = "CARRIE LANE GRUSELLE"
}
\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  }
}

voiceconsts = {
  \key g \major
  \time 3/4
  \numericTimeSignature
  \tempo "Largo" 4 = 60
}

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c'' {
          \voiceconsts
          \clef treble
          %% \set Score.currentBarNumber = #0
          \partial 4 g8\downbow g |
          a4 b g8 g |
          a8 b c^"L2" c c4( |
          c2) r4 |
          b8 b b b b4( |
          b4) b b |
          a4.\upbow \autoBeamOff a8\upbow \autoBeamOn a a |
          b2 g4\downbow |
          a4 b g |
          a8\< b8 c c c c |
          c8\f c c c c\> c |
          c8 c c b\! c4( |
          c2)\mf r4 |
          a8\downbow a a a a a |
          a4. a8 b4( |
          b2) r4 |
          b'8\p\downbow b b b b b |
          a2 a4 |
          a4 r4 r4 |
          r4 r r |
          b8\mf b b4 b |
          g4^"L2" r4 r4 |
          a8\downbow a a4 a |
          f4^"L1" r4 r4 |

          \time 4/4
          r2 f,4\f^\downbow c4( |
          c2) c'4\> a\! 
          \bar "||"

          \key a \major 
          \tempo "Andantino" 4=88

          e'4.^4(\downbow e8-.) e8(\upbow d cis b) |
          e2. b4 |
          e4.( e8-.) e( d cis b) |
          e2. e,4 |
          fis4( a)\< b( cis8 d) |
          e2. e4\! |
          fis4(\f a) gis?(^"H2" fis8 e) |
          a2 r4 e,4\upbow |
          fis4( a) b( ces8 d) |
          e4( d) ces( e) |
          b4\> b8( ces) b2\! |
          r1 \bar "||"

          \key g \major
          <b e,>4^\markup{\column{ \line{pizz.}\line{div.}}} <b e,>8 <b e,> <b e,>4 <b e,> |
 <b e,>4 <b e,>8 <b e,> <b e,>4 <b e,> |
          <b e,>4 <b e,>8 <b e,> <b e,>4 <b e,> |
 <b e,>4 <b e,>8 <b e,> <b e,>4 <b e,> |
          g,8^"arco"\downbow g4( a8) b4 c |
          g8 g4( a8) b4 c |
          g8 g4( a8) b4 c |
          g8 g4( a8) b4 c |
          b'8\downbow b16( c) b8 a g g a e |
          e1(\> |
          e4)\pp r4 r2 |
          r1 \bar "||"
          \tempo "Allegro vivace" 4 = 144
          d'1\p\downbow |
          d2.( cis4) |
          d2 g2 |
          g2 fis4( f) |
          e1 |
          e4( f) e( dis) |
          d?1\< |
          d,4-> d-> d'-> d->\! |
          r8 d8\f\upbow g a b a g a |
          b4-. g4-. g2 |
          r8 d\upbow g a b a g a |
          b4-. g-. g2 |
          r8 e8\upbow a b a e c e |
          a8 e c e a2 |
          r8 d,8\upbow g a g d b d |
          g8 d b d g2 |
          r8 d\ff\upbow g a b a g a |
          b4-. g4-. g2 |
          r8 d8\upbow g a b a g a |
          b4-. g-. g2 |
          r8 e8\upbow a b a e c e |
          a8 e c e a2 |
          r8 d,\upbow g a g d b d |
          g8 d b d g2 |
          r4 e8\downbow e g4 e |
          r4 d8 d fis4 d |
          r4 d8 d f4 f |
          e4 e dis dis |
          d4 c b g |
          d'?4 d e fis |
          g4\downbow d8 d fis4 d |
          g4 d8 d fis4 d |
          g4 fis g fis |
          g4 fis g fis |
          g4 r4 g,4.\downbow g8 |
          b2 d2 |
          g2 r2 |
          g,,2.\fff\downbow g4 |
          g2.\downbow\fermata \bar "|."
        }
      }
    }
    \layout { }
    \midi { }
  }
}

%% Last modified: 2016.07.13 01:24:03-0400
