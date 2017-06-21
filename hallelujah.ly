\version "2.18.2"
\header {
  title = "HALLELUJAH"
  subtitle = \markup{\teeny "Featured in the DreamWorks Motion Picture SHREK"}
  composer = \markup{ \column{ \right-align "Words and Music by"
                            \right-align "LEONARD COHEN"
                            \right-align \italic "Arranged by ROBERT LONGFIELD" }}
  piece = "VIOLIN 1"
  enteredby = "Vijay Lulla (2017.06.21)"
}

\layout {
  \context {
    \Score
      %% \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
      \override BarNumber.stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
  }
}

voiceconsts = {
  \key g \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Moderate?" 4 = 70  %% Ask Shannon about the timing
}

myDisplayBarNumber = {
  % Allow bar numbers to be displayed not only at beginning of lines:
  %   \once\override Score.BarNumber.break-visibility = ##(#f #t #t)
  \once\override Score.BarNumber.break-visibility = ##(#f #t #f)

  % Allow bar number 1 to be displayed
  \once\set Score.barNumberVisibility = #all-bar-numbers-visible
}
date = #(strftime "%Y-%m-%d" (localtime (current-time)))

%% showLastLength = R1*8 %% show only last few measures %% comment to typeset whole score

\book {
  %% \paper {
  %%   oddFooterMarkup = \markup{\small Engraved on: \date}
  %%   evenFooterMarkup = \oddFooterMarkup
  %% }
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          \time 6/8
          \clef treble

          R1*6/8*3 |
          r4. r4 d8\upbow\mf  | \myDisplayBarNumber

          d'4--\downbow^\markup{\italic "(loure' bowing)"}~ d8-- d4--\upbow~ d8-- |
          e8 e8 e8~ e4 b8\upbow |
          d4--\downbow~ d8-- d4--~\upbow d8-- |
          e8 e8 e8~ e4 d8\upbow |
          e4--\downbow~ e8 e4--\upbow~ e8 |
          e4( d8) d4( c8) |
          d2.~ |
          d4 r8 r4 d,8\upbow | 
          \barNumberCheck #13 d'4--\downbow~ d8-- d4--\upbow d8-- | 
          \myDisplayBarNumber e4\downbow~ e8-- fis4(_\markup{\italic "cresc."} d8) |
          g4--\downbow~ g8-- g4( e8) |
          g4( a8) a4( g8) |
          a4.--\downbow~ a4 a8\upbow |
          b4--\downbow~\< b8-- b4( a8) |
          a8(\f\> g8) g8~ g4.~ |
          g4 r8 b,4\downbow\mp d8_\markup{\italic "legato"} | 
          \barNumberCheck #21 \myDisplayBarNumber e4. e4.~ |
          e4. e4 d8 |
          b4. b4.~ |
          b4. b4\downbow d8 |
          e4. e4.~ |
          e4. e4 d8 |
          b4.(~ b8 c8 b8) |
          a4.(~ a4 g8) | 
          \barNumberCheck #29 \myDisplayBarNumber g2.~\downbow | 
          g4 r8 e'4\upbow(\mp d8) |
          b2.~ | b4 r8 g4(\upbow b8) | c2. | a2. | b8( g8 b8) c4. |
          d4( e8) fis8( e8 d8) |
          \barNumberCheck #37 \myDisplayBarNumber g4 r8 r4. |
          g4.(\upbow fis4._\markup{\italic "cresc."}) | e2.~ | e4. fis4( g8) | fis4. a,8(\upbow d8 fis8) |
          e4(\< fis8) g4( a8) | b2.~\f | b4 r8 r4. |
          \barNumberCheck #45  r8 c,,8\upbow e8 g8 c8 e8 |
          %% \myDisplayBarNumber 
          g2.:32~ | g8 e,8\upbow g8 b8 e8 g8 | b2.:32~ | b8 c,,8\upbow e8 g8 c8 e8 |
          g8 e8 c8 g8 c8 e8 | d8\< b8 d8 e8 c8 e8 | a4 r8 cis,4\downbow e8 \bar "||"
          \key a \major
          \barNumberCheck #53 \myDisplayBarNumber
          \repeat volta 2 { \bar".|:" fis4.\ff fis4.~ | fis4. fis4 e8 | cis!4. cis4.~ |
             cis4. cis4\downbow e8 | fis4. fis4.~ | fis4. fis4 e8 | }
          \alternative {
            { cis4.~( cis8 d8 cis8) | b4. cis4\downbow e8 | } % alternative 1
            { \barNumberCheck #61 cis4.~( cis8 d8 cis8) | } % alternative 2
          }
          b4.~( b4 a8) | a'2.->:32\sfp_\markup{\italic "rit. poco a poco"}~ | 
          a2.:32_\markup{\italic "cresc."}~ | a2.:32~ | a2.:32~\< |
          a2.:32~\ff | a2.:32~ | a2.:32~ | a2.:32~ |
          \bar "|."
        }
      }
    }
    \layout{}
    \midi{}
  }
}
