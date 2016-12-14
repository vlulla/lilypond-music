%% Date: 2016.11.03
\version "2.18.2"
\header {
  title = "HAVE YOURSELF A MERRY LITTLE CHRISTMAS"
  composer = "HUGH MARTIN"
  arranger = "RALPH BLANE"
}
\layout {
  \context {
    \Score
      %% \override BarNumber.break-visibility = ##(#f #t #t)
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/12)
  }
}

voiceconsts = {
  \key d \major
  \time 4/4
  \numericTimeSignature
  \tempo "Flowing Ballad Style" 4 = 65
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
          fis'4\f\downbow g, b d | fis8( e) d( cis) b4 cis | d1-.(\>d2.) r4\!\breathe\mark\default\bar"||"
          d,4\downbow\mf fis a d | a8( g) (fis e) d4 e | d fis a d | a2. r4\breathe |
          fis4\downbow\< a d fis \! | e8( d) cis( b) a4 g4 | fis1(\> | fis2.) r4\!\breathe\mark\default
          d4\mf\downbow fis a d | a8( g) fis( e) d4 e | d fis a d | a2. r4\breathe |
          fis4\downbow a d fis | e8( d) cis( b) ais4_"(L1)" cis | d2. r4\breathe |
          d2\downbow\< d2\! \mark\default\bar"||" fis4\downbow\mark\markup{\musicglyph #"scripts.segno"} fis fis e8( d) |
          cis( d) e2 d8( cis) | b8( cis) d2 cis4 | cis2. r4\breathe | 
          d4\downbow d d cis8( b) | a8( b) cis2 a8( b) | cis( d) e2 e,4 | a2.\> r4\!\breathe\mark\default |
          d,4\downbow\mf fis a d | a8( g) fis( e) d4 e | d fis a d | a2. r4\breathe |
          fis4\downbow\< a d fis |  g8(\! fis) e( d) cis4 e | fis1(\< | fis2.) fis4->\upbow\f |
          fis4\downbow g, b d | fis8( e) d( cis) b4 cis | \mark\markup{ \center-column {\italic{To Coda} \musicglyph #"scripts.coda"} } |
          d2.\> r4\breathe | e,4\downbow\< g a\! cis\> \mark\default\bar"||" d2\mp\! fis2 |
          g2 g4-.( g-.) | fis2 fis2 | d2 cis2 |\mark"soli" fis,4\mf a d fis | e8( d) cis( b) a4 g4 | fis2. r4\breathe |
          e4\downbow\< g a\! cis4\< \mark\default | d2\mp fis2 | g2 g4-.( g-.) | fis2 fis2 | d2 cis2 |
          \mark"soli" fis,4\mf a d fis | e8( d) cis( b) ais4_"(L1)" cis | d2. r4\breathe |
          d2\downbow\< d2^\markup{\center-column {\italic "D.S.al Coda" \musicglyph #"scripts.segno"}}\!\bar"||"
          %% Spacing between D.S. al coda and coda!
          \cadenzaOn
            \stopStaff
              \repeat unfold 2 { s1 \bar "" }
            \startStaff
          \cadenzaOff
          % \break
          \once \override Staff.KeySignature.break-visibility=#end-of-line-invisible
          \once \override Staff.Clef.break-visibility=#end-of-line-invisible
          \once \override Score.RehearsalMark.extra-offset=#'( 1.5 . 1.5 )
          %% \once \override Score.RehearsalMark.font-size=#4
          \mark\markup{\musicglyph #"scripts.coda" Coda} d1( | d2.) d4->\upbow |
          fis4\f g, b d | fis8(_\markup{\italic "rit."} e) d( cis) b4 cis| d1\fermata \bar"|."
        }
      }
    }
    \layout { }
    \midi { }
  }
}

%% Last modified: 2016.11.03 02:06:33-0400
