\version "2.18.2"

\header {
  title = "Theme from Brahms' First Symphony"
  composer = "UNKNOWN"
}
\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) %% reduce horizontal spacing
      %% \override MultiMeasureRest.expand-limit = #2
  }
}
voiceconsts = {
  \key c \major
  \time 4/4
  % numericTimeSignature
  \compressFullBarRests
  \tempo "Andante" 4 = 68
}

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts 
          \clef treble
          <a' cis,>2\p_\markup{\italic dol.} <cis, e>4-.( r8 <cis e>8-.) |
          \set Score.currentBarNumber=#1
          <d f>2. <d f>4-. | <ees g>4-. <f d>-. <f g,>4-. <e g,>4-. |
          <f a,>1\> | <d b>2\pp r4\fermata_\markup {\italic poco} g,4\upbow \bar "||"
          c2\downbow b4(\upbow c) | a2( g4) c4\upbow | d4\downbow( e8 d) e4\upbow( c) |
          d2\downbow d4\upbow g,\upbow | c2\downbow b4\upbow c | a2( g4) c4\upbow |
          d4\downbow( e8 f) e4\upbow(  c) | d2( c4) g4\upbow | d'4\downbow e8\upbow( f) e4\downbow d\upbow( |
          d) e8\downbow( f) e4\upbow d4\downbow( | d) e8\upbow( f) e4\downbow b\upbow |
          c2\downbow a'2\sf | g4\downbow d8\upbow( e) f4\downbow g8\upbow( d) |
          e4\downbow d8\upbow( a) b4\downbow g\upbow | a2\downbow\< f'4\upbow e4\downbow( \!| 
          e)\> d8\upbow( c) b2\downbow\trill \! | c4\upbow\p c'-.^"pizz." b-. c-. |
          r4 a-. g-. e-. | r4 g-. c,-. e-. | r4 g-. g-. g,-. | r4 c'-. b-. c-. |
          r4 a-. g-. e-. | r4 g,-. c-. e-. | r4 g'-. c,-. g^"arco"\upbow_\markup{\italic poco}\f |
          d'\downbow e8\upbow( f) e4\downbow d(\upbow | d) e8\downbow( f) e4\upbow d\downbow( |
          d) e8\upbow( f) e4\downbow b\upbow | c2\downbow a'2(\upbow\sf | g4) d8\downbow( e f4) g8\upbow( d |
          e4) d8\downbow( a b4) g\upbow | a2\downbow\< f'4\upbow e\downbow( | 
          e)\> d8\upbow c\downbow b2\upbow\trill | c4\trill\p( b8 c) d4\trill( c8 d) |
          e4(\trill_\markup{\italic cresc.} d8 e) f4(\trill e8 f) | 
          g1\< |  % TODO: needs grace note bar 39
          g1 \bar "||" % TODO: needs grace note bar 40
          c,,4\ff b8 c c4 b8 c | c4 b8 c c4 b8 c | c4 b8 c c4 b8 c | c4 b8 c c4 b8 c | 
          c4\downbow r4 r2\breathe | r1 | <e c>4\downbow r4 r2 \breathe | r1 |
          <g e' c'>4\sf r4 r4 r8. c,16\upbow | c2->\downbow_\markup{\italic tutta forza} c2-> |
          c1->\fermata\downbow\upbow \bar"|."

        }
      }
    }
    \layout { }
    \midi { }
  }
}

%% Last modified: 2016.11.20 12:15:28-0500
