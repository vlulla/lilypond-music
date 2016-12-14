\version "2.18.2"
\header {
    title="THE LION SLEEPS TONIGHT"
}
\score {
    \relative c'' {
        \key g \major
        \clef treble
        \time 4/4 \numericTimeSignature

        \repeat volta 2 {
          g4^"pizz."_\p a b8 a b4 |  % measure 1
          c^"Lo2" b a8 g a4  |
          b d,8 d( d) d d4(  |
          d1) |
        }
        \repeat volta 2 {
          b'8_\mp b b b b b b b |
          c c c c c c c c b b b b b b b b |
          a a a a a a a4 |
        }
        g,4^0^\markup{ \italic arco} a^1 b8(^2 a) b4 |
        c(^3 b^2) a8(^1 g^0 a4)^1 |
        b(\downbow a) g\upbow b\downbow |
        a1\upbow | % measure 12
        d4 b a8( b) d4 |
        c4( b) a8( g a4) |
        b4( a) g b |
        a1 |
        d1(^4 \noBreak |
        d4) c8(^3 d^4 c2) |
        b4 d8 d( d) d d4( \noBreak |
        d1) |
        r4 b'8 a g fis e d |
        c1 |
        r4 b'8\downbow a g fis e ees^"Lo1" |
        d2 d2 |  % measure 24
        g4_\mf a b8( a) b4 |
        c( b) a8^4( g^3 a4) |
        b4( a4^0) g b |
        a1 |
        d4^3 b a8( b) d4 | % measure 29
        c4( b) a8( g a4) |
        b4( a) g b |
        a1 |
        g4( e) g2 |
        g4( e) g2 |
        g4 e8 e( e) d d4( \noBreak |
        d2) e'8^4( d^3) e4 |
        d1( \noBreak | % measure 37
        d4) c8( d) c2 |
        b4\downbow d,8\upbow d8(\downbow d) d\upbow d4\downbow( \noBreak |
        d1) \breathe| % measure 40
        g4 a b8( a) b4 |
        c4( b) a8( g a4) |
        b4 d,8\upbow d(\downbow d) d\upbow d4(\downbow  \noBreak |
        d1_\markup {\italic dim.}) | % measure 44
        g,4_\p a b8( a) b4 |
        c4( b) a8( g a4) |
        b4\downbow d8\upbow d8(\downbow d) d\upbow d4( \noBreak |
        d1)\fermata |
    }
    \layout {
      \context {
        \Score {
          \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/24)
          \override Score.BarNumber #'break-visibility = #end-of-line-invisible
          \override Score.BarNumber #'Y-offset = #-4.0 % bar number below staff!
        }
      }
    }
}
