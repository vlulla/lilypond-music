\version "2.18.2"
\header {
  title = "Musette in D major"
  composer = "J. S. Bach (1685-1750)"
}
\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/24)
  }
}

voiceconsts = {
  \key d \major
  \time 2/4
  \numericTimeSignature
  \compressFullBarRests 
  \override MultiMeasureRest.expand-limit=#1
  \tempo 4=72
 }
\book {
  \score {
    \new StaffGroup <<
      \new Staff \with { 
                   instrumentName = #"Violin 1" 
                   shortInstrumentName = #"Vln. 1"
                 } {
        \new Voice {
          \relative c' {
            \voiceconsts
            \repeat volta 2 {
              a''4 g16( fis e d) | a'4 g16( fis e d) | r2 | r2 | a'4 g16( fis e d) |
              a'4 g16( fis e d) | r2 | r2 
            }
            \repeat volta 2 {
              cis16(\mf\downbow d e8) cis16( d e8) | a8 e e4\downbow \breathe |
              a8-.\downbow e-. a-. e-. | d16( cis b a) b8\upbow e\upbow |
              e8\downbow dis e, d'( | d8) cis a' gis | e8 dis e, d'( | 
              d) cis a' gis | e16( dis cis dis) e( dis cis dis) | e8 gis, a d |
              cis16(\f d e8) a,8 r8 | r2 | a'4\downbow g16( fis e d) |
              a'4 g16( fis e d) | r2 | r2 | a'4\downbow g16( fis e d) |
              a'4 g16( fis e d) | r2 r2
            }
          }
        }
      }
      \new Staff \with { 
                   instrumentName = "Violin 2" 
                   shortInstrumentName = #"Vln. 2"
                 } {
        \new Voice {
          \relative c' {
            \voiceconsts
            \repeat volta 2 {
              a'4 g16( fis e d) | a'4 g16( fis e d) | fis16\mp\downbow( g a8) g8\upbow fis\upbow| 
              e8 a fis8 d| a'4 g16( fis e d) | a'4 g16( fis e d) | r2 | r2 
            }
            \repeat volta 2 {
              r2 | cis'16(\downbow\mf d e8) cis16( d e8) | a8-. e-. e4-.\downbow\breathe |
              d16( cis b a) b8\upbow e,\upbow | r2 | r4 a8\downbow gis\upbow | r2 |
              r4 a8\downbow gis\upbow | e'16( dis cis dis) e( dis cis dis) |
              e8 gis, a d | cis16( d e8) a,8\upbow d,\upbow | cis16( d e8) a,4 | 
              a'4 g16( fis e d) | a'4 g16( fis e d) | fis16( g a8) g8\upbow fis\upbow |
              e8 a fis d | a'4 g16( fis e d) | a'4 g16( fis e d) | r2 | r2 
            }
          }
        }
      }
    >>
    \layout { }
    \midi { }
  }
}

%% Last modified: 2016.11.20 12:13:14-0500
