\version "2.18.2"

\header {
  title = "The Wabash Cannonball"
  composer = "Traditional"
  arranger = "Carrie Lane Gruselle"
}
\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/6) %% reduce horizontal spacing
      \override MultiMeasureRest.expand-limit = #2
  }
}
voiceconsts = {
  \key c \major
  \time 2/2
  % numericTimeSignature
  \compressFullBarRests
  \tempo "Moderato" 4 = 130
}

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts 
          \clef treble
          R1*3 | r2 r4 g'\upbow\mf | g\downbow g c d | e g2 e8\downbow e |
          e4 e d c | f,2 r4 a4\upbow | g4\downbow g b d | e d2 d8\downbow d |
          b4 c b a | g2 r4 g4\upbow | g\downbow g c d | e g2 e8\downbow e | 
          e4 e d c | f,2 r4 a\upbow | g\downbow g b d | e d2 d8\downbow d |
          b4 g a b | c2 r2 | g'2\downbow\f r2 |g2\downbow\breathe g2\downbow\breathe |
          g1\downbow(\> | e2)\mp r2 | g2\downbow\f r2 | g2\downbow\breathe g2\downbow\breathe |
          g1\downbow(\> | e2)\mp r2 | e4\downbow\mf e8\upbow e\downbow e4\upbow e8\downbow e\upbow |
          c4\downbow c8 c c4 c8 c | g4 g8 g g4 g8 g | a4 a8 a a4 a8 a |
          b4 b8 b b4 b8 b | g4 g8 g g4 g8 g | d'4 d8 d d4 d8 d | c4 c8 c c4 c8 c |
          e4 e8 e e4 e8 e | c4 c8 c c4 c8 c |
          g4 g8 g g4 g8 g | a4 a8 a a4 a8 a | b4 b8 b b4 b8 b | g4 g8 g g4 g8 g |
          g4 g fis f | g g8 g g4 r4 | g'2\downbow\mf r2 | g2\downbow\breathe g2\downbow\breathe |
          g1\downbow(\> | e2)\p r2 \bar "||"
          \key d \major
          a2\downbow\f r2 | a2\downbow\breathe a2\downbow\breathe | 
          a1\downbow(\> | fis2)\mp r4 a,4\upbow | a4 a d e | fis?4 a2 fis8 fis |  %% cautionary fis
          fis4 fis e d | g,2 r4 b4\upbow | a a cis? e | fis e2 e8\downbow e |
          cis4 d cis b | a2 r4 a\upbow | a a d e  | fis4 a2 fis8\downbow fis |
          fis4 fis e d | g,2 r4 b4\upbow | a a cis e | fis e2 e8\downbow e |
          cis4 a b cis | d2 r2 | d8(\downbow\f cis) d\upbow a\downbow d(\upbow cis) d\downbow a\upbow |
          b8\downbow( a) b cis d( cis) b a | d( cis) b a g( fis) e d |
          g( fis) g a b4\upbow g\upbow | a8\downbow( e) fis e a( e) fis e |
          cis'( a) b a cis( a) b a | g( fis) g e g( fis) g e | fis( g) fis e d4\upbow a'\upbow |
          d8\downbow( cis) d a d( cis) d a | b( a) b cis d( cis) b a |
          d( cis) b a g( fis) e d | g( fis) g a b4\upbow g\upbow |
          cis8( d) cis b cis4\upbow a\upbow | cis8( d) cis b cis4\upbow a\upbow |
          cis8( b) a b cis( a) b cis | d( b) a fis d4 r4 | 
          d'8\downbow\ff d\upbow b b a a g g | fis(\downbow g) fis\upbow e\downbow d4 \upbow r4 |
          r1 | r4 cis'4\downbow( d) r4 \bar "|."


        }
      }
    }
    \layout { }
    \midi { }
  }
}

%% Last modified: 2016.11.20 12:13:51-0500
