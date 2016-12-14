\version "2.18.2"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "THE OLYMPIC SPIRIT"
  subtitle = "Created for NBC Broadcast of the 1988 Summer Olympics"
  composer = "John William"
  arranger = "Paul Lavende"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/12)
      \override MultiMeasureRest.expand-limit = #3 %% Default is 10!
  }
}

voiceconsts = {
  \key g \major
  \time 4/4
  \numericTimeSignature
  \tempo 4 = 62
  \compressFullBarRests
}

\book {
  \score {
    \new Staff = "main" {
      \new Voice {
        \relative c'' {
          \voiceconsts
          \clef treble
          \partial 4 r4 | R1 | r2 r4 b8.-.\upbow\f~ b16-. | 
          b4 b b8 c d8. b16\upbow | b8 a r4 r2 | R1 |
          r2 r4 b8.-.\upbow~ b16 | b4 b b8 c d8. b16 |
          e2->~ e8 r8 e8.-.\upbow~ e16 | fis2->~ fis8 r8 fis8.-.\upbow~ fis16-. |
          g1->~ | g2.~ g8 r8 | R1*7 | r2 r4 g,8\downbow\mf a |
          << { b1~ | b4 g8( a b g c b) } 
             \new Staff \with {
               \remove "Time_signature_engraver"
               alignAboveContext=#"main"
               %% fontSize=#-3
               %% \override StaffSymbol.staff-space=#(magstep -3)
               %% \override StaffSymbol.thickness=#(magstep -3)
               firstClef=##f
             }
             { b1~ | b4 g8( a) b\downbow g\upbow c\downbow b\upbow}
          >> | 
          g4( a8 b) a2~ | a2. c8 d8 |
          e2.-"4" c8( d) | e8 e c e fis fis d fis | g4.(\f d8) d( e c b) |
          a2. c8( d) | e2.-"4" c8( d) | e8 e c e fis fis d fis |
          g1->~ | g2~ g8 r8 r4 | R1 | r2 r4 b,8.-.\upbow\f~ b16-. | 
          b4 b b8 c d8. b16\upbow | b8 a r4 r2 | R1 | 
          r2 r4 b8.-.~\upbow b16-. | b4 b b8 c d8. b16 |
          e2~-> e8 r8 e8.-.~\upbow e16-. | fis2~-> fis8 r8 fis8.-.~\upbow fis16-. |
          g1->~ | g2. g,8\< a | 
          <<
            { b1~\ff | b4 g8( a b g c b) }
            \new Staff \with {
               \remove "Time_signature_engraver"
               alignAboveContext=#"main"
               %% fontSize=#-3
               %% \override StaffSymbol.staff-space=#(magstep -3)
               %% \override StaffSymbol.thickness=#(magstep -3)
               firstClef=##f
             }
            { b1~\ff | b4 g8( a) b\downbow g\upbow c\downbow b\upbow }
          >>
          |
          g4( a8 b) a2~ | a2. c8( d) | e2. c8( d) | e8 e c e fis fis d fis |
          g2->~\< g8\! r8 r4 | r1 | r2 r4 b,8.-.~\upbow b16-. |
          b4 b b8 c d8. b16 | e2->~ e8 r8 e8.-.~\upbow e16-. |
          fis2->~ fis8 r8 fis8.-.~\upbow fis16-. | g1->\downbow |
          g1->\fermata\ff \bar"|."
        }
      }
    }
    \layout { }
    \midi { }
  }
  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    %% oddFooterMarkup = \markup { \fromproperty #'page:page-number-string  Typeset on: \date } 
    evenFooterMarkup = \oddFooterMarkup
  }
}

%% Last modified: 2016.07.18 21:53:29-0400
