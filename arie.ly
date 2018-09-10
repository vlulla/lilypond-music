\version "2.18.2"
\header{
  title = "Arie."
  piece = "Violine I."
  arranger = "J. S. Bach"
  enteredby= "Vijay Lulla (2018.09.08)"
}

#(set-global-staff-size 18)

\layout {
  indent = #0
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/12)
  }
}

voiceconsts = {
  \key f \major
  %% \numericTimeSignature
  \compressFullBarRests
  \tempo "Andante"
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          \set Score.markFormatter = #format-mark-box-alphabet
          \time 4/4 \clef treble
          \partial 8 c'8\p\upbow |
          c8( a16 bes16) c8( f8^3) e8( d8) c4^2 |
          c8( a16 bes16) c8( f8^3) e8(\< d8) c8--( c8--) |
          f8(\! a16 g16) f8( c8 d8) d16( cis16 d8) g,8--^1 |
          g8( a8\> bes8 c8) a4( r8\! c8--)\p |
          \barNumberCheck #5
          c8( a16 bes16) c8( f8^3) e8( d8) c4^2 |
          c8( a16 bes16) c8( f8) e8(\< d8) c8--( c8--) |
          f8(\! a16 g16) f8( c8 d8) d16( cis16 d8) g,8--^1 |
          g8( a8\> bes8 c8) a4( r8\! c8--)\p |
          \barNumberCheck #9
          c8( a16 bes16) c8( f8^3) bes,8( a8) g8( c8) |
          c8^2( a16 bes16) c8( f8^3) bes,8( a8) g8( e'8) |
          f8( d16^3 c16) d8^1(\cresc f8) g4.( f8) |
          e8( d16^3 c16) d8( g,8) c4.( g8--) |
          \barNumberCheck #13 \mark\default
          g8(\mf e16 f16) g8^1( c8) b8( a8) g4 |
          g16^3( f16 e16 f16) g8^1( c8) b8( a8) g8--( g8--^3) |
          c8( e16 d16) c8( g8 a8) a16( gis16 a8) d,8-- |
          d8( e8 f8 g8) e4. g'8^4\upbow |
          \barNumberCheck #17
          bes,!8^1(\p a8\<) bes8( g'8^4\!) bes,8( a16 g16\>) a8( c8\!) |
          ees8( c8^2) a8(\< ees'8\!) ees8( d16\> c16) d8--(\! d8--^1) |
          bes8( f'8)\cresc e8--( d8--) a8-0( g'8-4) f8--( e8--) |
          a8-0( cis,8-2) d8--^1 f8-- e4.(\> a,8-0\!) |
          \barNumberCheck #21
          bes8-3( a8\<) gis8-- a8--\! g'!8( e8\> cis8 a8) |
          bes8(\p a8) gis8-- a8-- g'!8( e8 cis8 a8) |
          d8( f16 e16) d8--(\cresc d8--) g,4 e'8( f16 g16) |
          f8( e16 d16) e8( cis8-2) d4. a8\f |
          \barNumberCheck #25 \mark\default
          a8( f16 g16) a8( d8) g,8( f8) e8( a8) |
          a8( f16 g16) a8( d8) g,8( f8) e8( a8-2) |
          d8( f16 e16) d8--( d8--) e4 e8( f16 g16) |
          f8( e16 d16) e8( cis8) d4. a8\mf |
          \barNumberCheck #29
          f'8( e8 d8 f8) aes,8( g8) g8( g'8) |
          ees8-4( d8 c8 d8-1) ees?8( f16 g16) f8( ees?8) |
          d8-3( c8 d8-1 g8) c,8-2( bes16 a16) bes8( g8) |
          c8( d16 ees16) d8( bes8)\> g4.( c8--) |
          \barNumberCheck #33
          c8(\p a16 bes16) c8( f8) e8( d8) c4 |
          c8( a16 bes16) c8(\< f8) e8( d8) c8--( c8--) |
          f8(\mf a16 g16) f8( c8) d8-- d16( cis16 d8) g,8-- |
          g8( a8 bes8 a8\>) a4 r8 f'8 |
          \barNumberCheck #37 \mark\default
          d8( bes8) r4 g'4.(\upbow\cresc g,8--) |
          e'8( c8) r8 e8\upbow a8( cis,16 b16) cis8( e8) |
          f8( d16 c16) d8( f8) g,16( a16 bes8~ bes8 a16 g16) |
          a8( d16 c16 bes16 a16 g16 f16) a8( g8) r8 c8\upbow\mf |
          \barNumberCheck #41
          c8( a16 bes16) c8( f8) bes,8( a8 g8) c8-- |
          c8( a16 bes16) c8( f8) bes,8( a8 g8) c8-- |
          f8(\< a16 g16) f8( c8) d8 d16( cis16 d8) e16-- f16-- |
          a,8--\f g16--_\markup{\italic "poco riten."} f16-- g8--^1 e'8-- f4( f8) r4
          \bar"|."
        }
      }
    }
  }
}

