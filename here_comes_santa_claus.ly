%% Date: 2016.10.31
\version "2.18.2"
\header {
  title = "HERE COMES SANTA CLAUS"
  subtitle = "(Right Down Santa Claus Lane)"
  composer = "GENE AUTRY"
  arranger = "OAKLEY HALDEMAN"
}
\layout {
  \context {
    \Score
      %% \override BarNumber.break-visibility = ##(#f #t #t)
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  }
}

voiceconsts = {
  \key a \major
  \time 2/2
  %% \numericTimeSignature
  \tempo "Moderately" 4 = 110
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
          fis'4\f\downbow a gis fis | e gis fis cis | e8 e d4 cis b | 
          a2. r4 \mark \default \bar"||" e4\f\downbow cis' b8 b a4 | 
          e4 cis' b8 b a4 | e d' d8 d cis4 | d1 | e,4 d' cis b8 b | 
          e,4 d' cis b8 b | e,4 e'4 e fis | e1 \breathe \mark \default |
          fis4\downbow a gis fis | e gis fis e | d d fis8 e d4 | cis1 |
          fis4 a gis fis | e gis fis cis | e8 e d4 cis b | a2. r4 \mark\default \bar"||"
          cis4\downbow\mf cis cis cis | cis cis cis cis | d d d d | d r4 r2 \breathe |
          d4\downbow d d d | d d d d | cis cis cis cis | cis r4 r2 \mark \default |
          fis4\mp^"pizz." a gis fis | e gis fis cis | R1*2/2*2 | fis4 a gis fis |
          e gis fis cis | e8 e d4 cis b | a4 r4 r2 \mark \default \bar"||" 
          e4\downbow\f^"arco" cis' b8 b a4 | e1 | e4 d' d8 d cis4 | d1 | e,4 d'4 cis b8 b |
          e,1 | e4 e'4 e fis | e1\breathe\mark \default | fis4\downbow\f a gis fis |
          e gis fis cis | d d fis8 e d4 | cis1 | fis4 a gis fis | e gis fis cis |
          e8 e d4 cis b | e8 e d4 cis b | e8 e d4 cis b | a4 r4 a'4\downbow r4\bar"|."
        }
      }
    }
    \layout { }
    \midi { }
  }
}

%% Last modified: 2016.11.20 12:17:03-0500
