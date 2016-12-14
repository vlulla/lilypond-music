\version "2.18.2"
\header {
  title = "Ave verum corpus, K. 618"
  arranger = "W. A. MOZART"
}
\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  }
}

voiceconsts = {
  \key d \major
  \time 2/2
  %% \numericTimeSignature
  %% \tempo "Adagio" 4 = 65
  \tempo "Adagio" 4 = 45
  \compressFullBarRests 
  \override MultiMeasureRest.expand-limit=#1
  \set Timing.beamExceptions = #'()
 }
\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          R1*2/2*2 | a'2_\markup{\italic "sotto voice"} d4( fis,) |
          a4( gis) g2 | g4( b) a( g) | g( fis) fis2 | e2. e4 |
          fis4 fis g g | g2( fis4) fis | e1 | e2. a4 | a4( gis) gis2 |
          e4( gis2) b4 | b4( a) a a | d1~( | d4 cis) b a | 
          a2( gis4) gis | a1 | R1*2/2*3 | a2. a4 | a4( bes) bes2 |
          bes4( d) c4( bes4) | bes4( a) a2 | g2. g4 | g4( bes4) a g |
          g2( f8 e) f4 | e2 r2 | fis?2. fis4 | fis4( e) d( g) |
          g2. g4 | g4( fis) e( a) | a1~( | a4 g) a b | fis2( e4.) fis8 |
          g2 g2 | d'1( | d2) dis2( | e4 b cis? d) | cis( b8 a) d4 g, |
          fis2( e4.) e8 | d1 | r4 b4\upbow e2(\downbow | e4) d2(\upbow cis4) |
          d1\downbow \bar"|." 
        }
      }
    }
    \layout { }
    \midi { }
  }
}

%% Last modified: 2016.11.20 12:14:08-0500
