\version "2.18.2"
\header{
  title = "Bohemian Rhapsody"
  piece = "A HAL Leonard"
  composer = "Words and Music by Freddy Mercury"
  arranger = "John Berry"
  enteredby= "Vijay Lulla (2018.01.28)"
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
  \tempo 4 = 130
  \set Score.markFormatter = #format-mark-box-barnumbers
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          \time 4/4 \clef treble
          \partial 2 r4 r4 | r8 c'8\mf\upbow c8 c8 c4 c4 | r8 c8\upbow c8 c8 c8 c8 a4 |
          \time 5/4 r8 b8\upbow g8 g8 c4 g4 g8 g8 |
          \time 4/4 c8 c8 c8 c8 b8 g4. | 
          r2 r4 r8 e'8\upbow | e8 e8 f8 g8~ g4 c,4\upbow |
          a'2.~ a8 r8 | \mark\default\barNumberCheck #8
          r8 a8\upbow a8 a8 a4 a4 | \time 5/4 r8 g,8 g8 a8 g8 f8 d8\> a'8 b8 c8 |
          \time 4/4 des8\p des8 c4-.-- b8 b8 c4-.-- | 
          des8 des8 c4-.-- b8 b8 c8--\< e16 g16 | a8\mf a8 a8 a8 g4 c4^"ten.x4" |
          fis,8 fis8 fis8 fis8 g4 b,8( d8)  | g2.\> r4 \! |
          R1*4/4*2 | \mark\default\barNumberCheck #17
          <<
            {d1\rest | d1\rest | d1\rest | d1\rest}
            \new CueVoice {
              e,8\mf^"Vla." e8( e2)( e8) c8 | 
              d8 e8 e2( e8) d16( e16) |
              f8 g8 f8 e8 d4 d8( e8) |
              f8 g8 f8 e8 d4. f8\rest
            }
          >> | 
          e8\mf\upbow^"Play" e8( e2)( e8) g8 | b8 a8 a2( a8) g16( a16) |
          c8 c8 c8 c8 c8 a8 f8 e8 | d1 | \mark\default\barNumberCheck #25
          a'8\f\upbow^"Soli"_"expressively" a8( a2) g8 a16( bes16) |
          a2.( a8) a16 a16 | bes8 a8 a8 g8 g4.\breathe c8 | 
          c8 g'8 g8 a8^1 a bes8^2 bes8 c8^3 | bes8 a4 g16( f16) e4. r8 |
          r8 a8^3\upbow f8 c8 des8^"L3" ees8^"L4" des8 ees8 |
          des8\fp\< c8->( c2.) \bar "||" \barNumberCheck #32
          \key a \major
          %% \tempo 8 = 60
          cis?4\ff^"Faster" r4 r2 | R1*4/4*1 | 
          <<
            {d1\rest^"Soli" | d2\rest d4\rest }
            \new CueVoice {
              fis,4\mf^"Vln 2" e8-. e8-. dis4 e8-. e8-. |
              fis4 e8-. e8-. dis4
            }
          >> e8-.\mf^"Play" e8-. | a4-> e8-. e8-. a4-> e8-. e8-. |
          des8-. des8-. e4-> fis?4-> e4-> | f'8->^"L1"\ff_"sub" f8-> f8-> f8-> fis4-> fis4-> |
          g8-> g8-> g8-> g8-> gis4-> gis4-> | a8-> r8 e8-. e8-. f8--^"L1" e8-. r4 |
          r4 e8-. e8-. r8--^"L1" e8-. r4 | R1*4/4*1 | r4 a,8-. a8-. a2->( | 
          a2.)( a8) r8 \bar "||" \mark\default\barNumberCheck #45
          \key d\major
          <<
            {d1\rest | d1\rest }
            \new CueVoice {
              bes,4\mf^"Vln 3/Vla" a8-._"sub" a8-. gis4 a8-. a8-. |
              bes4 a8-. a8-. gis4 a4 
            }
          >>
          b'?4->\ff\downbow a8-> a8-> gis4-> a8-> a8-> |
          b8-> b8-> a4-> gis4-> a4-> | b4->\downbow b8-> b8-> a4-> a8-> a8-> |
          b4-> gis8-> gis8-> a4-> r4 | R1*4/4*1 |
          < bes d,>4^\markup{\column{\line{div.}\line{L1}}}\mp <a cis,>4^"H3" <gis c,>4 <a cis,>4 |
          <bes d,>4 <a cis,>4 <gis c,>4 <a cis,>4 | \mark\default \barNumberCheck #54
          r2 <a' fis,>4.->\ff <a e,>8-.\ff | 
          <a e,>8-. <a fis,>8-. <a g,>8-. <a fis,>8-. <a e,>4-- <a fis,>8-.-> <a fis,>8-.-> |
          <a fis,>4. r8 r4 r8 <a e,>-.\upbow | 
          <a e,>8-. <a fis,>8-. <a g,>8-. <a fis,>8-. <a e,>4-- <a fis,>8-.-> <a fis,>8-.-> |
          <a fis,>4.-> r8 r4 r8 <a e,>8-.\upbow | 
          <a e,>8-. <a fis,>8-. <a g,>8-. <a fis,>8-. <a e,>4-- <a fis,>8-.-> <a fis,>8-.-> |
          << { a4-> r4 r4 a8-.-> a8-.-> } \\
             { e,8-. fis8-. g8-. fis8-. e4-- fis8-.-> fis8-.->}
          >>
          << { a'4-> r4 r4 d,8-.->  d8-.->} \\
             { e,8-. fis8-. g8-. fis8-. e4-- d'8-.-> d8-.->}
          >> \mark\default \barNumberCheck #62
          << { c1->^"L2"\> } \\ { c4-> a4->-"4" f4-> ees->_"L1"} >> |
          << { c'2\! e4-> g4-> } \\ { f,4->\mf aes4-> aes4-> c4->} >> |
          <c a'>4-> <e cis'!>4-> <fis! d'>4->\ff r4
          r2 r4 a,8-.\downbow a8-. | g8-. a8-. g8-. fis8-. e8-. r8 a4->\upbow |
          d4.-> d8-. d4-> d8-. d8-. | cis8-. cis8-. cis8-. cis8-. fis4-> fis4-> |
          a,2.-> a4-> | e'2.-> e4-> | a1:32->(\fp | a2:32) a8->\upbow\ff r8_"rit." r4 |
          \mark\default\barNumberCheck #73
          R1*4/4*4^"Grandioso" |
          \mark\default\barNumberCheck #77
          \tuplet 3/2 { r4^"div." <cis, g'>4\downbow\ff <cis g'>4} \tuplet 3/2 { <fis a,>4 <fis a,>4 <fis a,>4 } |
          \tuplet 3/2 { <e a,>4 <e a,>4 <e a,>4 } \tuplet 3/2 { <d fis,>4 <d fis,>4 <d fis,>4} |
          \tuplet 3/2 4 { <cis e,>4( <d fis,>8) } <e a,>4 r2 |
          \tuplet 3/2 { r4 <g cis,>4 <g cis,>4} \tuplet 3/2 { <fis a,>4 <fis a,>4 <fis a,>4} |
          \tuplet 3/2 { <e a,>4 <e a,>4 <e a,>4 } \tuplet 3/2 { <d fis,>4 <d fis,>4 <d fis,>4} |
          \tuplet 3/2 4 { <g b,>4( <a c,>8) } <b d,>4-> r2 | \mark\default\barNumberCheck #83
          <fis d>8\upbow <g d~>8( <g d>2.) | <fis cis>4 <e cis>2 <fis cis>4 | 
          \tuplet 3/2 {r4 <g d>4\downbow <g d>4} \tuplet 3/2 { <g d>4 <fis d>4 <fis d>4} |
          <fis cis>4 <e cis>2 <fis cis>4 | \tuplet 3/2 {<d b>4 <d b>4 <d b>4} <e cis>2 |
          \tuplet 3/2 { <d b>4 <d b>4 <d b>4} \tuplet 3/2 { <e cis>4 <d b>4 <cis a>4} |
          <d a~>2.( <d a>8) r8 | 
          d,4\downbow \tuplet 3/2 4 { fis4( g8) } \tuplet 3/2 {a8( b8 cis8)} \tuplet 3/2 { d8( e8 fis8^"div.")} |
          <a e>8(->_"rit" g8) e8( cis8) a8( g8) e8( cis8) | a4-. r4 r2 | \mark\default\barNumberCheck #93
          << { d'16(^\markup{\column{\line{div.}\line{slowly}}} a16 d16 fis16) a4 r16 a,16( cis16 e16) a4} \\ 
             { a,2\mf a2} >> |
          << { r16 b16( d16 fis16) b4 fis2} \\ { fis,2 bes4--\upbow b\upbow} >> |
          << { e8.-.\downbow( g16-.\downbow) fis4 e8 fis16( g16) fis8 g16( a16) } \\
             { bes,4 b4 cis4 d4 } >> |
          << { gis4( cis,4) a'2} \\ { cis,4 gis4 cis2} >> |
          b4.--(\downbow cis8)--\downbow a2 | \mark\default\barNumberCheck #98
          fis'8 e8 d8 fis,8 a8 a4. | fis'8 e8 d8 cis8 a2 | R1*4/4*2 |
          r8 d,8\mp\downbow fis8( a8) b8( cis8) b8( cis8) |
          r8 d,8\downbow f8( gis8) b8( cis8) b8( cis8) |
          f8 c,8\downbow_"rit." e8( a8) <b g>8(-"div" <a cis>8) <b g>8 <a cis>8\fermata\breathe |
          r8 a,8\p\downbow d8( e8) <d fis?>8( <e a>8) <fis d'>8( <a e'>8) |
          <d fis>1\fermata






          \bar"|."
        }
      }
    }
  }
}

