\version "2.18.2"
\header {
  title = "STAR WARS"
  subtitle = "Main Theme"
  composer = "John Williams"
  arranger = "Larry Clark"
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
  \time 4/4
  \numericTimeSignature
  \tempo "Allegro non troppo" 4 = 120
  \compressFullBarRests \override MultiMeasureRest.expand-limit=#1
 }
\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          \clef treble
          g'4.->\downbow\ff g8 g4.-> g8 |
          \tuplet 3/2 { g8 d g } c2-> \tuplet 3/2 {c8 a c } |
          d4 \tuplet 3/2 { d8 d d } d8 d \tuplet 3/2 { d,8->_\markup{\italic "poco rit."} d-> d-> } \bar"||"

          g2_\markup{\italic "a tempo"}\f d' |
          \tuplet 3/2 { c8 b a } g'2 d4 |
          \tuplet 3/2 { c8 b a } g'2 d4 |
          \tuplet 3/2 { c8 b c } a2-> \tuplet 3/2 { d,8-> d->\upbow d->\upbow } |
          g2 d' |
          \tuplet 3/2 { c8 b a } g'2 d4 |
          \tuplet 3/2 {c8 b a } g'2 d4 |
          \tuplet 3/2 { f8 e f } d2->\>( d8)\! r8 |
          r4 e,2\p e4( |
          e4) e-- fis2 |
          e4-- e2 e4-- |
          f'4(\< fis g\> fis) |
          r8\! e8(\downbow\< fis8 g) gis4\upbow a4(\downbow |
          a4)\! g(\upbow fis) \tuplet 3/2 { d4\downbow\f d8\upbow } |
          g8 f ees8. d16 c8 bes a g |
          d'2.-> \tuplet 3/2 { d8 d d } |
          e4.->\< g8 c4^\markup{\tiny "H4 / 3rd pos"}-> a4-> |
          g,2\! d'2 |
          \tuplet 3/2 {c8 b a } g'2 d4 |
          \tuplet 3/2 {c8 b a } g'2 d4 |
          \tuplet 3/2 {c8 b c} a2-> \tuplet 3/2 {d,8-> d->\upbow d->\upbow} |
          g2 d'2 |
          \tuplet 3/2 {c8 b a} g'2 d4 |
          \tuplet 3/2 { c8 b a } g'2 d4 |
          \tuplet 3/2 {f8 e f} d2(-> d8) d8-. |
          d2-> b4(-> b8) d-. |
          d2-> b4(-> b8) d8-. |
          f2.-> e8( f16 e) |
          d8-. b4.(-> b4)( b8) d8-. |
          d2-> b4(-> b8) d8-. |
          d2-> b4(-> b8) d8-. |
          f1:32\< |
          e2:32 f4:32 e4:32\! |
          R1*2 |
          <d e>4->\ff\downbow \tuplet 3/2 {<d e>8 <d e> <d e>} <d e>4( <d e>8) r8 |
          r4 \tuplet 3/2 { <d e>8\downbow <d e> <d e> } <d e>8 <d e> \tuplet 3/2 { <d e>8 <d e> <d e> } |
          <e a>4->_\markup{\italic "rit."} \tuplet 3/2 {<e a>8 <e a> <e a>} <e a>4-> <e a>-> |
          r4 <e a>4->\fff\downbow <e a>->\upbow_\markup{\italic "molto rit."} <e a>->\downbow { \override BreathingSign.text=\markup { \musicglyph #"scripts.caesura.straight" } \breathe } \bar"||"

          g,8^\markup{\column{\bold Faster\line{ unis.}}}\mp r8 g_\markup{\italic "cresc."} r8 r8 g \tuplet 3/2 {c8( b a)} |
          g8 r8 g8 r8 g8 r8 \tuplet 3/2 {c8( b a)} |
          g8 r8 g r8 r8 g \tuplet 3/2 {c8( b a)} |
          g8 r g r g r \tuplet 3/2 {d8->\f d-> d->} |
          g2_\markup{\italic "marc."} d'2 |
          \tuplet 3/2 {c8 b a} g'2 d4 |
          \tuplet 3/2 {c8 b c} g'2 d4 |
          \tuplet 3/2 {c8 b c} a2 \tuplet 3/2 {d,8 d d} |
          g2 d'2 |
          \tuplet 3/2 {c8 b a} g'2 d4 |
          \tuplet 3/2 {c8 b a} g'2 d4 |
          \tuplet 3/2 {f8 e f} d2( d8) d-.\ff |
          d2-> b4(-> b8) d-. |
          d2-> b4(-> b8) d-. |
          f2.-> e8( f16 e) |
          d8-. b4.->( b4)( b8) d8-. |
          d2-> b4(-> b8) d8-. |
          d2-> b4(-> b8) d-. |
          f1:32_\markup{\italic "molto rit."}\< |
          e2:32 f4:32 e:32 |
          g,4.^"Maestoso"->\! g8 g4.-> g8 |
          b4.-> g8 b4->-- c->-- |
          d1:32\< |
          g4->\downbow\!\fff \tuplet 3/2 {g,8-> g-> g->} g4-> r4 \bar"|."
        }
      }
    }
    \layout { }
    \midi { }
  }
}

%% Last modified: 2016.07.14 01:12:13-0400
