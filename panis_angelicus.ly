\version "2.18.2"
\header{
  title = "Panis Angelicus"
  piece = "Violin I"
  arranger = "C. FRANCK"
  enteredby= "Vijay Lulla (2017.08.25)"
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
  \key a \major
  %% \numericTimeSignature
  \compressFullBarRests
  \tempo "Poco lento"
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          \time 4/4 \clef treble
          cis1\p^"Tutti"~ | cis2 e2~ | e4 d8 cis8 b4 cis4 | cis2 b2 |
          cis4 d4 e4  cis4 | b4 gis4 a4 b4 | cis4 d4 e4 fis4 | gis4 a4 b2~ |
          b2 a2~ | a2 fis2 | a1_\markup{\italic "poco rall."} | gis2( a4) r4 \bar"||"
          \barNumberCheck 13
          cis2^\markup{\column{"Solo" \italic "a tempo"}}\mp cis4 b4 |
          b8. a16 a4 r2 | cis2 cis4 b4 | b8. a16 a4 r2 | fis'2 fis4 e4 |
          d4. d8 d4 cis4 | b4. b8 b4 a4 | e'1 | cis2 cis4 b4 | b8. a16 a4 r2 |
          e'2 e4 dis4 | dis8. cis16 cis4 r2 | cis2 b4 r4 | 
          e2_\markup{\italic "cresc."} b4 r4 | fis'4\f a,8 b8 cis4. a8 |
          gis2 r2 | cis2\p gis4 r4 |
          \barNumberCheck 30
          d'4._\markup{\italic "cresc."} b8 a4 r4 | dis4\f e8 fis8 cis4. dis8 |
          e2 r2 | b1~\mp^"Tutti" | b2 a4 gis4 | a1 | 
          gis4 a4_\markup{\italic "dim."} ais4 b4 \bar"||"
          \barNumberCheck 37
          cis2\p^"Solo" cis4 b4 | b8. a16 a4 r2 | cis2 cis4 b4 | b8. a16 a4 r2 |
          fis'2\f fis4 e4 | d4. d8 d4 cis4 | b4. b8 b4_\markup{\italic"dim."} a4 |
          e'2 r2 | e2 d4 cis4 | cis8._\markup{\italic "cresc."} b16 b4 r2 |
          e2 fis4 d4 | cis8. b16 b4 r2 | e2\f~ e8 cis8 b8 a8 | d4. b8 cis4 cis4 ~ |
          \barNumberCheck 51
          cis4 b8_\markup{\italic"dim."} a8 b4. cis8 | a2 r2 | fis'2\ff~ fis8 d8 cis8 b8 |
          e4. cis8 d4 d4~ | d4 b8_\markup{\italic "dim."} d8 cis4 b8 a8 |
          b2~_\markup{\italic "rall."} b4. a8 | a2_\markup{\italic "a tempo"} r2 |
          R1*4/4*4 \bar"|."

        }
      }
    }
  }
}
