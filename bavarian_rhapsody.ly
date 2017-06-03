\version "2.18.2"
\header {
  title = "BAVARIAN RHAPSODY"
  arranger = \markup{\column{ "DAVID SHAFFER" "(ASCAP)" }}
  enteredby = "Vijay Lulla (2017.06.02)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
  }
}
pizz = \markup{\italic "pizz."}
arco = \markup{\italic "arco"}

voiceconsts = {
  \key g \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Brisk" 4 = 120
}

%% showLastLength = R1*8 %% show only last few measures!  %% Comment to typeset whole score!

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          \clef treble
          \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
          R1*4/4*8 |
          e8\f^\pizz dis e fis g fis g a |
          b8 e4 b8 g'8 fis e b |
          a e a c b a g fis |
          e b e fis g e g b |
          c8 e4 c8 g' fis e c | % measure 13
          b8 e4 b8 g' fis e b |
          c8 b a g fis e dis b |
          e8 g4 b8 e4 r4 |
          c4.\ff\downbow^\arco b8 c4. a8 | % measure 17
          b8( a) g( a) b4 g |
          a8( g) fis8( g) a4 fis |
          g4 a b d | % measure 20
          c4. b8 c4. a8 |
          b8( a) g8( a) b4 e4 |
          b8\downbow b4\upbow c8\upbow b8 a g fis |
          e4\downbow b' e4 r4 \bar"||"\break
          \tempo "Marcato" 4 = 60
          gis,8\mf^\pizz a b4 gis8 a b4 | %  measure 25
          a8 b c4 a8 b c4 |
          fis8 g a4 fis8 g a4 |
          b8 a g4 r2 \breathe \bar"||"\break
          \tempo "Expressive" 4 = 78
          dis4\downbow^\markup{\column{"solo" \arco}} dis e4 fis | % measure 29
          a4 g8( fis) g2 |
          e4\upbow e fis g |
          g4 fis8( e) fis2 | % measure 32
          cis4\downbow cis d e |
          e4 d8( cis) d2 |
          e2 fis4 e4 |
          \override BreathingSign.Y-offset = #3.2
          \override BreathingSign.text = \markup{\large \bold ","}
          dis1 \breathe \bar"||" \break % measure 36 
          \tempo "Very slow" 4 = 56
          b4^"tutti"\pp\downbow c4 b a | 
          b4 c b a |
          b4 c b a |
          b4 c cis dis \bar"||" \break
          \tempo "Brisk" 4 = 120
          e4\f r4 r2 |
          R1*7*4/4 | % measure 42
          e,8\f^\pizz dis e fis g fis g a | % measure 49
          b8 e4 b8 g'8 fis e b |
          a8 e a c b a g fis |
          e8 b e fis g e g b |
          c8 e4 c8 g'8 fis e c |
          b8 e4 b8 g'8 fis e b |
          c8 b a g fis e dis b |
          e8 g4 b8 e4 r4 |
          c4.\ff\downbow^\arco b8 c4. a8 | % measure 57
          b8( a) g8( a) b4 g4 |
          a8( g) fis( g) a4 fis |
          g4 a4 b d |
          c4.\downbow b8 c4. a8 |
          b8( a) g( a) b4 e, |
          b'8\downbow b4\upbow c8\upbow b8( a) g( fis) |
          R1 |
          b8\downbow b4\upbow b8\upbow c4  dis4 |
          e4->\downbow e-> e-> r4 \bar"|."
        }
      }
    }
    \layout{}
    \midi{}
  }
}
