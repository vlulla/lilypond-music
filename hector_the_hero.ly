\version "2.18.2"
\header{
  title = "Hector the Hero"
  subtitle = \markup{\italic{ A Memoir of the life of Major General Sir Hector Archibald McDonald}}
  %% piece = "<<<PIECE HERE>>>"
  composer = "Traditional"
  arranger = "Edward Spink"
  enteredby= "Vijay Lulla (2018.01.27)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/40)
  }
}

voiceconsts = {
  \key bes \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Naturale" 4 = 72
  \set Score.markFormatter = #format-mark-box-alphabet
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          \time 3/4 \clef treble
          \partial 4 bes'8. c16 | 
          \repeat volta 2 { 
            d2\mp c16 bes8. | g'4 f4. d8 | f2.( | f2) bes,8. c16 |
            d2 c16 bes8. | g'4 f4. d8 | c2.( | c2) d8. f16 | d2 c16 bes8. |
            g'4 f4. d8 | f4 bes,4. c8 | d8\< bes'8( bes4.)\fermata g8 \! |
            f4 bes,4. d8 | c2 bes8. bes16 |
          }
          \alternative {
            { bes2\> bes8. c16\! }
            { bes2\> d8. f16\!}
          } \bar "||"
          \barNumberCheck #17
          \mark\default g4. a8 g4 | bes4 a4. g8 | f2.( | f2.) | g,4. f8 d4 |
          f4. bes,8 d4 | c2.( | c2.) | g''4.\mp f8 d4 | f4 d4 g4 | bes2.\< | 
          c2.^"rall." \bar "||"
          \mark\default\barNumberCheck #29
          d,2^"a tempo"\p c16 bes8. | g'4 f4. d8 | f2.( f2) bes,8. c16 |
          d2 c16 bes8. | g'4 f4. d8 | c2.( c2) d8. f16 | d2 c16 bes8. |
          g'4 f4. d8 | f4 bes,4. c8 | d8 bes'8( bes4.)\fermata g8 |
          f4 bes,4. d8 | c2 bes8. bes16 | bes4.^"rall." r8 r4 \bar"||"
          \mark\default \barNumberCheck #44
          d2^"a tempo" c16 bes8. | g'4\fff f4. d8 | f2.( | f2) bes,8. c16 |
          d2 c16 bes8. | g'4 f4. d8 | c2.( | c2)  d8. f16 | d2\< c16 bes8. |
          g'4 f4. d8 | f4 bes,4. c8 | d8 bes'8( \!bes4.)\fermata g8 |
          \override Hairpin.to-barline = ##t
          f4\> bes,4. d8 | c2 bes8. bes16 | bes2.\fermata\!
          \bar"|." 
        }
      }
    }
  }
}

