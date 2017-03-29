\version "2.18.2"
\header {
  title = "XI. MEDITATION"
  subtitle = "from \"Thais\" by Jules Massanet"
  arranger = "JEFF MANOOKIAN"
  enteredby = "Vijay Lulla (2017.03.29)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
  }
}

voiceconsts = {
  \key c \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Andante" 4 = 56
}

%% showLastLength = R1*8 %% show only last few measures!  %% Comment to typeset whole score!

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c'' {
          \voiceconsts
          \clef treble
          R1*2*4/4 |
          e2\p(~ e8 c) \tuplet 3/2 {g8( c e)} |
          a2 b4( c) |
          c,4.( d8) e16( d e f) g8( g,) |
          a2. b8( c) |
          e8\< d( f2)\! cis8-- d-- |
          e--\< f-- g-- a--\! a4( a,) |
          b2\p c4 d16( c b c) |
          d2\< dis2^\markup{\italic "rall."}\f\>|
          e2(~\pp\downbow^\markup{\italic "a tempo"} e8 c) g( a) |
          bes2(~\mp bes8 f)\< g( d) |
          f4(\> e~ e8) gis8--(\! b--\< d--) |
          d2(\mf d8) a-- b--( f) |
          a4(\> g4~ g8)\! b\< d( f) |
          f4.(\f g8) a--( e--) c--( a--) |
          d8.( e16) d16( cis d e) f8--( d--) bes-- f-- |
          aes2\p g4( f) |
          g'4 f8( ees) d4 c8( bes) |
          gis8.( f16) d2 d8-- ees-- |
          ees8.( d16) d2 f8( gis8) |
          gis8.( f16) d16( f g ais) d8--\< dis-- e-- f-- |
          f4--\f e--\> dis8-- d-- b-- g-- |
          e'2(~\p^\markup{\italic "a tempo"} e8 c) \tuplet 3/2 {g8( c e)} |
          a2 b4( c) |
          c,4.( d8) e16( d e f) g8( g,) |
          a2. b8( c) |
          e8\< d( f2)\! cis8-- d-- |
          e8--\< f-- g-- a-- a4(\! a,) |
          b2\p c4 d16( c b c) |
          d2\< dis2^\markup{\italic "rall."}\f\> |
          e2(~\p e8 g,)\< \tuplet 3/2 {c8( e g) } |
          a2.\! b4 |
          c4.(\f g8) e( c g e) |
          f4\p gis2\< b,4(\! |
          b8) b(\p c d) c4. e8-- |
          g4-- c-- e-- g-- |
          c1( |
          c2) c,,2\f |
          d4.( e8) e2-> |
          e2\p d2 |
          c2( c8) b( c d) |
          c2(^\markup{\italic "rall."} c8) b( c d) |
          c2\> g'2\! |
          c1\ppp\fermata

          \bar "|."
        }
      }
    }
    \layout{}
    \midi{}
  }
}

