\version "2.18.2"
\header {
  title = "Celtic Fiddle Tune"
  subtitle = "The Irish Washerwoman"
  arranger = "ELLIOT DEL BORCO"
  enteredby = "Vijay Lulla (2017.02.02)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
      \override MultiMeasureRest.expand-limit = #1
  }
}

voiceconsts = {
  \key g \major
  \time 6/8
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Giocoso" 4. = 124
}

%% showLastLength = R1*8 %% show only last 5 measures!

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          \clef treble
          g''8\ff\downbow fis e d c b |
          c b a b fis e |
          d g a b d c |
          b g g g4 r8 |
          d'8 b b b4 r8 |
          g'8 e e e4 r8 |
          a8 g fis g fis e |
          fis e d c b a |
          g4-> r8 r4. |
          R1*2*6/8 |
          r4. r4 d'16(\mf\upbow c) |
          \repeat volta 2 { 
            b8^"(no repeats on D.C.)" g g d g g |
            \slurDashed b8 g b d(^\markup{\italic "opt bowing"} c b) | \slurSolid
            c8 a a d, a' a |
            \slurDashed c8 a c e( d c) \slurSolid |
            b g g d g g |
            \slurDashed b g b d( c b) | 
            c( b c a) d( c) \slurSolid |
          }
          \alternative {
            { b8 g g g4 d'16(\upbow c) } % repeat 1
            { b8 g\< g g b d } % repeat 2
          }
          \repeat volta 2 {
            <b g'>4\downbow\f r8 <b g'>4\downbow r8 |
            <b g'>4\downbow r8 r4. |
            <a a'>4\downbow r8 <a a'>4 r8 |
            <a a'>4\downbow r8 r4. |
            e'8\downbow g g d g g |
            c, g' g b, g' g |
            a, c e d fis a |
          }
          \alternative {
            { b g g g4 r8 } % repeat 1
            { b g g g4 r8 } % repeat 2
          }
          a8\downbow\ff f f f4 r8 |
          g, f' e d c b | 
          a d c b a g |
          fis? c' b a g fis |
          g-> d-> d-> b'-> g-> g-> |
          R1*6/8 |
          fis8->\downbow d-> d-> c'-> a-> a-> |
          R1*6/8 |
          d,8->\downbow fis-> g-> a-> b-> c-> |
          a-> b-> c-> d-> e-> fis-> |
          g-\markup{\italic "brilliante"} g g g g g | 
          g g g g g g |
          g g g g g g | 
          g g g g g g |
          g d c b a g |
          d g a b d g |
          \repeat unfold 4 {  <<f8 a>> <<f a>> <<f a>> <<f a>> <<f a>> <<f a>> } |
          \repeat unfold 2 { <<fis?8 a>> <<fis a>> <<fis a>> <<fis a>> <<fis a>> <<fis a>> } | 
          c8^"unis." b a g fis e |
          d e d c b a |
          b d d a d d |
          c b a d, b' a^"to Coda" \bar "||" \mark \markup { \musicglyph #"scripts.coda"}
          g4-> r8 r4. |
          R1*6/8*3 |
          g8\downbow\mf-\markup{\italic "with precision"} e e d e e |
          g e g b a g |
          fis d d b d d |
          fis d fis a g fis |
          g b b b d c |
          d e e e fis g |
          a, g' fis g fis e |
          a, fis' e fis e d |
          b4. e4. |
          e4. g4. |
          a4. fis4. |
          fis4. d4. |
          b4.\f e4. |
          e4. <<g4.^"div." b4.>> |
          <<fis4. a4.>> <<d,4. fis4.>> |
          e8^"unis." b8\< a g fis g |
          a\ff-\markup{\italic "feroce"} fis fis fis g a |
          b d c b a g |
          fis b a g fis e |
          fis a g fis e d |
          e8->_\markup{\italic bite} e-> e-> e4-> r8 |
          fis8-> fis-> fis-> fis4-> r8 |
          r4. g8-> g-> g-> |
          a8-> a-> a-> a4-> r8 |
          <<b4.-> d,4.>> c'4.-> |
          b4.-> <<d,4.-> d'4.>> |
          \repeat unfold 4 { <<b8 e>> <<b8 e>> <<b e>> <<b e>> <<b e>> <<b e>> }
          \repeat unfold 2 { <<a, e'>> <<a, e'>> <<a, e'>> <<a, e'>> <<a, e'>> <<a, e'>> }
          \repeat unfold 3 { <<ees8 g>> <<ees8 g>> <<ees8 g>> <<ees8 g>> <<ees8 g>> <<ees8 g>> }
          \repeat unfold 2 { <<b,?8 g'>> <<b,8 g'>> <<b,8 g'>> <<b,8 g'>> <<b,8 g'>> <<b,8 g'>> }
          \time 9/8
          b8 g d b d g g a g |
          a fis d a d fis a g fis |
          \time 6/8
          e g g d g g |
          c, g' g b, g' g |
          a, a' g fis e d |
          c e d c b a |
          b8-> g-> g-> d'-> b-> b-> |
          R1*6/8 |
          c8-> a-> a-> e'-> c-> c-> |
          R1*6/8 |
          c8^\markup{\italic "D.C. al Coda"} a' g fis e fis \bar "||"
          \break
          \mark \markup { \musicglyph #"scripts.coda" \italic "Coda"}
          g,8-\markup{\italic ferroce} g g g g g | 
          g g g g g g |
          b g g d g g |
          b4\downbow c4\downbow d4\downbow |
          c8\downbow a a d, a' a|
          c4\downbow d4\downbow ees4\downbow |
          d8\downbow b' a g fis e? |
          d a' g fis e d |
          c a a e' c c |
          d b c a d c |
          b g g g d d |
          b d g a b d |
          g4.\downbow r4. |
          <<d4. d,4.\downbow >>r4. |
          <<g4. g,4.\downbow>> r4.  
          \bar "|."
        }
      }
    }
    \layout { }
    \midi { }
  }
}
