\version "2.18.2"
\header{
  title = "Danse Macabre"
  piece = "Violin I"
  arranger = "Cammile Saint-Saëns"
  enteredby= "Vijay Lulla (2018.10.31)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/24)
  }
}

voiceconsts = {
  \key bes \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Movement modéré de Valse" 2. = 70
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          \set Score.markFormatter = #format-mark-box-alphabet
          \time 3/4 \clef treble
          <ees' a,>2.->\f | <d, a'>2.-> | <ees' a,>2-> <ees a,>4-> |
          <a, d,>2-> <a d,>4-> |
          <a ees'>8-. <a ees'>8-. <a ees'>4-. <a d,>4-.|
          <a ees'>8-. <a ees'>8-. <a ees'>4-. <a d,>4-.|
          <a ees'>4-. <a d,>4-. <a ees'>4-. | <a d,>4-. <a ees'>4-. d4-.-> |
          \mark\default\barNumberCheck #9
          \repeat volta 2{
            g,4-.-> g8-.\p bes8-. g8-. a8-. | bes4-> a8-. bes8-. g8-. bes8-. |
            a8(^\prall g8) bes8-. bes8-. g8-. a8-. | bes4-> a8-. bes8-. g8-. bes8-. |
            aes8-. r8 aes8-. c8-. aes8-. bes8-. | c4-> bes8-. c8-. aes8-. c8-. |
            \barNumberCheck #15
            bes8(^\prall aes8) aes8-. c8-. aes8-. bes8-. | c8-. r8 aes8-. c8-. bes8-. aes8-. |
            g4-. d4-. d4-. | r4 d4-. d4-. | r4 d4-. d4-. | r4 d4-. d4-. |
            r4 c4-. c4-. | r4 c4-. c4-. | \barNumberCheck #23
            r4 c4-. c4-. | r4 c4-. c4-. | r4 d4-. d4\f | \mark\default\barNumberCheck #26
            g2 g4 | f2 f4 | e2 e4 | ees!2 ees4 | d4 e4 g4 | fis4 e4 d4 |
            \barNumberCheck #32
            e2 e4 | fis4 r4 d4 | g2 g4 | f!2 f4 | e2 e4 | ees!2 ees4 | d4 g4 bes4 |
            a4 fis4 d4 | fis2 e4 | \barNumberCheck #41
            d4 fis4-.\p fis4-. | r4 fis4-. fis4-. | r4 fis4-. fis4-. | r4 fis4-. fis4-. |
            \mark\default
            r4 g8-.\mf bes8-. g8-. a8-. | bes4-.-> ees,8-. g8-. ees8-. f8-. |
            g4-.-> bes,8-. ees8-. bes8-. d8-. | \barNumberCheck #48
            ees4-.-> ees8-. ees8-. ees8-. ees8-. | d4-. fis4-.\p fis4-. |
            r4 fis4-. fis4-. | r4 fis4-. fis4-. | r4 fis4-. fis4-. |
            r4 g8-.\f bes8-. g8-. a8-. | bes4-.-> ees,8-. g8-. ees8-. f8-. |
            \barNumberCheck #55
            g4-.-> bes,8-. ees8-. bes8-. d8-. | ees4-.-> ees8-. ees8-. ees8-. ees8-. |
            d4 <d a'>8\ff <d a'>8 <d a'>8 <d a'>8 | <a' d>4-> <d, a'>8 <d a'>8 <d a'>8 <d a'>8 |
            <a' ees'>4-> <a d,>4 <a ees'>4 | <a d,>4-> <a ees'>4 d4-.->\ff |
          }
          g4-.-> r4 r4
          \bar"|."
        }
      }
    }
  }
}

