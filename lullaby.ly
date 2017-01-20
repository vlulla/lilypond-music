\version "2.18.2"
\header {
  title = "LULLABY"
  composer = "William Hofeldt"
  enteredby = "Vijay Lulla (2017.01.19)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/24)
  }
}

voiceconsts = {
  \key d \major
  \time 3/4
  \compressFullBarRests
  \tempo "Andante sostenuto"
}

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          \clef treble
          R1*3/4 | % Full measure rest!
          r4 r4 d8\p\downbow e |
          fis2 d8 e |
          fis2 e8 fis |
          g2 fis8 a-"4" |
          e2 d8\downbow e |
          fis2 d8 e |
          fis2 e8 fis |
          g2 a8-"4" g |
          e2 b'8\downbow cis |
          d2 cis8 b |
          a4 fis g8 a |
          b4 d, d8 e | % bar 13
          fis2 d8\downbow e |
          fis4 a-"4" g8 fis |
          e2 d8-"4" cis |
          d2.-"4" | 
          d2 r4 |
          d'4-"1"\downbow\mp fis a |
          d4 cis2 |
          b8 a g4 d8 fis |
          e8 d cis4-"2" fis,8 a |
          d4 fis a |
          d4 cis g8-"4" a |
          b4 cis4 d4 |
          cis2 b8\downbow-"2" a-"1" |
          fis4-"3" d-"1" e8 d | % bar 27
          fis4-"3" a,-"0" d8-"3" cis |
          b4 b'4 a8 g |
          fis8 e-"4" d4 d8 cis |
          b4 fis' e8-"4" d |
          cis4 a'4 fis8 e |
          d8 g b4 a8 g |
          fis2\<\breathe d,8\downbow e |
          fis4(\mf g) a |
          fis4 e4.( d8) |
          fis2.( |
          e2) r4 |
          e4(\downbow fis) g |
          fis4 e4.( d8) |
          e2.( |
          d2) r4 |
          d4(\downbow e) f4 |
          e2 d4 |
          a'2 a8 g | % bar 45
          f2 g8-"1"\downbow a |
          bes4-\markup{\italic "dim."} bes bes |
          a4 a g |
          a2.(-\markup{\italic "e rit."} |
          a2) \breathe d8-"1"\mp\downbow e |
          fis2 d8 e |
          fis2 e8 fis |
          g2 fis8 a |
          e2 d8\downbow e |
          fis2 d8 e |
          fis2 e8 fis |
          g2 a8 g |
          e2 b'8\downbow cis |
          d2 c8 b |
          a4 fis g8 a |
          b4 d, d8 e |
          fis2 d8\downbow e |
          fis4 a4 g8 fis |
          e2 d8-"3" cis |
          d2. |
          d2\< r4\! |
          R1*2*3/4 | % Bar 67-68  % Two measure rest
          <<
          \new Voice { \voiceOne 
            cis'2 cis8( d) |
            e4. cis8 a8^"1" e |
            c'4
          }
          \new Voice { \voiceTwo 
            cis,2\f cis8( d) |
            e4.-"4" cis8 a8 e8 |
            c'4
          }
          >> r4 r4 | % bar 71
          R1 * 3/4 |
          <<
          {
            b'2 b8( cis) |
            d4. d8 b8 g |
            d4( e) f |
            e2 d4^"3" |
            a'4.( g8) bes8 a |
            f2 g8 a |
            bes4 b2 |
            a2 g4 |
            a2 e4 |
            a,2 \breathe d,8\fermata\downbow cis\fermata\upbow |
          } \\
          {
            b'2 b8( cis) |
            d4. d8 b8 g |
            d4( e) f |
            e2 d4 |
            a'4.(_"4" g8) bes8 a |
            f2 g8 a |
            bes4_"dim." bes bes |
            a4 a g |
            a2._"e rit."( |
            a2) d,8\mp cis |
          }
          >>
          \oneVoice
          r8 a'8\downbow( fis'8[ e^"4"] d cis) |
          r8 fis8( b[ a] g fis) |
          r8 b,8( e^"4"[ fis] g4) |
          r8 e8( a[ g] fis e^"4") 
          <<
          { r8 a,8\downbow^"div" fis'8([ e] d cis) |
            r8 fis8( b[ a] g fis) |
            r8 b,8( g'[ fis] e g) |
            a2 b8^"2"\downbow cis |
            d2^"3" e8 d |
            cis4 a^"1" d8 cis |
            b8 cis^"1" d4 e8 d | 
            fis2
          }
          \\
          { r8 a,,8 d8[ cis] b a |
            r8 e'8 d[ cis] b a |
            r8 g8 b[ a] g b |
            cis2\< b8 cis8 |
            d2\mf d8_"cresc." d |
            cis4 a d8 cis |
            b8 cis d4 e8 d |
            fis2
          }
          >>
          \oneVoice r4 | % bar 94
          R1 * 3/4 |
          r4 r4^"unis." fis,8\downbow\mf a |
          g2 g8 g |
          fis2\> r4\! |
          d4\downbow(\p^"Meno mosso" d--\downbow) c\upbow--|
          <<
          { r4 r4^"Solo" d''8^"4"\upbow cis |
            a2 fis8^"3" e |
            fis2.( |
            fis4)
          }
          \\
          { d,2.(_"dim." |
            d2.)( |
            d2.)( | d4)
          }
          >>
          \oneVoice r4 r4
          \bar "|."
        }
      }
    }
    \layout { }
    \midi { }
  }
}
