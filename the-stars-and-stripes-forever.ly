\version "2.22.1"
\header {
  title="The Stars and Stripes Forever"
  arranger = "J. P. Sousa"
  enteredby = "Vijay Lulla (2022.07.13)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/22)
  }
}

voiceconsts = {
  \key a \major
  \numericTimeSignature
  \compressEmptyMeasures
  \tempo "Quick March" 2 = 100
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score!

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
            \set Score.markFormatter = #format-mark-box-alphabet
            \time 2/2 \clef treble
            a'2\ff gis4. a8 | fis4 a2 b4 | c4 cis4 d4 dis4 | e4 r4 r2 |
            \mark \default
            \repeat volta 2 { \bar ".|:"
              r4 e,4-. r4 cis4-. | r4 fis4-. r4 fis4-. | r4 e4-. r4 dis4-. |
                r4 e4-. r4 b4-. | r4 a'4-. r4 e4-. | r4 e4-. r4 eis4-. | r4 fis4-. r4 fis4-. | r4 gis4-. gis4-. gis4-. 
                \barNumberCheck #13
                r4 e4-. r4 e4-. | r4 e4-. r4 e4-. | r4 d4-. r4 d4-. | r4 d4-. r4 d4-. | r4 e4-. r4 e4-. | r4 e4-. r4 e4-. |
                \barNumberCheck #19
                r4 a,4-. r4 a4-. | 
            }
          \alternative {
            { b4 r4 b2-> | }
            { b4 r4 gis2-> | }
          }
          \mark \default
            \repeat volta 2 { \bar ".|:"
              r4 cis4-.\mf r4 cis4-. | r4 d4-. r4 d4-. | r4 d4-. r4 d4-. 
                \barNumberCheck #25
                r4 cis4-. cis4-. cis4-. | r4 d4-. d4-. d4-. | r4 dis4-. dis4-. dis4-. | r4 cis4-. r4 cis4-. |
                r4 e4-. gis,2 | r4 cis4 r4 cis4 | \barNumberCheck #31 r4 d4 r4 d4 | r4 d4 r4 d4 | r4 cis4-> r4 cis4-> |
                r4 a4-> r4 a4-> | r4 cis4-> cis4-> cis4-> | r4 d4-> d4-> d4-> |
            }
          \alternative {
            { cis4-> r4 gis2 | }
            { cis4 r4 r2 | }
          }
          \mark \default
          \key d \major
          r4 <d a>4-.\p <d a>4-. r4 | r4 <d a>4-. <d a>4-. r4 | r4 <d a>4-. <d a>4-. r4 | r4 <d a>4-. <d a>4-. r4 | r4 <d a>4-. <d a>4-. r4 |
          \barNumberCheck #44
          r4 <d a>4-. <d a>4-. r4 | r4 cis4-. cis4-. r4 | r4 cis4-. cis4-. r4 | r4 cis4-. cis4-. r4 | r4 cis4-. cis4-. r4 | r4 cis4-. cis4-. r4 | r4 cis4-. cis4-. r4 |
          r4 <d a>4-. <d a>4-. <d a>4-. | \barNumberCheck #52 r4 <b d>4-. <b d>4-. <b d>4-. | r4 cis4-. r4 cis4-. | r4 cis4-. r4 cis4-. | r4 <d a>4-. <d a>4-. r4 |
          r4 <d a>4-. <d a>4-. r4 | r4 <d a>4-. <d a>4-. r4 | r4 <d a>4-. <d a>4-. r4 | r4 e4-. e4-. r4 | \barNumberCheck #60 r4 e4-. e4-. r4 | r4 b4-. b4-. r4 |
          r4 <b d>4-. <b d>4-. r4 | r4 d4-. d4-. d4-. | r4 d4-. d4-. d4-. | r4 fis4-. r4 fis4-. | \barNumberCheck #66
          r4 fis4-. r4 fis4-. | r4 fis4-. r4 fis4-. | r4 fis4-. r4 a4-. | r4 <g a>4-. r4 <g a>4-. | <fis a>4-. r4 r2 | \barNumberCheck #71
          \mark \default
          \repeat volta 2 {
            r1 | r2 b,4->\f a4-> | r2 e'4-> e4-> | cis2 r2 | r1 | r2 d4-> cis4-> | r2 g'4-> g4-> | \barNumberCheck #78
            a2 a8 r8 r4 | ais4. <d e>8 <d e>4-. <d e>4-. | <cis e>4( a4) gis'4-- g4-- | fis4-- eis4-- e4-- dis4-- | d4-- c4-- b8 r8 r4 | c4. fis8-. fis4-. fis4-.
            \barNumberCheck #84 fis4( b,4) ais'4-- a4-- | gis4-- g4-- fis4-- eis4-- | e4-- d4-- r2 | e4.-> d'8-. d4-. d4-. | cis4-> cis4-> r2 | e,4.-> d'8-. d4-. d4-.
            \barNumberCheck #90 cis4-> cis4-> r2 | e,4.-> e8( dis4.) dis8( | d4.) d8( cis4.) cis8( | c4.) c8( b4.) b8( | ais4) a4-> b4-> a4-> |
            \barNumberCheck #95 \mark \default a2_\markup{\italic grandioso}\ff g4( fis4) | fis2 eis4( fis4) | fis1( | fis2) eis4( fis4) | fis2 eis4( fis4) | a2 a4. a8 | g1 |
            \barNumberCheck #102 e2 e2 | e2 dis4( e4) | e2 dis4( e4) | g1( | g2) fis4 e4 | fis4 a2. | b2. b4 | \barNumberCheck #109 e1( | e2) a2 |
            a2 g4( fis4) | fis2 eis4( fis4) | fis1( | fis2) eis4( fis4) | fis2 eis4( fis4) | \barNumberCheck #116 g4 fis4 e4. cis'8 | e,1 | d2 d2 | 
            d2 cis4( d4) | eis2 e4( d4) | d'1( | d4) d,4 e4 fis4 | \barNumberCheck #123 a8 r8 d,4 e4 fis4 | a8 r8 a,4 b4 fis4 | e1 |
          }
          \alternative {
            { d4 r4 r2  | } 
            { d4 r4 <a d a' fis'>4-> r4 | }
          }
        }
        \bar "|."
      }
    }
  }
}

