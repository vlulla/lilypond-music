\version "2.18.2"

downarrow=\markup{\combine \draw-line #'(0 . 2) \arrow-head #Y #DOWN ##t}
uparrow=\markup{ \combine \draw-line #'(0 . -2) \arrow-head #Y #UP ##t }

\header{
  title = "CDA HS -- One Octave Minor Scale and Arpeggio"
  enteredby= "Vijay Lulla (2018.06.04)"
}

\layout {
  \context {
    \Score
      %% \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/28)
  }
  indent = 0
}

voiceconsts = {
  %% \key c \major
  \numericTimeSignature
  \compressFullBarRests
  %% \tempo "<<<TEMPO HERE>>>" 4 = 60
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          %% \set Score.markFormatter = #format-mark-circle-numbers
          \time 4/4 \clef treble
          \key c \minor
          \tempo "C melodic minor (1st position)"
          c4-3 d4-0 ees4-1 f4-2 | g4-3 a4-0 b4-1 c4-2 | c4-2 bes4-1 aes4-4 g4-3 |
          e4-2 ees4-1 d4-4 c4-3 | \break
          c4-3 ees4-1 g4-3 c4-2 | c4-2 g4-3 ees4-1 c4-3 \bar"|."\break

          \tempo "G melodic minor"
          \key g \minor
          g4-0 a4-1 bes4-2 c4-3 | d4-0 e4-1 fis4-2 g4-3 | g4-3 f?4-2 ees?4-1 d4-4 |
          c4-3 bes4-2 a4-1 g4-0 | \break
          g4-0 bes4-2 d4-0 g4-3 | g4-3 d4-0 bes4-2 g4-0 \bar "|."\break

          \tempo "D melodic minor"
          \key d \minor
          d'4-0 e4-1 f4-2 g4-3 | a4-0 b4-1 cis4-2 d4-3 | d4-3  c?4-2 bes?4-1 a4-4 |
          g4-3 f4-2 e4-1 d4-0 | \break
          d4-0 f4-2 a4-4 d4-3 | d4-3 a4-4 f4-2 d4-0 \bar "|." \break

          \tempo "A melodic minor"
          \key a \minor
          a4-1 b4-2 c4-3 d4-0 | e4-1 fis4-2 gis4-3 a4-4 | a4-4 g?4-3 f?4-2 e4-1 |
          d4-4 c4-3 b4-2 a4-1 | \break
          a4-1 c4-3 e4-1 a4-4 | a4-4 e4-1 c4-3 a4-1 \bar"|." \break

          \tempo "E melodic minor"
          \key e \minor
          e'4-1 fis4-2 g4-3 a4-4 | b4-1 cis4-2 dis4-3 e4-4 | e4-4 d?4-3 c?4-2 b4-1 |
          a4-4 g4-3 fis4-2 e4-1 | \break
          e4-1 g4-3 b4-1 e4-4 | e4-4 b4-1 g4-3 e4-1 \bar"|." \break

          \tempo "B melodic minor"
          \key b \minor
          b4-2 cis4-3 d4-4 e4-1 | fis4-2 gis4-3 ais4-4 b4-1 |
          b4-1 a?4-4 g?4-3 fis4-2 | e4-1 d4-4 cis4-3 b4-2 | \break
          b4-2 d4-4 fis4-2 b4-3 | b4-3 fis4-2 d4-4 b4-2 \bar"|." \break

          \tempo "F# melodic minor"
          \key fis \minor
          fis'4-2 gis4-3 a4-4 b4-1 | cis4-2 dis4-3 eis4-4 fis4-1 |
          fis4-1 e?4-4 d?4-3 cis4-2 | b4-1 a4-4 gis4-3 fis4-2 | \break
          fis4-2 a4-4 cis4-2 fis4-3 | fis4-3 cis4-2 a4-4 fis4-2 \bar"|."\break

          \tempo "C# meldoic minor (3rd position)"
          \key cis \minor
          cis4-2_"III"^\downarrow dis4-3 e4-4 fis4-1 |
          gis4-2^\downarrow ais4-3 bis4-4 cis4-1 | cis4-1 b?4-4 a?4-3 gis4-2 |
          fis4-1 e4-4 dis4-3 cis4-2 | \break
          cis4-2 e4-4 gis4-2 cis4-3 | cis4-3 gis4-2 e4-4 cis4-2 \bar"|."\break

          \tempo "G# melodic minor (1/2 position)"
          \key gis \minor
          gis4-1 ais4-2 b4-3 cis4-4 | dis4-1 eis4-2 fisis4-3 gis4-4 |
          gis4-4 fis?4-3 e?4-2 dis4-1 | cis4-4 b4-3 ais4-2 gis4-1 | \break
          gis4-1 b4-3 dis4-1 gis4-4 | gis4-4 dis4-1 b4-3 gis4-1 \bar"|."\break

          \tempo "Ab melodic minor (1/2 position)"
          \key aes \minor
          aes4-1 bes4-2 ces4-3 des4-4 | ees4-1 f4-2 g4-3 aes4-4 |
          aes4-4 ges?4-3 fes?4-2 ees4-1 | des4-4 ces4-3 bes4-2 aes4-1 | \break
          aes4-1 ces4-3 ees4-1 aes4-4 | aes4-4 ees4-1 ces4-3 aes4-1 \bar"|."\break

          \tempo "D# melodic minor (1/2 position)"
          \key dis \minor
          dis4-1 ees4-2 fis4-3 gis4-4 | ais4-1 bis4-2 cisis4-3 dis4-4 |
          dis4-4 cis?4-3 b?4-2 ais4-1 | gis4-4 fis4-3 eis4-3 dis4-1 | \break
          dis4-1 fis4-3 ais4-1 dis4-4 | dis4-4 ais4-1 fis4-3 dis4-1 \bar"|."\break

          \tempo "Eb melodic minor (1/2 position)"
          \key ees \minor
          ees4-1 f4-2 ges4-3 aes4-4 | bes4-1 c4-2 d4-3 ees4-4 |
          ees4-4 des?4-3 ces?4-2 bes4-1 | aes4-4 ges4-3 f4-2 ees4-1 | \break
          ees4-1 ges4-3 bes4-1 ees4-4 | ees4-4 bes4-1 ges4-3 ees4-1 \bar"|."\break

          \tempo "A# melodic minor"
          \key ais \minor
          ais,4-1 bis4-2 cis4-3 dis4-4 | eis4-1 fisis4-2 gisis4-3 ais4-4 |
          ais4-4 gis?4-3 fis?4-2 eis4-1 | dis4-1 cis4-3 bis4-2 ais4-1 | \break
          ais4-1 cis4-1 eis4-1 ais4-4 | ais4-4 eis4-1 cis4-4 ais4-1 \bar"|."\break

          \tempo "Bb melodic minor"
          \key bes \minor
          bes4-2 c4-3 des4-4 ees4-1 | f4-2 g4-3 a4-4 bes4-1 |
          bes4-1 aes?4-4 ges?4-3 f4-2 | ees4-1 des4-4 c4-3 bes4-2 | \break
          bes4-2 des4-4 f4-2 bes4-1 | bes4-1 f4-2 des4-4 bes4-2 \bar"|."\break

          \tempo "F melodic minor"
          \key f \minor
          f'4-2 g4-3 aes4-4 bes4-1 | c4-2 d4-3 e4-4 f4-1 |
          f4-1 ees?4-4 des?4-3 c4-2 | bes4-1 aes4-4 g4-3 f4-2 | \break
          f4-2 aes4-4 c4-2 f4-1 | f4-1 c4-2 aes4-4 f4-2 \bar"|."
        }
      }
    }
  }
}

