%% Date:2016.12.13 
\version "2.18.2"
\header {
  title = "Gavotte from Mignon"
}
\layout {
  \context {
    \Score
      %% \override BarNumber.break-visibility = ##(#f #t #t)
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/12)
  }
}

voiceconsts = {
  \key g \major
  \time 2/4
  \numericTimeSignature
  \tempo "Allegretto" 4 = 65
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
          \partial 4 a'8-. d-. | b-. g-. d-. a'-.-4 | g4 a16-.-0\downbow b-. d-. c-. |
          b-. c-. d-. e-.-4 c-. d-. fis-. e-. | d4--\breathe d8-.\downbow g-. |
          fis32( g fis g fis16-.) e-.\upbow d8-.\downbow g-.\upbow | fis32( g fis g fis16-.) e-.\upbow d8-. g-. |
          d16( e) c8-. c16( d) b8-. | gis4---4\breathe a8-.\downbow d-. |
          b8-. g-. d-. a'-.-4 | g4\breathe a16-. b-. d-. c-. | 
          b16-. c-. d-. e-. c-. d-. fis-. e-. | d4-- \breathe d8-.\downbow g-. |
          fis32( g fis g fis16-.) e-. d8-. g-. | fis32( g fis g fis16-.) e-. d8-. g-. |
          b,8-. b16( d) a8-.-0 a16( b) | g4-- \breathe a8-.-0\downbow g'-. |
          fis-. d-. cis-. e-.-4 | d4-- b16(\upbow d) cis e-4 | e16( d) fis, d' a8-. e-. |
          g8( fis16) r16 a8-.\downbow a' | fis8-. \tuplet 3/2 {d16 e d} cis8-. e-.-4 |
          d4-- b16(\upbow d) cis e-4 | a,4-- bes16( d) cis e-4 | 
          a,8 g16( bes) a-. bes-. g-. bes-. | a16-. bes-. g-. bes-. a-. bes-. g-. bes-. |
          a16-. b?-. a-. b-. a-. b-. a-. b-. | 
          a16-.-\markup{\italic "pocco rit."}\> b-. a-. b-. \breathe a8-.^\markup{\italic "a tempo"}\mf d-. |
          b8-. g-. d-. a'-.-4 | g4 a16-.\downbow b-. d-. c-. | b16-. c-. d-. e-. c-. d-. fis-. e-. |
          d4-- d8-.\downbow g-. | fis32( g fis g fis16-.) e-. d8-. g-. |
          fis32( g fis g fis16-.) e-. d8-. g-. | b,8-. b16( d) a8-. a16( b) |
          g4--\breathe d'8\downbow g16 r16 | f4-- c16(\upbow d) ees-. f-. |
          ees16( d) c-. d-. f,8-. f16( bes) | g8-. g16( c) a8-. a16( d) |
          bes16( a) bes c d8 g16 r16 | f4-- c16( d) ees-. f-. | ees16( d) c-. d-. f,8 f16( bes) |
          g8-. g16( c) a8-. a16( d) | bes8 a16-. c-. b-. c-. a-. c-. |
          bes16-. c-. a-. c-. bes-. c-. a-. c-. | bes16-. c bes-. c-. bes-. c-. bes-. c-. |
          bes16-.-\markup{\italic "poco rit."}\> c-. bes-. c-. \breathe a8-.\mf^\markup{\italic "a tempo"} d-. |
          b?8-. g-. d-. a'-. | g4 a16-.\downbow b-. d-. c-. | b16-. c-. d-. e-. c-. d-. fis-. e-. |
          d4-- d8-.\downbow g-. | fis32( g fis g fis16-.) e-. d8-. g-. |
          fis32( g fis g fis16-.) e-. d8-. g-. | d16( e) c8-. c16( d) b8-. |
          gis4-4_3\breathe a8-.\downbow d-. | b8-. g-. d-. a'-. | g4 a16-.\downbow b-. d-. c-. |
          b16-. c-. d-. e-. c-. d-. fis-. e-. | d4-- d8-.\downbow g-. |
          fis32( g fis g fis16-.) e-. d8-. g-. | fis32( g fis g fis16-.) e-. d8-. g-. |
          R2^\markup{\bold "G.P."} | b,8-.\downbow b16( d) a8-. a16( b) |
          g4-- d8-.\downbow g-. | e8-. c-. g-. d'-.-4 | c4 a'8-.\downbow d-. |
          b8-. g-. d-. a'-.-4 | g-. d'-. b-. d-. | e8-.-4 d-. b-. d-.\upbow |
          e8-.-4\upbow d[-\markup{\italic "Pizz."} b d] | 
          \set fingeringOrientations = #'(left) % http://lilypond.org/doc/v2.19/Documentation/notation/common-notation-for-fretted-strings#string-number-indications
          e8-0\> r8 <fis-1 a,-0 d,-0>8\arpeggio r8 | 
          \set fingeringOrientations = #'(right) % http://lilypond.org/doc/v2.19/Documentation/notation/common-notation-for-fretted-strings#string-number-indications
          <g-2 b,-1 d,-0 g,-0>8\arpeggio r8\!
        \bar "|."
        }
      }
    }
    \layout { }
    \midi { }
  }
}

%% Last modified: 2016.12.15 23:33:32-0500
