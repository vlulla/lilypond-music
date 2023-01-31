\version "2.22.1"
\header {
  title="Play That Swing"
  arranger="KATIE O'HARA LaBRIE"
  piece = "Violin II"
  enteredby = "Vijay Lulla (2023.01.30)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/38)
  }
}

voiceconsts = {
  \key bes \major
  \numericTimeSignature
  \compressEmptyMeasures
  \tempo "Swing!" 4 = 120
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score!

\book {
  \score {
    \new Staff {
      \new Voice {
	\relative c'' {
	  \voiceconsts
	  \set Score.markFormatter = #format-mark-box-barnumbers
	  \time 4/4 \clef treble
          g8\mf\downbow g4-. fis8( fis4) fis4-. | g8 g4-. d8( d4) d4-. | g8 g4-. g8( g4) g4-. | g,8 bes4-. a8( a4) a4-. | 
          g'8 g4-. fis8( fis4) fis4-. | g8 g4-. g8( g4) g4-. | bes8 bes4-. a8( a8) bes8( c8 cis8) | d8( c!8 bes8) g8( g4) r4 |
          \barNumberCheck #9 \mark\default
          g4-.\p\downbow g4-. fis4-. fis4-. | g4.-- fis8( fis2) | bes8 bes4-. bes8( bes8) a8( bes8 g8) | g8( e8 f8) fis8( fis4) r8 d8\upbow |
          g4-.\mp\< g4-. fis4-. fis4-. | g8 g4-. g8( g2)\breathe | a4--\downbow bes4-- c4-- d,4-. | d8\f e8( fis8) g8( g4) r4 |
          \barNumberCheck #17 \mark\default
          d'4.--\downbow d8( d8) d8( c8 bes8) | c8( bes8 g4) r2 | bes8( g8 f8 d8) f8( d8 c8 bes8) | ees!8 ees4-. d8( d4) r4 \breathe |
          d'4.--\downbow d8( d8) d8( c8 bes8) c8( bes8 g4) r2 | bes'8( g8 f8 d8) f8( d8 c8 bes8) | \grace cis8 d8( c8 bes8) g8( g4) r4 | 
          \barNumberCheck #25 \mark\default
          c4-.\mp\downbow( c4-.) c2-> | bes8 g8( a8-4) g8( g4) r8 g8 | c4-. c4-. d4 c4 | bes4.-- g8( g2) | c4-.(\mf c4-.) c2-> |
          bes8\< g8( a8) g8( g4) r8 g8 | a8 a4-. a8(-> a8) a8 a8 a8 | d8\f d4-. d8(-> d8) d4.\> | 
          \barNumberCheck #33 \mark\default
          bes8(\p\downbow a8 g8) bes8-. a8( g8) fis8( a8) | g8 d4-. d8->( d8) d8( g8 a8) | bes8( a8 g8) bes8-. a8( g8) fis8( a8) |
          g4\< a4 bes4 d4 | c4\mp r8 b8( b2) | c4 r8 g8( g2) | c4 r8 b8(\< b2) | c8->\f bes?4-> c8(-> c2) \breathe | 
          \barNumberCheck #41 \mark\default
          g8\downbow g4-. fis8( fis4) fis4-. | g8 g4-. d8( d4) d4-. | g8 g4-. g8( g4) g4-. | g,8 bes4-. a8( a4) a4-. |
          g'8 g4-. fis8( fis4) fis4-. | g8 g4-. g8( g4) g4-. | bes8 bes4-. a8( a8) bes8( c8 cis8) | d8( c!8 bes8) g8( g4) r4 |
          R1*2 | \barNumberCheck #51 \mark\default 
          bes,4\mp^\markup{\italic Pizz} r8 c8( c4) r4 | d4 r8 fis8( fis4) r4 | bes,4 r4 r8 c8( c4) | d4 r8 d8( d4) r4 | 
          bes4 r4 r8 c8( c4) | d4 f4 ees4 d4 | g4 r4 r8 g8( g4) | bes4 r8 bes8( bes4) r4 | a4 r8 e!8( e4) r4 | fis4 r4 r2 |
          \barNumberCheck #61 \mark\default
          bes,4\downbow^\markup{Arco} r4 r8 c8( c4) | d4 r8 d8( d4) r4 | g4 r4 f4 r4 | d4 r8 d8( d4) r4 | g4 r4 r8 g8( g4) |
          bes4 r8 bes8( bes2) | a4 r8 e!8( e2) | fis8-> bes4-> a8->( a4) r4 | \barNumberCheck #69 \mark\default r1 |
          g4\f\downbow\< a4 bes4 d4 | d8(\ff c8 bes8 g8) bes8( g8 f8 d8) | g8 g4-. a8->( a8) d8( c8 a8) | bes8 bes4-. a8( a4) a4-. |
          g4 d'4 g4 a4 | bes8( g8 f8 d8) f8( d8 c8 bes8) | <d a>8^\markup{Div} <d a>4-. <d a>8->( <d a>4) r4 \breathe |
          <c fis,>8\downbow <c fis,>4-. <c fis,>8->( <c fis,>4) r4 \breathe | bes'8(\downbow g8 f8 d8) f8( d8 c8 bes8) |
          \grace cis8( \tuplet 3/2 {d4)-> c4-> bes4-> } g8-> r8 r8 <f d'>8->( | <f d'>1:32)\fermata 
          \bar "|."
	}
      }
    }
  }
}

