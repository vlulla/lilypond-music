%% Date: 2016.10.30
\version "2.18.2"
\header {
  title = "FROSTY THE SNOW MAN"
  composer = "STEVE NELSON"
  arranger = "JACK ROLLINS"
}
\layout {
  \context {
    \Score
      %% \override BarNumber.break-visibility = ##(#f #t #t)
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  }
}

voiceconsts = {
  \key d \major
  \time 2/2
  %% \numericTimeSignature
  \tempo "Brightly" 4 = 110
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
          a'8\downbow\mf a a4 a4-.(\upbow a4-.) | b8 a a4 a4-.( a4-.) |
          a8\< a8 a4 b-.( cis-.) | d\f r4 a2->\upbow  \mark \default |
          \repeat volta 2 { a2\downbow\mf fis4 g | a4 d2 cis8 d | e4 d cis b |
            a2 cis4 d | e4 d cis b8 b |
          }
          \alternative {
            { a4 d fis, a8 b | a4 g fis g | a4 r4 a2 }
            { a4 d fis, a8 b | }
          }
          a4 g fis( e) | d2. d4\upbow \mark \default \bar"||" b'4\f\downbow b d d |
          cis4 b a fis | g b a g | fis2. fis4 | e e a a | cis cis e e8 cis |
          e4 d cis( b) | a2 a2-> \mark \default | a2\downbow\f fis4 g | a4 d2 cis8 d |
          e4 d cis b | a2 cis4 d | e d cis b8 b | a4 d fis, a8 b |
          a4 g fis( e) | d2. r4 \mark \default \bar"||" r4 b'4\p^"pizz." r4 b | r4 cis r d |
          r d r cis | r e d r | cis r cis r | cis r cis r |
          e4\downbow\mf^"arco" d cis b | a2 a2->\f\< \mark \default \bar"||" a2\!\downbow fis4 g |
          a4 d2 cis8 d | e4 d cis b | a2 cis4 d | e4 d cis b8 b | a4 d fis, a8 b |
          a4 g fis( e) | d2. r4\breathe \mark \default \bar"||" a'8\downbow a a4 a-.\upbow( a-.) |
          b8 a a4 a-.\upbow( a-.) | b a fis a | e1 \breathe | a8\downbow a a4 a-.\upbow( a-.) |
          b8 a a4 a-.\upbow( a-.) | a8 a a4 b-.\upbow( cis-.) | d4 r4 r2 \bar"|."
        }
      }
    }
    \layout { }
    \midi { }
  }
}

%% Last modified: 2016.11.20 12:19:12-0500
