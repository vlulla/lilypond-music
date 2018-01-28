\version "2.18.2"
\header{
  title = "The Way You Look Tonight"
  subtitle = \markup{from \italic Swingtime}
  piece = "Dorothy Fields"
  composer = "Jerome Kern"
  arranger = "J. Elliott"
  enteredby= "Vijay Lulla (2018.01.27)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/12)
  }
}

voiceconsts = {
  \key d \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Andantino" 4 = 60
  \set Score.markFormatter = #format-mark-box-alphabet
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          \time 2/2 \clef treble
          r4 f4\mf\upbow f2 | r4 d4( e!2) | r4 c4( d2)^"rall." |
          r4 bes4(\> cis2) \bar "||"
          \mark\default a'1\p^"a tempo" | d,1 | e4 fis4 g4 fis4 |
          e1 | fis4 g4 a4 g4 | fis1 | g4 a4 b4 a4\< | g4^"rall." a4 b4 cis4 \! |
          d1 | d,1 | e4 fis4 a4 g4 | fis2 e2 | d1( | d2) r2^"a tempo" |
          R1*2/2*2 | \mark\default r4 fis'4( e4 d4) | r4 e4 d4 cis4 |
          r4 d4( r4 d4) | r4 d4( cis4 b4) | r4 a4( r4 a4) | r4 b,4( r4 b4) |
          r4 b4( r4 b4)\< | r4^"rall" g'4( r4 g4)\! | \barNumberCheck #29
          <fis g>4 <fis g>4 r4 <fis g>4\downbow | r4 fis4( r4 fis4) |
          r4 d4( r4 d4) | r4 d4( r4 cis4) | r4 <fis g>4(^"a tempo" <fis g>2) |
          r4 g4( a2) | r4 d,4( e2) | r4 b4( cis4 e4 |\mark\default
          a4) <c f>4(\downbow r4 <c f>4) | r4 e4( r4 e4) | r4 d4( r4 d4) |
          r4 e4( r4 e4) | r4 c4 r4 c4(\downbow | c4) c4 r4 d4\upbow |
          r4 d4\< r4 d4 | r4 e4 r4 e4 | c'2\mf c2 | c2 c2 | c4 d4 bes4 a4( | a1) |
          g4( a2) f4 | \barNumberCheck #50
          e2 f2 | a1( a2.) r4 | \mark\default a1\downbow\mp | d,1 | e4 fis4 g4 fis4 |
          e1 | fis4 g4 a4 g4 | fis1 | g4 a4 b4 a4 | g4^"rall." a4\< b4 cis4\! |
          d1 | d,1 | e4 fis4 a4 g4 | fis2\> e2 \! | \mark\default d4 a'4(\downbow b2) |
          r4 fis4( e2) | r4 cis4( b2) | r4 fis4( e2) | d4 cis4 fis4 e4 |
          <d b>2 cis2 | a4^"rall." a'4( a'4) fis4( | d'4)\pp r4 r2 \barNumberCheck #73

          \bar "|."

        }
      }
    }
  }
}

