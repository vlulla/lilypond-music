\version "2.18.2"
\header{
  title = "Waltz from Serenade for Strings"
  arranger = "Tchaikovsky"
  enteredby= "Vijay Lulla (2019.09.02)"
  copyright = \markup { "Sheet Music from 8notes.com Copyright "
     \char ##x00A9 " 2019 Red Balloon Technology Ltd" }
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
  }
}

voiceconsts = {
  \key g \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Tempo di Valse" 2. = 60
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          %% \set Score.markFormatter = #format-mark-circle-numbers
          \time 3/4 \clef treble
          r4 b4(\p\upbow c4) | d4( e4) fis4 | g2( a4) | b8 r8 d,2 |
          r4 g4( a4) | b4( a4) b4 | d8 r8 g,4( b4) | a2. | \barNumberCheck #9
          r4 a4( b4) | c4( b4) c4 | e8 r8 a,4( c4 | b8) r8 d2( | d4) cis4( b4) |
          a4( gis4) a4 | b8 r8 cis,4( b'4 | a8) r8 d2( | d8) r8 cis4( b4) |
          a4(\<\grace { b16 a16 } gis4 a4) | g'2(\f^"rit." cis,4) |\barNumberCheck #20
          d2.(^"a tempo" | d8) cis8-. d8-. e8-. fis8-. g8-. | a2->( fis4) |
          a2->( fis4) | \tuplet 3/2 4 { b8-> a8 g8 } a2( | a4) fis4.( g8 |
          a2) a4( | a4) fis4.( g8 | \barNumberCheck #28 a2) a4( | a4) fis4.( g8 |
          a2) a4( a4) a2 | a2 a4( | a4) a4.\fermata g8(\p | fis4) g4( a4) |
          g4(\grace { g16 a16 } fis4 e4) | \barNumberCheck #36
          d8 r8 g2( | g4) fis4( d4 | c8) r8 fis2( | fis4) e4( c4 |
          b8-.) c8-.\< d8-. e8-. d8-. e8-. | fis8-. g8-. a4.\fermata\f\> g8 |
          fis4(\p g4 a4) | \barNumberCheck #43 g4( fis4 e4) | d8 r8 g2( |
          g4)\< fis4( e4 | d8)\f r8 fis2( | fis4) cis4( e4 | d8) r8 fis2( |
          fis4) cis4( e4) | d8(\mf cis8 b8 fis8 d8 fis8) |
          b8(\< fis8 b8 cis8 d8 b8) | d8( fis8 b8 fis8 b8 cis8) |
          d8\fermata\f r8 b,,4( c!4) | d4( e4)\< fis4 | g2( a4) | \barNumberCheck #56
          b8 r8 d,2 | r4 g4( a4) | b4(\mf a4) b4 | d8 r8 g,4( b4) |
          a2. | r4 a4( b4) | c4( b4) c4 | e8 r8 a,4( c4 | \barNumberCheck #64
          b8) r8 d2( | d4) b4( cis4) | d4( cis4) d4 | fis8 r8 cis4( e4 |
          d8) r8 fis2( | fis4) d4( e4) | fis4( e4) fis4 | \barNumberCheck #71
          a8 r8 c,!4( d4 | b8) r8 g'2( | g4) g,4( a4) | b4( a4 b4) |
          e4( d4 fis,4) | g4 r4 r4 | r4 a,4\f(\upbow b4) | c4( d4 e4 |
          \barNumberCheck #79
          fis4) g4( a4 | b4 c4 d4 | e4) fis,4( g4 | a4 b4 c4) | d4( e4 fis4) |
          g2.\> | r4 g,8(\p\upbow fis8 g8 b8) | e2.( | e4) fis8( e8 fis8 a8) |
          \barNumberCheck #88
          g4 r4 r4 | r4 g,8(\pp fis8 g8 b8) | e2.( | e4) fis8( e8 fis8 a8 |
          g4) g8( fis8 g8 b8 | e,4) e,8( dis8 e8 g8 | \barNumberCheck #94
          b4) g'8( fis8 g8 b8 | e,4) e,8( dis8 e8 g8 | d'!8) cis,8( d!8 g8 b8) fis8( |
          g8 b8 d8) ais8( b8 d8 | \barNumberCheck #98 g8) cis,8( d8 g8 b8) fis8(^"III" |
          g8 b8 d8) cis,8(^"I" d8 fis8 | g4) r4 r4 | b,4 r4 r4 | g4\downbow r4
          r4\fermata \bar"|."
        }
      }
    }
  }
}

