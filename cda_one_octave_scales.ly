\version "2.18.2"
\header{
  title = "CDH HS -- One Octave Scales and Arpeggios"
  enteredby= "Vijay Lulla (2018.06.01)"
}

\include "utils.ly"

\paper {
  indent = 0
}

\layout {
  \context {
    \Score
      %% \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
  }
}

voiceconsts = {
  \numericTimeSignature
  \compressFullBarRests
  \tempo "C Major"
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          %% \set Staff.explicitKeySignatureVisibility = #all-invisible
          \voiceconsts
          \time 4/4 \clef treble
          \key c \major
          c4-3 d4-0 e4-1 f4-2 | g4-3 a4-0 b4-1 c4-2 | c4-2 b4-1 a4-4 g4-3 |
          f4-2 e4-1 d4-0 c4-3 | %% \break
          c4-3 e4-1 g4-3 c4-2 | c4-2 g4-3  e4-3 c4-3 \bar "|." \break

          \key g \major
          \tempo "G Major"
          g'4-0 a4-1 b4-2 c4-3 | d4-0 e4-1 fis?4-2 g4-3 | g4-3 fis?4-2 e4-1 d4-4 |
          c4-3 b4-2 a4-1 g4-0 | %% \break
          g4-0 b4-2 d4-0_4 g4-3 | g4-3 d4-4 b4-3 g4-0 \bar "|." \break

          \key d \major
          \tempo "D Major"
          d4-0 e4-1 fis?4-2 g4-3 | a4-0_4 b4-1 cis?4-2 d4-3 |
          d4-3 cis?4-2 b4-1 a4-4 | g4-3 fis?4-2 e4-1 d4-0 | %% \break
          d4-0 fis?4-2 a4-0 d4-3 | d4-3 a4-4 fis?4-2 d4-0 \bar "|." \break

          \key a \major
          \tempo "A Major"
          a4-1 b4-2 cis?4-3 d4-0_4 | e4-1 fis?4-2 gis?4-3 a4-4 |
          a4-4 gis?4-3 fis?4-2 e4-1 | d4-4 cis?4-3 b4-2 a4-1 | %% \break
          a4-1 cis?4-3 e4-1 a4-4 | a4-4 e4-1 cis?4-3 a4-1 \bar "|." \break

          \key e \major
          \tempo "E Major"
          e'4-1 fis?4-2 gis?4-3 a4-0_4 | b4-1 cis?4-2 dis?4-3 e4-4 |
          e4-4 dis?4-3 cis?4-2 b4-1 | a4-4 gis?4-3 fis?4-2 e4-1 | %% \break
          e4-1 gis?4-3 b4-1 e4-4 | e4-4 b4-1 gis?4-3 e4-1 | \bar "|." \break

          \key b \major
          \tempo "B Major"
          b4-2 cis?4-3 dis?4-4 e4-1 | fis?4-2 gis?4-3 ais?4-4 b4-1 |
          b4-1 ais4-4 gis4-3 fis4-2 | e4-1 dis4-4 cis4-3 b4-2 | %% \break
          b4-2 dis4-4 fis4-2 b4-1 | b4-1 fis4-2 dis4-4 b4-2  \bar "|." \break

          \key ces \major
          \tempo "Cb Major (you will HARDLY EVER see this key...)"
          ces?4-2 des?4-3 ees?4-4 fes?4-1 | ges?4-2 aes?4-3 bes?4-4 ces?4-1 |
          ces4-1 bes4-4 aes4-3 ges4-2 | fes4-1 ees4-4 des4-3 ces4-2 | %% \break
          ces4-2 ees4-4 ges4-2 ces4-1 | ces4-1 ges4-2 ees4-4 ces4-2 \bar "|." \break

          \key fis \major
          \tempo "F# Major"
          fis?4-2 gis?4-3 ais?4-4 b4-1 | cis?4-2 dis?4-3 eis?4-4 fis?4-1 |
          fis4-1 eis4-4 dis4-3 cis4-2 | b4-1 ais-4 gis4-3 fis4-2 | %% \break
          fis4-2 ais4-4 cis4-2 fis4-1 | fis4-1 cis4-2 ais4-4 fis4-2 \bar "|." \break

          \key ges \major
          \tempo "Gb Major"
          ges?4-2 aes?4-3 bes?4-4 ces?4-1 | des?4-2 ees?4-3 f4-4 ges?4-1 |
          ges4-1 f!4-4 ees4-3 des4-2 | ces4-1 bes4-4 aes4-3 ges4-2 | %% \break
          ges4-2 bes4-4 des4-2 ges4-1 | ges4-1 des4-2 bes4-4 ges4-2 \bar "|." \break

          \key cis \major
          \tempo "C# Major (3rd position)"
          cis,4-2_"III" dis4-3 eis4-4 fis4-1 |
          gis4-2 ais4-3 bis4-4 cis4-1 | cis4-1 bis4-4 ais4-3 gis4-3 |
          fis4-1 eis4-4 dis4-3 cis4-2 | %% \break
          cis4-2 eis4-4 gis4-2 cis4-1 | cis4-1 gis4-2 eis4-4 cis4-2 \bar "|." \break

          \key des \major
          \tempo "Db Major (3rd position)"
          des4-2_"III" ees4-3 f?4-4 ges4-1 | aes4-2 bes4-3 c?4-4 des4-1 |
          des4-1 c4-4 bes4-3 aes4-2 | ges4-1 f?4-4 ees4-3 des4-2 | %% \break
          des4-2 f!4-4 aes4-2 des4-1 | des4-1 aes4-2 f!4-4 des4-2 \bar "|." \break

          \key aes \major
          \tempo "Ab Major (1/2 position)"
          aes4-1 bes4-2 c?4-3 des4-4 | ees4-1 f!4-2 g!4-3 aes4-4 |
          aes4-4 g4-3 f4-2 ees4-1 | des4-4 c4-3 bes4-2 aes4-1 | %% \break
          aes4-1 c4-3 ees4-1 aes4-4 | aes4-4 ees4-1 c4-3 aes4-1 \bar "|."\break

          \key ees \major
          \tempo "Eb Major (1/2 position)"
          ees'4-1 f4-2 g4-3 aes4-4 | bes4-1 c?4-2 d?4-3 ees4-4 |
          ees4-4 d4-3 c4-2 bes4-1 | aes4-4 g4-3 f4-2 ees4-1 | %% \break
          ees4-1 g4-3 bes4-1 ees4-4 | ees4-4 bes4-1 g4-3 ees4-1 \bar "|." \break

          \key bes \major
          \tempo "Bb Major"
          bes4-2 c!4-3 d4-0 ees4-1 | f4-2 g4-3 a4-0 bes4-1 |
          bes4-1 a4-4 g4-3 f4-2 | ees4-1 d4-4 c4-3 bes4-2 | %% \break
          bes4-2 d4-4 f4-2 bes4-1 | bes4-1 f4-2 d4-4 bes4-2 \bar "|." \break

          \key f \major
          \tempo "F Major"
          f'4-2 g4-3 a4-0 bes4-1 | c4-2 d4-3 e4-0 f4-1 |
          f4-1 e4-4 d4-3 c4-2 | bes4-1 a4-4 g4-3 f4-2 | %% \break
          f4-2 a4-4 c4-2 f4-1 | f4-1 c4-2 a4-4 f4-2 \bar "|."
        }
      }
    }
  }
}

