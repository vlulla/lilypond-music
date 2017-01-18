\version "2.18.2"

\header {
  title = "III. HABANERA"
  arranger = "arranged by Jeff Manookian"
  composer = "from \"Carmen\" by Georges Bizet"
}
\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      %% \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/24) %% reduce horizontal spacing
      %% \override MultiMeasureRest.expand-limit = #2
      \override Glissando #'style = #'zigzag
  }
}
voiceconsts = {
  \key c \major
  \time 4/4
  % numericTimeSignature
  \compressFullBarRests
  \tempo "Allegro quasi andantino" 4 = 112
}

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts 
          \clef treble
          c4\f^"pizz." r r2 | r1 | r2 c'4-.\mf^"arco" b-. |
          bes4-. bes8-. bes-.  a4-. gis-. | g-. g8-. g-. fis4-. f-. |
          \tuplet 3/2 {ees8( f ees)} d8-. ees8-. f4-. ees-. | d4-. r4 c'4-. b-. |
          bes4-. bes8-. bes a4-. gis4-. | g4-. g8-. g-. f4-. ees4-. | 
          \tuplet 3/2 {d8( ees8 d)} c8-. d-. ees4-. d-. |
          c2(\<\glissando c'4-.)\! b4-. | bes-. bes8-. bes-. a4-. gis4-. |
          g4-. g8-. g8-. ges4-. f4-. | \tuplet 3/2 {ees8( f ees)} d8-. ees8-. f4-. ees4-. |
          d2(\<\glissando c'4-.)\! b4-. | bes-. bes8-. bes-. a4-. gis4-. |
          g4-. g8-. g8-. f4-. ees4-. | \tuplet 3/2 {d8( ees8 d8)} c8-. d-. ees4-. d4-. |
          c4-. r4^"divsi" <c' c'>4\pp <b b'> | <bes bes'>4 <bes bes'>8 <bes bes'> <a a'>4 <gis gis'>4 |
          <g g'>4 <g g'>8 <g g'>8 <fis fis'>4 <f f'>4 | <e e'>8 <f f'> <d d'> <e e'>8 <f f'>4 <e e'>4 |
          <d d'>4 r4 <c' c'>4 <b b'>4 | <bes bes'>4  <bes bes'>8 <bes bes'> <a a'>4 <gis gis'>4 |
          <g g'>4 <g g'>8 <g g'> <f f'>4 <e e'>4 | <d d'>8 <e e'> <c c'> <d d'> <e e'>4 <d d'>4 |
          <c c'>4 r8 g'8(^"arco"\mp c,4-.) d4-. | e4-> r8 g8( e4-.) d4-. |
          c4-> r8 d8( e4-.) f4-. | g8-. g8-. g8-. g8-. a4-. g4-. |
          f-> r8 a8( d,4-.) e4-. | f-> r8 a8( f4-.) e4-. | d4-> r8 e8( f4-.) g4-. |
          a8-. a8-. a8-. a8-. b4-. a4-. | g4-> r8 g'8->\ff c4-.-> d,4-.-> |
          e4-.-> r8 g,8(\p e4-.) d4-. | c4.( d8) e4-. f4-. | g8-. g8-. g8-. g8-. c4-. b4-. |
          f4-. r8 a'8->\ff d4-.-> e,4-.-> | f4-.-> r8 a,8(\p f4-.) e4-. |
          d4.(\< e8) f4-. g4-. | b8( a) fis-.\! g-. e'4\ff\fermata \tuplet 3/2 {d8( e d} |
          c4-.) r8 g'8-> b4-> r4 \bar "|."
        }
      }
    }
    \layout { }
    \midi { }
  }
}

%% Last modified: 2017.01.18 01:24:34-0500
