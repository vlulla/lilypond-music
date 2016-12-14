%% Date: 2016.10.31
\version "2.18.2"
\header {
  title = "RUDOLPH THE RED-NOSED REINDEER"
  composer = "JOHNNY MARKS"
}
\layout {
  \context {
    \Score
      %% \override BarNumber.break-visibility = ##(#f #t #t)
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  }
}

voiceconsts = {
  \key d \major
  \time 3/4
  %% \numericTimeSignature
  \tempo 4 = 115
  \compressFullBarRests 
  \override MultiMeasureRest.expand-limit=#1
  \set Timing.beamExceptions = #'()
  \set Score.markFormatter = #format-mark-circle-alphabet
 }
\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          \partial 2 b'4(\mf\upbow cis) \bar"||" d(\downbow b) g |
          cis( a) fis | b( g) e | b' a2 | b2.\mp | a2. | g2. | fis2. |
          \time 4/4 fis4\downbow\mf fis fis fis | b2 b4 cis | d d d8 cis b4 |
          a2. r4\breathe \mark\default
          \repeat volta 2 { a8(\f\downbow b) a4 fis4 d' | b a2. | a8( b) a( b) a4 d4 |
          cis1 \breathe | g8(\downbow a) g4 e cis' | b4 a2. | }
          \alternative {
            { a8( b) a( b) a4 b | fis2. r4 \breathe | }
            { a8( b) a( b) a4 e' | }
          }
          d2. r4\breathe \mark \default |
          b4\downbow\f b d b | a fis a2 | g4 b a g | fis1 | e4 fis a b |
          cis4 cis cis2 | d4 d cis b | a g e2 \mark\default | a8(\f b) a4 fis d'4 |
          b4 a2. | a8( b) a( b) a4 d | cis1 \breathe | g8(\downbow a) g4 e cis' |
          b a2. | a8( b) a( b) a4 e' | 
          d2. r4 \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" } 
              \breathe \mark\default \bar"||"
          d1:32\p | d1:32 | b2:32 cis:32 | d:32( d4) r4 | e,4^"pizz."\< fis a b |
          cis\! cis cis r4 | d4 d cis b | a\> g e r4\! | r1 \mark\default \bar"||"
          a8(\f^"arco" b) a4 fis d' | b a2. | a8( b) a( b) a4 d | cis1 \breathe |
          g8(\downbow a) g4 e cis' | b a2. | a4 b a b | a1\< | e'1\!| d1( | 
          d4) a^"pizz."_"L.H."\p d, r4 \bar"|."
        }
      }
    }
    \layout { }
    \midi { }
  }
}

%% Last modified: 2016.11.20 12:17:34-0500
