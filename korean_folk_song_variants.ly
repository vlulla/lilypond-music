\version "2.18.2"
\header {
  title = "Korean Folk Song Variations"
  subtitle = "Arirang"
  arranger = "Arranged by: Elliot Del Borgo"
}
\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/24)
  }
}

voiceconsts = {
  \key g \major
  \time 3/4
  \numericTimeSignature
  \tempo "Andante" 4 = 66
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
          g''2.(\downbow\p | g4) d( e) | g2. | d2. | g2. | d2.( | d4) b( e) |
          d2. | g2.( | g4) g4--( g4--) | g2. | d2. | d2( e4) | d2. | d2. |
          g,8(\< d) e( g) a b \! |
          \repeat volta 2 { 
            d2\downbow\mf d4 | d4( b) a | b a8( b) g e |d4.( e8) d4 | g4.( a8) g8( a) |
            b8( a) g( e) d e | g4.( a8) g4 |
          }
          \alternative {  
            { g8( d) e( g) a b |} % first
            { g8(\<^\markup{\italic accel.} d) g( a) b d \bar "||" } % second
          }
          g8(\f^\markup{\bold "Piu mosso"} e) d( e) g( a) | g8( e) d( e) g( a) |
          g8( e) d( e) g( a) | g( e) d( e) g( a) | g( e) d( e) g( a) | g( e) d( e) g( a) |
          g2. | a2. | g2. | R1*3/4*3 | R1*3/4*2 |
          <d d,>2\downbow\ff <d d,>4_\markup{\italic bravura} | % #40
          <d d,>4 <b d,> <a d,> | <b d,>2 <d d,>4 | <d d,>2. |
          <<
            {d8([ e)]^"4" d([ b)] a([ b)] | d([ e)]^"4" d([ b)] a([ b)]}
            \\
            {d,4 d d | d d d }
          >> %% measures 44 and 45
          d'8( e) g( a) b( a) | g( e) d( b) a( b) | d4 g a | d, g a | d,8( e) g( a) b( a) |
          g( e) d( b) a( b) | d4 g a | d, g a | g2. | d2. | g2. | a2. |
          R1*3/4*2 | \tempo 4=75 r4 d,4\downbow\mf d_\markup{\italic marcato} |
          d4( b) a | b2.( | b4) g( a) | d,8 e g e g a | g4 e' d | b g' e |
          d4 b a | b2.( | b4) a( d) | e8 d b a g a | b4 d e | d b( a) | b2. |
          R1*3/4*2 | r4 g4\downbow\f g | g8 d g a b d | g4 e2 | d2 a4 |
          g4\downbow\ff d_\markup{\italic sonore} e | g a g | <d d'>2.( |
          <d d'>4) <d b'>4 <d a'> | <d b'> g' e | <d d,-->2( <d d,-->4) |
          <d d,>2. | b8\downbow g d b a b | d g a b d e |
          g2.:32(_\markup{\italic "con forza"} | g2.:32)( | g2.:32)( |
          g2.:32)( | g2.:32)( | g4)\downbow r4 r4 | R1*3/4*2 | R1*3/4*2 |
          d8\downbow\mp\< b a b d e | d b a b d e | g\ff e d e g a | g e d e g a |
          g8 e d b a g | a b d e g a | g e d e g a | g e d e g a |
          g e d b a g | a b d e g a | g e d e g a | g e d e g a | g e d b a g |
          a b d e g a | g4 <d d,>4\downbow-> <d d,>4->\downbow |
          <d d,>4->\downbow <b d,>->\downbow <a d,>->\downbow | % measure 114
          r4 <d d,>4->\downbow <d d,>->\downbow | % measure 115
          <d d,>4->\downbow <b d,>->\downbow <a d,>->\downbow | % measure 116
          g8:16\downbow e: d: e: g: a: | b: d: b: a: g: e: | g: a: b: a: b: d: |
          g: e: d: e: g: a: | g: e: d: e: g: a: | g: e: d: e: g: a: |
          g4->^\markup{\italic "allargando"} r4 r4 | g,\downbow r4 r4 |
          g2.\downbow\fermata\upbow \bar"|."
        }
      }
    }
    \layout { }
    \midi { }
  }
}

%% Last modified: 2016.11.20 12:16:18-0500
