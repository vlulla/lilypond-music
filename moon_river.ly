\version "2.18.2"
\header{
  title = "Moon River"
  piece = "1st Violin"
  composer = "By Henry Mancini and Johnny Mercer"
  arranger = "James Christensen"
  enteredby= "Vijay Lulla (2018.02.11)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
  }
}

voiceconsts = {
  \key c \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Jazz Waltz" 4 = 132
}

%% showLastLength = R1*3/4*8 %% last few measures %% Comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          \set Score.markFormatter = #format-mark-box-barnumbers
          \time 3/4 \clef treble
          \repeat volta 2 {
            g'8--\mf g8-. r4 r4 | g8-- g8-. r4 r4 | a8-- a8-. r8 f8\upbow a8 c8 | 
            \tuplet 3/2 { b8( c8 b8) } a4\upbow fis4\upbow
          } \barNumberCheck #5 \mark\default
          g4. dis8 \tuplet 3/2 { e8 g8 b8} | d4( c2) | b8-- b8-. r8 a8 g8 f8 |
          g2 c,4 | b'8-- b8-. r8 a8 g8 f8 | g2 c,4 | d4. f8 a8( b8) | gis4( fis4) e4 |
          \barNumberCheck #13 \mark\default
          c8 d8( c8) b8 c8( e8) | g8 e8( e4)( e8) d8 | c8 d8( c8) b8 c8( e8) |
          g8 e8( e4)( e8) d8 | \tuplet 3/2 { c8( d8 c8) } b8 c8 e8( g8) |
          c8 b8( b4.) a8 | b8 a8( a4.) g8 | a2\< aes4 | \barNumberCheck #21 \mark\default
          g8--\f g8-. r8 fis8 g8 b8 | d8 c8( c2) | g8-- b8-. r8 a8 g8 f8 | 
          g8 e8( b8) c8 e8( g8) | b8-- b8-. r8 a8 g8 f8 | g2 c,4 | d8 f8( a8) d8 f8( d8) |
          e2\> \tuplet 3/2 { e8(\mp ees8 d8) } | \barNumberCheck #29 \mark\default
          c2. | e2 g4 | c2.\< | d2\f c4 | g8-- g8-. r4 r4 | r4 b8 a8 g8 f8 |
          g8-- g8-. r4 r4 | r8 c,8 b'8 a8 g8 f8 | \barNumberCheck #37 \mark\default
          g,2. | c,2. | f4 d2( | d2) e4 | c8-- c8-. r8 e8 g8 d'8 | 
          b8-- b8-. r8 c,8 e8 a8 | f8-- f8-. r8 a,8 c8 g'8 | e2.\> | \bar"||"
          \barNumberCheck #45 \mark\default
          r4^"Optional cut to m. 61 if no solos" g4\mp g4 | a8-- a8-. r4 r4 |
          r4 a4 a4 | c8-- c8-. r4 c4 | b2 a4 | g2. | b8-- b8-. r8 b8 b4 |
          b2. | \barNumberCheck #53 \mark\default c4. <<{c8 c8 c8} \\ {r8 r4} >> | 
          << { bes8 bes8 r8 bes8 bes8 bes8} \\ {R1*3/4}>> | << {a8 a8 r8 a8 f4} \\ {R1*3/4}>> |
          << {e2 d4} \\ {R1*3/4}>> | << {e8 e8 r4 g4} \\ {R1*3/4}>> | 
          << {c4 b2} \\ {R1*3/4}>> | << {b4 a2} \\ {R1*3/4}>> | <<{a8 a8 r4 aes4} \\ {R1*3/4}>> 
          \bar"||"\barNumberCheck #61 \mark\default
          g8--\mf^"Play" g8-. r4 r4 | c8-- c8-. r4 r8 e,8 | g8 a8 g8 e8 d8 c8 |
          e4 fis4 g4 \bar"||"\barNumberCheck #65 \mark\default
          \key d \major
          a8-- a8-. r8 fis8 a8 cis8 | e4 d2 | \tuplet 3/2 {cis8( d8 cis8) } b8 a8 g8 f8 |
          fis!8-- a8-. r4 r8 d8 | cis8 d8 cis8 b8 a8 g8 | a8 b8 a8 fis8 e8 d8 |
          e8 fis8 g8 a8 b8 d8 | cis4( cis8) r8 r4 | \barNumberCheck #73 \mark\default
          R1*3/4*3 | r8 b8\mf \tuplet 3/2 { e8( fis8 e8) } b8 e8 | 
          d8-- d8-. r8 a8-- a'4-. | r4 cis,8 b8 a8 g8 | a8-- a8-. r8 d8-- d'4-. |
          r8 d,,8 cis'8 b8 a8 g8 |\barNumberCheck #81 \mark\default 
          a8-- a8-. r8 a8-- a4-. | d,2. | g8-- e8-. r8 e8-- e4-. | fis2. | 
          a8--\f a8-. r8 a8-- a4-. | r4 g4 gis4 | a8--\mp a8-. r8 a8-- a4-. |
          r4 g4 gis4 | \barNumberCheck #89 \mark\default a8--\pp a8-. r8 a8-- a4-. |
          r4 g4\f gis4 | a8-- d8-. r8 d,8-- d4-. | d4-. r4 r4 
          \barNumberCheck #93
          \bar"|."
        }
      }
    }
  }
}

