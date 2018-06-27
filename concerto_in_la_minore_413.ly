\version "2.18.2"
\header{
  title = "CONCERTO in La minore #413"
  enteredby= "Vijay Lulla (2018.06.04)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
      proportionalNotationDuration = #(ly:make-moment 1/10)
  }
}

voiceconsts = {
  \key c \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Allegro"
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          \set Score.markFormatter = #format-mark-box-barnumbers
          \time 4/4 \clef treble
          a''4\f\downbow gis4 a16 g16 f16 e16 d16 c16 b16 a16 |
          e'8 e,8 e8-"I." fis16 gis16 a8 a16 b16 c8 c16 d16 |
          e8 e,8 e8 fis16 gis16 a8 a16 b16 c8 c16 d16 |
          e8 e,8 r8-"div."
          <<
              \new Voice = "first" { \voiceOne e'8 e16 f16 e8}
              \new Voice = "second" { \voiceTwo b8 c16 d16 c8 }
          >>
          r8 e8 |
          <<
            \new Voice = "first" {\voiceOne e16 f16 e8 r8 e8 e16 f16 e8 r8 e8}
            \new Voice = "second" {\voiceTwo b4 r8 b8 c16 d16 c8 r8 c8 }
          >> |
          \mark\default
          f16 g16 f16 g16 f16 g16 f16 g16 f8 d8 b8 g8 |
          e'16 f16 e16 f16 e16 f16 e16 f16 e8 c8 a8 f8 |
          d'16 e16 d16 e16 d16 e16 d16 e16 d8 b8 gis8 e8 |
          c'8 a8 r8 e'8 e8( d8) gis8( d8) | \mark\default
          b'8( d,8) f8( d8) e8( d8) f8( d8) |
          gis8( d8) b'8( d,8) e8( d8) b'8( d,8) | \barNumberCheck #12
          e8( d8) f8( d8) gis8 e8 a8 c,8 |
          b8 a'8 b,8 gis'8 a4 r8 e8 | f8( bes,8) f'8( bes,8) e8( bes8) e8( bes8) |
          \mark\default\barNumberCheck #15
          e8( a,8) e8( a8) gis8 e8 a8 c,8 |
          b8 a'8 b,8 gis'8 a8.( b16) c8.( d16) |
          e8 a,8 a8 e'8 f8 f8 f8^\markup{\italic "tr"} e16( d16) |
          e8 a,8 a8 e'8 f8 f8 f8^\markup{\italic "tr"} e16( d16) |
          e8 a,8 r8 e'8\upbow f16 e16 f8 r16 d16 g16 f16 |
          \mark\default\barNumberCheck #20
          e16 d16 e8 r16 c16 f16 e16 d16 c16 d8 r16 b16 e16 d16 |
          c16 b16 a16 b16 c16 d16 e16 d16 c16 b16 a16 b16 c16 d16 e16 d16 |
          c16 b16 a16 b16 c16 d16 e16 d16 c8 a8 r8 e'8\upbow\f |
          f8( bes,8) f'8( bes,?8) e8( bes8) e8( bes8) |
          e8( a,8) e'8( a,8) gis8 e8 a8-4 c,8 |\mark\default
          \barNumberCheck #25
          b8 a'8-4 b,8 gis'8 a8.( gis?16) a8.( b16) |
          c4. c8 d8 d8 d8^\markup{\italic "tr"} c16( b16) |
          c4. c8 d8 d8 d8^\markup{\italic "tr"} c16( b16) |
          c4 r8 c8\p d4 r8 d8 | g,4 r8 c8 f,4 r8 b8 |\mark\default
          \barNumberCheck #30
          e,8. e'16\f a16 c,16 a'16 c,16 d16( c16 b16) d16\upbow g16 b,16 g'16 b,16 |
          c16( b16 a16) c16 f16 a,16 f'16 a,16 b16( a16 g16) b16 e16 g,16 e'16 g,16 |
          a16( g16 f16) a16 d16 e16 d16 c16 b16( a16 g16) d'16 g16 a16 g16 f16 |
          e16( d16 c16) g16 c16 d16 c16 b16 a16( g16 f16) a16 d16 e16 d16 c16 |
          b16( a16 g16) b16 c16 e,16 c'16 e,16  f16 c'16 f,16 c'16 g16 c16 g16 c16 |
          \mark\default \barNumberCheck #35
          a16 c16 a16 c16 e,16 c'16 e,16 c'16 f,16 c'16 f,16 c'16 g16 c16 g16 c16 |
          a16 c16 a16 c16 e,16 c'16 e,16 c'16 f,16 c'16 f,16 c'16 g16 b16 g16 b16 |
          r16 g'16\f\upbow c,16 g'16 c,16 g'16 c,16 g'16 c,16 a'16 c,16 a'16 c,16 a'16 c,16 a'16 |
          c,16 g'16 c,16 g'16 c,16 g'16 c,16 g'16 c,16 a'16 c,16 a'16 c,16 a'16 c,16 a'16 |
          g8 c,8 r8 g'8 a16 b16 a16 b16 a16 b16 a16 b16 |\mark\default
          \barNumberCheck #40
          a8 f8 d8 b8 g'16 a16 g16 a16 g16 a16 g16 a16 |
          g8 e8 c8 a8 f'16 g16 f16 g16 f16 g16 f16 g16 |
          f8 d8 b8 g8 e'16 d16 c16 b16 a16 g16 f16 e16 |
          g'16 f16 e16 d16 c16 b16 a16 g16 a'16 g16 f16 e16 d16 c16 b16 a16|
          a'8 a,8 r8 a'8\upbow a16 c16 c16 fis,16 fis16 a16 a16 dis,16 |
          \mark\default \barNumberCheck #45
          dis16 fis16 fis16 a,16 a16 c16 c16 fis,16 fis16 a16 a16 dis,16 dis16 fis?16 fis16 b,16 |
          b4 r8 fis''8 g8 fis16 e16 dis8.(^\markup{\italic "tr"} e16) |
          e4 r8 e8 f?8 e16 d?16 cis8.(^\markup{\italic "tr"} d16) |
          d8 d8 d16( e16) d8 r8 e8 e16( f16) e8 |
          r8 f8 f16( g16) f8 r8 g8 g16( a16) g8 |
          \mark\default \barNumberCheck #50
          a4( a16) g16 a16 bes16 g4( g16) f16 g16 a16 |
          f8 e16 d16 cis8.^\markup{\italic "tr."}( d16) d8 d8-1\f f8 a8 |
          d4 cis4 d16 c16 bes16 a16 g16-4 f16 e16 d16 |
          a'8 a,8-0 a8 b16 cis16 d8 d16 e16 f8 f16 g16 |
          a8 a,8 a8 b16 cis16 d8 d16 e16 f8 f16 g16 |
          \mark\default\barNumberCheck #55
          a16 a16 e16 a16 cis,16 a'16  e16 a16 cis,16 a'16 e16 a16 cis,16 a'16 e16 a16 |
          d,16 a'16 f16 a16 d,16 a'16 f16 a16 d,16 a'16 f16 a16 d,16 a'16 f16 a16 |
          d,16 bes'16 f16 bes16 d,16 bes'16 f16 bes16 d,16 bes'16 f16 bes16 d,16 bes'16 f16 bes16 |
          c,?16 bes'16 e,16 bes'16 \repeat unfold 3 {c,16 bes'16 e,16 bes'16} |
          \repeat unfold 4 {c,16 a'16 f16 a16} |
          \mark\default\barNumberCheck #60
          \repeat unfold 4 {bes,16 a'16 f16 a16} |
          \repeat unfold 4 {bes,16 g'16 d16 g16} |
          cis,8 a8 r8 e'8\f\upbow e8( d8) gis8( d8) |
          b'8( d,8) f8( d8) e8( d8) b'8( d,8) |
          e8( d8) b'8( d,8) gis8 e8 a8 c,8 |
          \mark\default \barNumberCheck #65
          b8 a'8 b,8 gis'8 a,8.( b16) c8.( d16) |
          e8 a,8 a8 e'8 f8 f8 f8^\markup{\italic "tr."} e16( d16) |
          e8 a,8 a8 e'8 f8 f8 f8^\markup{\italic "tr."} e16( d16) |
          a16 a16 b16 c16 d16 e16 fis16 gis16 a4 gis4 |
          a16 g!16 f16 e16 d16 c16 b16 a16 e'8 e,8 e8 fis16 gis16 |
          \mark\default\barNumberCheck #70
          a8 a16 b16 c8 c16 d16 e8 e,8 e8 fis16 gis16 |
          a8 a16 b16 c8 c16 d16 e16 b16 b16 e16 e16 b16 b16 e16 |
          \repeat unfold 2 {e16 b16 b16 e16} \repeat unfold 2 { e16 c16 c16 e16} |
          \repeat unfold 2 {e16 c16 c16 e16} \repeat unfold 2 { f16 c16 c16 f16} |
          \repeat unfold 2 {f16 c16 c16 f16} \repeat unfold 2 { f16 b,16 b16 f'16} |
          \mark\default\barNumberCheck #75
          \repeat unfold 2 {f16 b,16 b16 f'16} \repeat unfold 2 {e16 b16 b16 e16} |
          \repeat unfold 2 {e16 b16 b16 e16} \repeat unfold 2 {e16 a,16 a16 e'16} |
          \repeat unfold 2 {e16 a,16 a16 e'16} \repeat unfold 2 {d16 a16 a16 d16} |
          d16 a16 a16 d16 d16 a16 a16 d16 gis,8 f8 r8 e'8\f |
          e16( f16) e8 r8 e8 e16( f16) e8 r8 e8 |
          \mark\default\barNumberCheck #80
          e16( f16) e8 r8 e8 f16 g16 f16 g16 f16 g16 f16 g16 |
          f8 d8 b8 g8 e'16 f16 e16 f16 e16 f16 e16 f16 |
          e8 c8 a8 f8 d'16 e16 d16 e16 d16 e16 d16 e16 |
          d8 b8 gis8 e8 c'8 a8 r8 e'8 |
          f8( bes,8) f'8( bes,8) e8( bes8) e8( bes8) |
          \mark\default\barNumberCheck #85
          e8( a,8) e'8( a,8) gis8 e8 a8 c,8 |
          b8 a'8 b,8 gis'8 a,8 a'8 a16( b16)  a8 |
          r8 b8\upbow b16( c16) b8 r8 c8 c16( d16) c8 |
          r8 d8\upbow d16( e16) d8 e4( e16) d16 e16 f16 |
          d4( d16) c16 d16 e16 c8 b16 a16 gis8.(^\markup{\italic "tr."} a16) |
          \mark\default\barNumberCheck #90
          a4 r8 e'8\upbow\f f8( bes,8) f'8( bes,8) |
          e8( bes8) e8( bes8) e8( a,8) e'8( a,8) |
          gis8 e8 a8 c,8 b8 a'8 b,8 gis'8 | a1\fermata
          \bar"|."
        }
      }
    }
  }
}

