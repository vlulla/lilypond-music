\version "2.18.2"
\include "utils.ly"

\header {
  title = "3. MOZART Symphony No. 40"
  enteredby = "Vijay Lulla (2017.06.06)"
}

\layout {
  \context {
    \Score
      %% \override BarNumber.break-visibility = ##(#f #t #t)
      \override BarNumber.break-visibility = #end-of-line-invisible
      \override BarNumber.stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
      \override BarNumber.font-size = #2 %% Increase barnumber font size by 2
      \override BarNumber.self-alignment-X = #CENTER
      \override MultiMeasureRest.expand-limit = #1
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
  }
}

voiceconsts = {
  \key g \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Allegro molto" 4 = 100
}

%% showLastLength = R1*8 %% show only last few measures. %% comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          \time 2/2
          \clef treble
          \set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)
          r2 r4 c'8\p(\upbow b8) |
          b4 c8( b8) b4 c8( b8) |
          b4( g'4) r4 g8(\upbow fis8) |
          e4 e8( d8) c4 c8( b8) |
          a4 a4 r4 b8(\upbow a8) | % measure 5
          a4 b8( a8) a4 b8( a8) |
          a4( fis'4) r4 fis8(\upbow e8) |
          dis4 dis8( c8) b4 b8( a8) |
          g4 g4 r4 g'8(\upbow fis8) |
          fis4( a4 dis,4 fis4) | % measure 10
          e4( b4) r4 g'8(\upbow fis8) |
          fis4( a4 dis,4 fis4) |
          e4( g4) fis8( e8 d!8 c8) |
          b1 |
          ais1( | % measure 15
          b4) r4 ais'2(\f |
          b4) r4 ais2( |
          b4) r4 ais2( |
          b4) fis4-. b4-. ais4-. |
          b4-. r4 r4 c,8(\p\upbow b8) | % measure 20
          b4 c8( b8) b4 c8( b8) |
          b4( g'4) r4 g8(\upbow fis8) |
          e4 e8( d8) c4 c8( b8) |
          a4 a4 r4 d8(\upbow c8) |
          c4 d8( c8) c4 d8( c8) | % measure 25
          c4( a'4) r4 a8(\upbow g8) |
          fis4 fis8( e8) d4 d8( c8) |
          g'1\f |
          d2. r8 d8\upbow |
          c4-. e4-. g4-. r8 g,8\upbow | % measure 30
          b4-. d4-. g4-. r8 b,8\upbow |
          a4-. c4-. e4-. a,4-. |
          g4-. b4-. d4-. r8 d8\upbow |
          cis8 d8 e8 fis8 g8 a8 bes8 d,8 |
          cis8 d8 e8 fis8 g8 a8 bes8 d,8 | % measure 35
          cis8 d8 e8 fis8 g8 a8 bes8 d,8 |
          cis8 d8 e8 fis8 g8 a8 bes8 cis,!8 |
          d2 a'4 fis4 |
          bes2 cis,4 e4 |
          d2 a'8 fis8 a8 fis8 | % measure 40
          bes8 g8 bes8 g8 cis,8 e8 cis8 e8 |
          d4\downbow r4 d,4\upbow r4 |
          R1 
          d'2.(\p cis4) |
          c!2. d16( c16 b16 a16 | % measure 45
          g4) g4-. g4( a4) |
          b4.( c8) a4 r4 |
          e'2.( dis4) |
          d!4( cis4 c4 b4) |
          a4( c2) fis,4( | % measure 50
          g4) r4 r2 |
          d'2.(\p cis4) |
          c!2. d16( c16 b16 a16 |
          g4) g4-. g4( a4) |
          b4.( c8) a4 r4 | % measure 55
          e'2.( dis4) |
          d4( cis4 c4 b4 |
          bes4) e2( f4 |
          bes,4) e2( f4 |
          bes,4) e2( f4 | % measure 60
          bes,4) e2( f4) |
          g8\< g8 g8 g8 g8 g8 g8 g8 |
          ais8 ais8 ais8 ais8 ais8 ais8 ais8 ais8 |
          b4\f b2 b4 | 
          fis2..(\trill e16 fis16) | % measure 65
          g4 b,,8-> b8 b8 b8 c8 c8 |
          cis8 cis8 d8 d8 dis8 dis8 e8 e8 |
          f4-> r8. fis16\upbow e4->\downbow r8. e16\upbow |
          a4->\downbow r8. a16\upbow b4->\downbow r8. b16\upbow |
          e2( e8) d8-.\p c8-. b8-. | % measure 70
          a8-. g8-. fis8-. e8-. d8-. c8-. b8-. a8-. |
          g4 r4 g''2~( |
          g2 fis4) r4 |
          r2 g2~( |
          g2 fis4) r4 | % measure 75
          r2 r4 c'8(\f \upbow b8)|
          b4 c8( b8) b4 c8( b8) |
          b2 c4.( a8) |
          g4.( b8) a4.( fis8) |
          g4 r4 r2 | % measure 80
          r2 c2~(\p |
          c2 b4) r4 |
          r2 c,2~( |
          c2 b4) c'8(\upbow\f b8) |
          b4 c8( b8) b4 c8( b8) | % measure 85
          b2 c4.( a8) |
          g4.( b8) a4.( fis8) |
          g4 d4 e4 fis4 |
          g4 e4 d4 fis,4 |
          g4\downbow r4 dis'4\upbow r4 | % measure 90
          r1 |
          %% \pageBreak %% makes it 4 pages!!
          r2 r4 c8(\p\upbow b8) |
          b4 c8( b8) b4 c8( b8) |
          b4( g'4) r4 g8(\upbow fis8) |
          e4 e8( d8) c4 c8( b8) | % measure 95
          a4 a4 r4 b8(\upbow a8) |
          a4 b8( a8) a4 b8( a8) |
          a4( fis'4) r4 fis8(\upbow e8) |
          dis4 dis8( c8) b4 b8( a8) |
          g4 g4 r4 g'8(\upbow fis8) | % measure 100
          fis4( a4 dis,4 fis4) |
          e4( b4) r4 g'8(\upbow fis8) |
          fis4( a4 dis,4 fis4) |
          e4( g4) fis8( e8 d!8 c8) |
          b1 | % measure 105
          ais1( |
          b4) r4 ais'2(\f |
          b4) r4 ais2( |
          b4) r4 ais2( |
          b4) ais4-. b4-. ais4-. | % measure 110
          b4-. r4 r4 c,8(\p\upbow b8) |
          b4 c8( b8) b4 c8( b8) |
          b4( g'4) r4 g8(\upbow fis8) |
          e4 e8( d8) c4 c8( b8) |
          a4 a4 r4 d8(\upbow c8) | % measure 115
          c4 c8( c8) c4 d8( c8) |
          c4( a'4) r4 a8(\upbow g8) |
          fis4 fis8( e8) d4 d8( c8) |
          g'1\f |
          d2. r8 d8\upbow | % measure 120
          c4-. e4-. g4-. r8 g,8\upbow |
          b4-. d4-. g4-. r8 b,8\upbow |
          a4-. c4-. e4-. a,4-. |
          g4-. b4-. d4-. r8 d8\upbow |
          cis8 d8 e8 fis8 g8 a8 bes8 d,8 | % measure 125
          cis8 d8 e8 fis8 g8 a8 bes8 d,8 |
          cis8 d8 e8 fis8 g8 a8 bes8 d,8 |
          cis8 d8 e8 fis8 g8 a8 bes8 cis,!8 |
          d2 a'4 fis4 |
          bes2 cis,4 e4 | % measure 130
          d2 a'8 fis8 a8 fis8 |
          bes8 g8 bes8 g8 cis,8 e8 cis8 e8 |
          d4 r4 r4 f8(\f\upbow e8) |
          e4 f8( e8) e4 f8( e8) |
          e2 c'4.( a8) | % measure 135
          g4.( e8) b'4.( dis,8) |
          e8 b8 g'8 fis8 e8 d!8 c8 b8 |
          a8 g8 fis8 e8 dis8 c8 b8 a8 |
          g4 b'4 c4 dis,4 |
          e4 r4 r2 | % measure 140
          R1 |
          r2 r4 f'8(\p\upbow e8) |
          e4 f8( e8) e4 f8( e8) |
          e4( a2 g4~ |
          g4) fis!2( e4) | % measure 145
          dis2. c8( b8)  |
          b4 c8( b8) b4 c8( b8) |
          e4\f e8 e8 dis4 dis8 dis8 |
          e4 e8 e8 dis4 dis8 dis8 |
          e8 e8 g8 g8 dis8 dis8 fis8 fis8 | % measure 150
          e8 e8 g8 g8 e8 e8 g8 g8 |
          e4 r4 r2 |
          e4\downbow r4 g4\upbow r4 |
          e,2\downbow r2 \bar"|."
        }
      }
    }
    \layout{}
    \midi{}
  }
}
