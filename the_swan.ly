\version "2.18.2"
\header {
  title = "The Swan"
  subtitle = "from Carnival of the Animals"
  arranger = "Camile Saint-Saens (1835-1921)"
}
\layout {
  \context {
    \Score
      %% \override BarNumber.break-visibility = ##(#f #t #t)
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  }
}

voiceconsts = {
  \key d \major
  \time 3/4
  %% \numericTimeSignature
  %% \tempo "Adagio" 4 = 65
  \tempo "Cantabile" 4 = 53
  \compressFullBarRests 
  \override MultiMeasureRest.expand-limit=#1
  \set Timing.beamExceptions = #'()
 }
\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c'' {
          \voiceconsts
          R1*3/4*2 | d4(\pp cis fis,) | b( a d,) | e2(~ e8 fis) | g2. |
          b,2( cis8 d) | e8( fis) g( a) b( cis) | fis2.( | fis4) r4 r4 |
          d4( cis fis,) | b4( a d,) | eis2(~ eis8 fis) | gis2. |
          cis,4.( dis8 eis fis) | gis8( a)\< b( cis) dis( eis)\! | a2.( |
          a4) r4 r4 | a4( fis d) | b( cis d) | a2(~ a8 b) | cis2 r4 |
          g'4( e c) | a( b c) | g2(~ g8 a) | b2 r4 | b4(\< e, fis) |
          g2( a8 b) \! | cis2.(\> | b2)\! r4 | b4(\< e, fis) | gis2( a8\! b) |
          c2.(\> | cis?2.) | d4(\! cis fis,) | b( a d,) | 
          e2(~ e8 fis) | g2 r4 | b,2 cis8( d) | e(\< fis) g( a) b( cis) |
          fis2.(  | fis2.)\! | fis4( e b) | d( cis g) | b( a d,) |
          e( fis d) | fis2. | g4( a fis) | b2. | b4(^\markup{\italic "rall."} \> cis a) |
          d2.^\markup{\italic "a tempo"}~\pp | d2.~ | d2.~ | d2.~ |d2. \bar"|."
        }
      }
    }
    \layout { }
    \midi { }
  }
}

%% Last modified: 2016.11.20 12:14:29-0500
