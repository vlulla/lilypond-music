\version "2.22.1"
\header {
  title="Brandenburg Concerto, No. 3"
  piece="First Movement - Abridged"
  arranger = "J. S. Bach (1685--1750)"
  enteredby = "Vijay Lulla (2022.09.15)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/10)
  }
}

voiceconsts = {
  \key g \major
  \numericTimeSignature
  \compressEmptyMeasures
  \tempo "Moderato"
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score!

\book {
  \score {
    \new Staff {
      \new Voice {
	\relative c' {
	  \voiceconsts
	  \set Score.markFormatter = #format-mark-circle-barnumbers
	  \time 2/2 \clef treble
	  \partial 4 g'8\downbow\mf fis8^\markup{\italic "somewhat detached"} | g4 d8-4 c8 d4 g8 fis8 | g4 b,8 a8 b4 g'8 fis8 | g4 g,8 a8 b4-.\upbow( cis4-.\upbow) |
          d8 cis8 d8 e8 d8 fis8 d8 g8 | d8^4 cis8 d8 e8 d8 a'8 d,8 b'8 | d,8 cis8 d8 e8 d8-0 c'!8 d,8 d'8 | b4 a8 g8 a4^4 g8 fis8 |
          \mark\default \barNumberCheck #8
          g4\downbow fis8( e8) d8 g8 d8 g8 | e4 d8^4( c8) b8 g'8 b,8 g'8 | c,4 b8( a8) g8 g'8 a,8 g'8 | b,8 g'8 cis,8-4 g'8 d8 fis8 d8 g8 |
          d8 a'8 d,8 b'8 d,8 c'!8 d,8 d'8 | b4 a8 g8 d4-. fis4-. | g4 fis8 e8 d8 c8 b8 a8 | b4 a8 g8 d'4-.\upbow( d4-.\upbow) |
          g,2 r4 d''8\p\downbow c!8 | 
          \mark\default \barNumberCheck #17
          d4 b8 a8\< b4 g8 fis8 | g4 d8^4 c!8 d4 r4\! | r4 d'4\upbow\mf g8 b8 a8 g8 | fis4 d8 cis8 d4-.( e4-.) | fis8 a8 d,8 e8 fis8 g8 a8 g8 |
          fis8 a8 d,8 e8 fis8 g8 a8 g8 | fis4 e8(^4 d8) e4 d8( cis8) | 
          \mark\default \barNumberCheck #24
          d4\downbow cis8( b8) a8 d8 a8 d8 | b4 a8^4( g8) fis8 d'8 fis,8 d'8 | g,4 fis8( e8) d8^0 d'8 e,8 d'8 | fis,8 d'8 gis,8^4 d'8 a8 cis8 a8 d8 |
          a8 e'8 a,8 fis'8 a,8 g'!8 a,8 a'8 | fis4 e8^4 d8 a4-.( cis4-.) | d2 r4 d8\downbow\p c!8 |
          \mark\default \barNumberCheck #31
          d4 b8 a8 b4 g8 fis8 | g4 d8^4 c8 d4 r4 | r4 d4\mf\upbow g8 b8 a8 g8 | fis8 a8^4 d,8 e8 fis8 g8 a8 g8 | 
          fis4 d'4 r4 cis4\upbow | d4 a8 a8 d,4 d'8\f cis8 | d4 a8^4 g8 a4 d8 cis8 | d4 fis,8 e8 fis4 d'8 cis8 | d4 d,8 e8 fis4-. gis4-. |
          a4^4 a8\p gis8 a4 a4 | g!8 b8 e,8 fis8\< g8 a8 b8 cis8 | d2\! r4 d4\f\upbow
          \mark\default \barNumberCheck #43
          fis4 fis4 fis4 e8 fis8 | e4^4 e4 e4 d8 e8 | d4 b4 e,4 e4 | fis2 r4 d'8\p\downbow cis8 | d4 r4 r4 d8\downbow cis8 |
          d4 a4--( a4-- b4--) | a4--( a4--) a4--( b4--) | d4\f d,4-> d4-> fis4->
          \mark\default \barNumberCheck #51
          g8\downbow fis8 g8 a8-4 g8 b8 g8 c8 | g8 fis8 g8 a8^0 g8 d'8 g,8 e'8^4 | b8 a8 b8 c8 b8 d,8 c'8 e,8 | 
          b'8 a8 b8 c8 b8 f8 c'8 e,8 | f8 e8 f8 g8 f8 c'8 d,8-0 b'8 | c8 g8 a8 b8 c4 r4 | 
          \mark\default \barNumberCheck #57
          r4 a'8\downbow\f b8 a4 a4 | a4 g8 a8 g4 g4 | g4 f8 e8 f8 e8 d8 c8 | b4 b4 b8 a8 b8 c8 | d4 d4 b4 f4 | 
          e8 d8 e8 f8 e8 g8 f8 a8-4 | g8 f8 g8 a8 g8 e'8-4 d8 f8 | e8 d8 e8 f8 e8 f8 e8 d8 | c8 a8-4 g8 f8 e4 d4 | 
          \mark\default \barNumberCheck #66
          b8 a8 b8 c8 b8 d8-4 c8 e8 | d8 c8 d8 e8 g8 b8 a8 c8 | b8 a8 b8 c8 b8 c8 b8 a8 | g8 a8-4 g8 fis8 g4 e4 |
          d2-4 r4 cis4 | d4 r4 r4 e4 | fis4 r4 r4 fis4\upbow | d4 d4 fis4 d4 | g4 d'4 b4 g4 | 
          \mark\default \barNumberCheck #75
          d4\downbow g8\mf fis8 g4 b8 a8 | b4 b8 a8 b4 d8 c8 | d4 b8 a8 b4 g8 fis8 | g4 d8-4 c8 d4 g8\f fis8 | g4 g8 a8 b4-.( cis4-.) | 
          a8 g8 a8 b8 a8 c8 b8 d8 | a8 g8 a8 b8 a8 fis'8 b,8 g'8 | a,8 g8 a8 b8 a8 a'8 fis8 d8 | b'4 a8 g8 a4 g8 fis8 
          \mark\default \barNumberCheck #84
          g4\downbow fis8( e8) d8 g8 d8 g8 | e4 d8( c8) b8 g'8 b,8 g'8 | c,4 b8( a8) g4-. a4-. | b4-. cis4-. d4-. d,8( e8) |
          fis4 g4 a4 d4 | d4 c!8 b8 a4-. d4-. | g4 fis8 e8 d8 c8 b8 a8 | b4 a8 g8 d'4-.( d,4-.) | g2 r4 g8\mf\downbow fis8 |
          \mark\default \barNumberCheck #93
          g4 d8-4 c8 d4 g8 fis8 | g4 b,8 a8 b4 g'8 fis8 | g4 g,8 a8 b4-.( cis4-.) | d8-4 cis8 d8 e8 d8 fis8 d8 g8 | 
          d8-4 cis8 d8 e8 d8 a'8 d,8 b'8 | d,8 cis8 d8 e8 d8 c'!8 d,8 d'8 | b4 a8 g8 a4-4 g8 fis8 | 
          \mark\default \barNumberCheck #100
          g4 fis8( e8) d8 g8 d8 g8 | e4 d8-4( c8) b8 g'8 b,8 g'8 | c,!4 b8( a8) b8 g'8 a,8 g'8 | b,8 g'8 cis,8-4 g'8 d8 fis8 d8 g8 |
          d8 a'8 d,8 b'8 d,8 c'!8 d,8 d'8 | b4 a8 g8 d4-.( fis4-.)
          \mark\default \barNumberCheck #106
          g4 r4 r2 | r4 b,8\mf\downbow a8 b4 d8-4 c8 | d4 g8 fis8 g4 b8 a8 | b4 d8 c8 d4 g8 fis8 | g4 fis8 e8 d8 c8 b8 a8 |
          b4\ff a8 g8 fis8 e8 d8 c8 | b8 g'8 fis8 e8 d8 c8 b8 a8 | b4_\markup{\italic "rit."} a8 g8 d'4-.\upbow d4-.\upbow | g,2.\fermata r4 
          \bar "|."
	}
      }
    }
  }
}

