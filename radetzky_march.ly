\version "2.18.2"

\include "utils.ly"

\header{
  title = "RADETZKY MARCH"
  piece = \markup { \column { \italic "simplified arrangement"
                              \italic "for string orchestra by"
                              \bold "JEFF MANOOKIAN" }}
  opus = \markup { \bold "JOHANN STRAUSS, Sr." }
  enteredby = "Vijay Lulla (2017.06.06)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
  }
}

voiceconsts = {
  \key d \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Con brio" 4 = 120
}

%% showLastLength = R1*8 %% show only last few measures. %% comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c'' {
          \voiceconsts
          \time 2/2
          \clef treble
          \set Score.markFormatter = #format-mark-circle-alphabet
          d8-.\ff d-. d4-. d8-. d8-. d4-. | 
          fis4-. e-. d4.( cis8) |
          b8( ais b cis) d4-. e4-. |
          a,4-. r4 r4 fis8-.\p eis-. |
          \mark\default fis4-. fis8-. eis-. fis4-. fis8-. eis-. | % measure 5
          fis4-. e-. d-. fis8-. eis8-. |
          fis4-. fis8-. eis8-. fis4-. fis8-. eis8-. |
          fis4-. b4-. a4-. a8-. fis8-. |
          g4-. b4-. a4-. a8-. e8-. | 
          fis4-. b4-. a4-. a8-. fis8-. |
          e4-. cis'4( d,4) b'4( | % measure 11
          a4-.) a8( gis8) a8( b a g) |
          \mark\default fis4-. fis8-. eis8-. fis4-. fis8-. eis8-. |
          fis4-. e!4-. d4-. fis8-. eis8-. |
          fis4-. fis8-. eis8-. fis4-. fis8-. eis8-. |
          fis4-. b4-. a4-. a8-. fis-. | % measure 16
          gis4-. fis'4-. e2-> |
          fis,4-. e'4-. d2-> |
          c4.( b8) a8( g! fis e) |
          %% d4-. d'4-. d4-. d,8-.  cis?8-. |  %% alternative way to demonstrate c-sharp!
          d4-. d'4-. d4-. d,8-.  cis8-.^\uparrow |
          \mark\default d4-. d8-. cis8-.^\uparrow d4-. d8-. cis8-. | % measure 21
          d4-. g4-. b,4-. d8-. cis8-. |
          d4-. d8-. cis8-. d4-. d8-. cis8-. |
          d4-. fis4-. a,4-. a'4-. |
          a2->( g4-.) b4-. |
          b2->( a4-.) d4-. |
          cis4-. cis8( b8 a4-.) g4-. | % measure 27
          g4-. b8( a8 g4-.) fis4-. | 
          \mark\default a2->( g4-.) b4-. | 
          b2->( a4-.) d4-. |
          cis4-.\< cis8( ais b4-.) d4-. |
          cis4-. cis8( ais b4-.) d4-. |
          fis4-.\ff fis8-. fis8-. fis4-. fis8-. fis8-. |
          fis4-. fis,8-. fis8-. fis4-. fis8-. fis8-. |
          fis4-.\> fis8-. eis8-. fis4-. fis8-. eis8-. |
          fis4-. fis8-. eis8-. fis4-. fis8-. eis8-. |
          \mark\default fis4-.\p fis8-. eis8-. fis4-. fis8-. eis8-. | % measure 37
          fis4-. e!4-. d4-. fis8-. eis8-. |
          fis4-. fis8-. eis8-. fis4-. fis8-. eis8-. |
          fis4-. b4-. a4-. a8-. fis8-. |
          g4-. b4-. a4-. a8-. e8-. |
          fis4-. b4-. a4-. a8-. fis8-. |
          e4-. cis'4( d,4-.) b'4( |
          a4-.) a8( gis8) a8( b a g) |
          \mark\default fis4-. fis8-. eis8-. fis4-. fis8-. eis8-. | % measure 45
          fis4-. e!4-. d4-. fis8-. eis8-. |
          fis4-. fis8-. eis8-. fis4-. fis8-. eis8-. |
          fis4-. b4-. a4-. a8-. fis8-. |
          gis4-.\< fis'4-. e2-> |
          fis,4-. e'4-. d2-> |
          cis4.( b8) a8( g!8 fis8 e8) |
          d4-.->\f d'4-.-> d4-.-> r4^\markup{\italic "Fine"} \bar"|."
          \break
          \mark\default e2.\f b4-. | % measure 53
          gis4-. e4-. b'4-. gis4-. |
          e'4 e,8-. e8-. e4-. e4-. |
          e4-.\> e4-. e4-. e4-. |
          e8(\p cis'8) cis2 e,4-. |
          e8( cis'8) cis2 d,4-. |
          e8( a8 cis4-.) cis4-. cis4-. |
          cis2. b,8( cis8^\uparrow) | % measure 60
          d8( gis8) b2( a4-.) |
          \tuplet 3/2 { gis8( a8 gis8 } fis4-.) fis4-. fis4-. |
          e8( a8 cis4-.) cis4-. cis4-. |
          \mark\default cis,?2. e4-. | % measure 64
          e8( cis'8) cis2 e,4-. |
          e8( cis'8) cis2 d,4-. |
          e8( cis'8) cis4-. cis4-. cis4-. | 
          cis2. b,8( cis8) |
          d8( gis8) b2( a4-.) |
          \tuplet 3/2 {gis8( a8 gis8} fis4-.) fis4-. fis4-. | % measure 70
          e8( a8 cis4-.) d,8( gis8 b4-.) |
          \mark\default a2.-> gis8(\f a8) |
          b8( d8) gis2-> fis4-. |
          \tuplet 3/2 {e8( fis8 e8)} d4-. d4-. d4-. |
          cis8( e8 a4-.) a4-. a4-. |
          a,2. b,8( cis?8) |
          d8( gis8) b2( a4-.) |
          \tuplet 3/2 {gis8( a8 gis8} fis4-.) fis4-. fis4-. |
          a8( cis8 e2) d8-. cis8-. |
          b8-.\> a8-. gis8-. fis8-. e4-. \! d4-. |
          \mark\default e8(\p cis'8) cis2 e,4-. |
          e8(\p cis'8) cis2 d,4-. |
          e8( a8 cis4-.) cis4-. cis4-. |
          cis2. b,8( cis8) |
          d8( gis8) b2( a4-.) | % measure 85
          \tuplet 3/2 {gis8( a8 gis} fis4-.) fis4-. fis4-. |
          e8( a8 cis4-.) d,8( gis8 b4-.) |
          a2 r2^\markup{\center-align \italic "D.C. al Fine"}
          \bar"||"
        }
      }
    }
    \layout{}
    \midi{}
  }
}
