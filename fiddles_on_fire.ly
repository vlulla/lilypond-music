\version "2.18.2"
\header{
  title = "Fiddles on Fire"
  piece = "Violin I"
  arranger = "Mark Williams"
  enteredby= "Vijay Lulla (2018.05.09)"
}

\include "utils.ly"  % For uparrow/downarrow

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/10)
  }
}


voiceconsts = {
  \key d \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Allegro"
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
            \set Score.markFormatter = #format-mark-box-barnumbers
          \time 4/4 \clef treble
          d8\downbow\f d8 d8 d8 e8 e8 e8 e8 | g8 g8 g8 g8 b8 b8 b8 b8 | <a e'>4 <a e'>8 <a e'>8 <a d,>8 <a d,>8 <a d,>4 |
          <a e'>4 r4 r2 | \mark\default
          \repeat volta 2 {
            a8\downbow b8 a8 b8 c8^\downarrow b8 c8 b8 | a4-. d,4-. fis4-.^\uparrow d4-. |
            a'8 b8 a8 b8 c8^\downarrow b8 c8 b8 | <a e'>4 <a e'>8 <a e'>8 <a e'>4 <a e'>8 <a e'>8 |
            a8 b8 a8 b8 c8^\downarrow b8 c8 b8 | a4-. d,4-. fis4-.^\uparrow d4-. |\barNumberCheck #11
            fis4 fis8 fis8 e8 e8 e4 | d2 d2 }\mark\default
          \repeat volta 2{
            r2 r4 b'8\upbow( c8^\downarrow) | d8 c8 d8 c8 b4-. g4-. |
            r2 r4 fis8^\uparrow\upbow( b8) | a8 g8 fis8 e8 fis2 | r2 r4 cis'8^\uparrow\upbow( d8) |
            e8 d8 e8 d8 cis4-. a4-. | d4 d8 d8 b8 b8 g4 | a2 a2 |
          } \mark\default\barNumberCheck #21
          a8\downbow b8 a8 b8 c8^\downarrow b8 c8 b8 | a4-. d,4-. fis4-.^\uparrow d4-. |
          a'8 b8 a8 b8 c8^\downarrow b8 c8 b8 | <a e'>4 <a e'>8 <a e'>8 <a e'>4 <a e'>8 <a e'>8 |
          a8 b8 a8 b8 c8^\downarrow b8 c8 b8 | a4-. d,4-. fis4-.^\uparrow d4-. |
          fis4 fis8 fis8 e8 e8 e4 | d2 d2 | \mark\default\barNumberCheck #29
          \repeat volta 2 {
            d8 d8 fis8 fis8 d8 d8 fis8 fis8 | d8 d8 g8 g8 d8 d8 g8 g8 |
            d8 d8 fis8 fis8 d8 d8 fis8 fis8 | e8 e8 g8 g8 e8 e8 g8 g8 |
            d8 d8 fis8 fis8 d8 d8 fis8 fis8 | d8 d8 g8 g8 d8 d8 g8 g8 |
            d8 d8 fis8 fis8 c8^\downarrow c8 e8 e8 | d8 d8 fis8 fis8 d4-- r4\breathe
          }\mark\default\barNumberCheck #37
          <d g,>4 <d g,>8 <d g,>8 <d g,>4 b'8 c8^\downarrow |
          d8 c8 d8 c8 b4-. g4-. | <a d,>4 <a d,>8 <a d,>8 <a d,>4 fis8^\uparrow( g8) |
          a8\upbow g8 fis8 e8 fis2 | <a e'>4\downbow <a e'>8 <a e'>8 <a e'>4 cis?8^\uparrow d8 |
          e8 d8 e8 d8 cis!4-. a4-. | d4 d8 d8 b8 b8 g4 | a2 a2 | \mark\default\barNumberCheck #45
          a8\downbow b8 a8 b8 c8^\downarrow b8 c8 b8 | a4-. d,4-. fis4-.^\uparrow d4-. |
          a'8 b8 a8 b8 c8^\downarrow b8 c8 b8 | <a e'>4 <a e'>8 <a e'>8 <a e'>4 <a e'>8 <a e'>8 |
          a8 b8 a8 b8 c8^\downarrow b8 c8 b8 | a4-. d,4-. fis4-. d4-. |
          fis4\downbow\p fis8 fis8 e8 e8 e4 | r1 | <a e'>4\downbow\f <a e'>8 <a e'>8 r2 |
          r4 a4->\upbow d4->\downbow r4
          \bar"|."
        }
      }
    }
  }
}

