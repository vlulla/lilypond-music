\version "2.18.2"
\header {
  title="Student's Concertino #4"
  piece="Opus 8"
  arranger = "Adolf Huber"
  enteredby = "Vijay Lulla (2020.12.11)"
}

\layout {
  \context {
    \Score
      %% \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/12)
  }
}

voiceconsts = {
  \key g \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Allegro Moderato"
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score!

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c'' {
          \voiceconsts
          %% \set Score.markFormatter = #format-mark-circle-numbers
          \time 4/4 \clef treble
          R1*4 |
          << { r1 } \new CueVoice { \stemUp  d4.^"piano." d8 d4. d8} >>
          b2\mf\downbow d4\upbow( g4) | b4.(\< a8) g2 | e4(-0\< g4->~g8\!) fis8( e8 d8) |
          d4.(\> c8) b4 r4\! | b2\downbow\mf e4-0\<(g4) | b4.(\! a8) g4( e4-0) |
          fis8( a8 g8 fis8) fis4.(\> e8-4) | d2.\! d4\mf | e4-4( a,4~ a8) b8\upbow( c8 e8-4) |
          e4.( cis8) d4-.(\< d4-.) | ees4(\! g4) f8( ees!8-4 bes8\> c8) | d2.\! d4 |
          e!4\mf-4->( a,4~ a8) b8( c8 e8-4) | e8(\< cis8 d8 g8)\! b4.(-> g8) |
          fis8(\f a8 g8 fis8) b4.( a8) | d,2.\> c4\upbow\! | b2\mf\downbow d4( g4) |
          b4.( a8) g2 | e4-0(\< g4~->\! g8) fis8( e8 d8) | d4.->( c8) b4 r4\! |
          b2\mf\downbow e4-0( g4) | b4.( a8) g4( b,4) | d4(-\markup{\italic rit.} b4) g4( c4) |
          b2 a4( b4) | g8\f-\markup{\italic {a tempo}} b16-. c16-. d8-. e8-.-4 d8-- b16-. c16-. d8-. g8-. |
          fis8-- a,16-. b-. c( b) a-. g-. fis8-- fis16( e')-4 e( d) d( c) |
          b8-- b16-. c16-. d8-. e8-.-4 d8-- b16-. c16-. d8-. g8-. |
          fis8-- fis16( a) g-. fis-. e-.-0 d-. cis-. b-. a-. b-. cis-. d-. e-.-0 fis-. |
          d8-- fis16(\p g) a-. g-. fis-. e-.-0 d8-- fis,16\f( g) a---4 g-- fis-- e-- |\barNumberCheck #35
          d8-- g'16(\p a) b-. a-. g-. fis-. e8---4 g,16(\f a-0) b-- a---0 g-- fis-- |
          e8-- e'16-0( fis)\< g-. fis-. e-.-0 d-. cis-. b-. a-. b-. cis-.\! d-. e-.-0 fis-. |
          g16-. a-. b-. a-. g-.\> fis-. e-.-4 d-. cis-. b-. a-. b-.\! cis-. d-. e-.-0 fis-. |
          d8-- fis16-(\p g16) a-. g-. fis-. e-.-0 d8-- fis,16(\f g) a---4 g-- fis-- e-- |
          \barNumberCheck #39
          d8-- g'16(\p a) b-. a-. g-. fis-. e8-.-4 g,16(\f a-0) b-- a---0 g-- fis-- |
          e8-- a16-0( b) cis-. b-. a-.\< b-. cis-. d-. e-. fis-. g-. a-.\! b-. a-. |
          \barNumberCheck #41
          g16-. fis-. e-.-4 d-. cis-. b-. a-. b-. cis-. d-. e-. fis-. a-. g-. fis-. e-.-4 |
          d4-- d--\f d-- d-- | ees2-\markup{\italic rit.} c! | f4.( g8 f4) f,4\upbow\mf |
          \barNumberCheck #45
          \key bes \major \time 6/8
          bes8(\<\downbow d g)\! f(\> d bes)\! | c4( d8) bes4( f8) | bes8(\< d g)\! f(\> d bes)\! |
          a4-0( cis8) d4( f,8) | bes8(\< d g)\! f(\> d bes)\! |
          \barNumberCheck #50
          c!4( d8) bes4( f8) | g8( a bes) d( bes g) | d4( fis8) g4 r8 |
          bes,!4.\f\downbow^\markup{(with broad bowing)} d4.-0 | f4. d4( d8-.) |
          bes4. d4.-0 | e4( g8) f4( ees8) | bes4. d4.-0 | f4. d4( d8-.) | bes'4. d4. |
          f4. d4( bes8-.) | \barNumberCheck #61
          d16-.\p ees16-.-4 d8-. bes8-. g4 bes8 | a16-. bes16-. a8-. fis8-. g4 d8 |
          d'16-.\< ees16-.-4 d8-. cis8-. d4\! g8 | f16-. g16-. f8-. c?8-.\> f4 ees8-4\! |
          \barNumberCheck #65
          d16-. ees16-.-4 d8-. bes8-. g4 bes8 | a16-. bes16-. a8-. fis8-. g4 g8 |
          c8 d ees-4 d g g | d16-. c16-. bes8-. a-. g4 f?8\upbow | \barNumberCheck #69
          bes8(\< d g)\! f8(\> d bes)\! | c4( d8) bes4( f8) | bes8(\< d g)\! f8(\> d bes8)\! |
          a4( cis8) d4( f,8) | bes8(\< d g)\! f8(\> d bes8)\! | \barNumberCheck #74
          c4( d8) bes4( f8) | g8( bes ees-4) d8( bes f8) | c'4( d8) bes4 r8 | R1*6/8*4 |
          << { r1*6/8 } \new CueVoice { \stemUp  e4->-"rit" e8 ees-> ees8} >> |
          << { r1*6/8 } \new CueVoice { \stemUp  d4.->( d8) r8} >> |
          \key g \major \time 4/4 \barNumberCheck #83
          b2\mf\downbow^"Tempo I." d4(\upbow\< g)\! | b4.( a8) g2 | e4-0( g4~\> g8) fis8( e d8) \! |
          d4.( c8) b4 r4 | b2\mf\downbow e4(-0\< g)\! | b4.( a8) g4( e-0) | \barNumberCheck #89
          fis8( a g fis) fis4.(\> e8-4)\! | d2. d4\mf | e4(-4_"espress." a,4~ a8) b8(\upbow c e-4) |
          e4.( cis8) d4-.( d4-.)\< | ees4-4( g)->\! f8(\> ees-4 bes c)\! | \barNumberCheck #94
          d2. d4 | e(->-4\mf a,4~ a8) b8(\upbow c e-4) | e8(\< cis8 d g)\! b4.(-> g8) |
          fis8(\f a g fis) b4.(-> a8) | d,2. d4\upbow | \barNumberCheck #99
          c16(\mf d fis a) b8.(-> a16) c,16( d fis a) b8.(-> a16) |
          a16( g) fis-. g-. a-. g-. fis-. e-.-0 d4( e8-4 d8) |
          c16( d fis a) b8.(-> a16) c,16( d fis a) b8.(-> a16) | \barNumberCheck #102
          fis16( g) b-. a-. g-. fis-. g-. e-.-0 d4-.(\upbow d4-.) |
          cis8--\f\downbow^"(At the nut)" a-- <a a'>-- <a g'>-- <a fis'>-- d-- a-- d-- |
          cis8-- a-- <a a'>-- <a g'>-- <a fis'>-- d-- a-- d-- | \barNumberCheck #105
          b16(\mf d16) g-. a-. b4--->^\markup{\italic ten.} a,16( d) fis-. g-. a4--->^\markup{\italic ten.} |
          g16( fis) e-.-0 d-. cis16( a) b-. cis-. d8-. a-. fis-. d-. |
          <d c'>8\f\downbow <d b'>16( <d c'>) <d d'>-. <d c'>-. <d b'>-. <d a'>-. <d b'>8-. <b' g'> <d, b'> <b' g'> |
          \barNumberCheck #108
          <d, c'>8-. <d b'>16( <d c'>16) <d d'>-. <d c'>-. <d b'>-. <d a'>-. <d b'>8-. <b' b'>-. <d, b'>-. <b' g'>-. |
          c16(\mf e)-0 gis-. a-. b8(-> a) b,16( d) fis-. g-. a8(-> g) | \barNumberCheck #110
          fis16-. d-. cis-. d-. e-.-4 d-. c-. a-. b8( e)-4 d8( cis) |
          <d, c'!>8-.\f <d b'>16( <d c'>) <d d'>-. <d c'>-. <d b'>-. <d a'>-. <d b'>8-. <b' g'>-. <d, b'>-. <b' g'>-. |
          <d, c'>8-. <d b'>16( <d c'>) <d d'>-. <d c'>-. <d b'>-. <d a'>-. <d b'>8-. <b' b'>-. <d, b'>-. <b' b'>-. |
          \barNumberCheck #113
          c16(\mf e)-0 gis-. a-. b8(-> a) b,16( d) fis-. g-. a8(-> g) |
          fis16-. d-. cis-. d-. e-.-4 d-. e-0-. fis-. g8-- g16(\f b) a-. g-. fis-. e-.-0 | \barNumberCheck #115
          d8-- d16( g) fis-. e-.-0 d-. c-. b8-- b16( d) c-. b-. a-.-0 g-. |
          d8-. <d d'>-> <a' e'>-> <a fis'>-> <b g'>-> g'16( b) a-. g-. fis-. e-.-0 | \barNumberCheck #117
          d8-- d16( g) fis-. e-.-0 d-. c-. b8-- b16( d) c-. b-. a-.-0 g-. |
          d8-. <d d'>8-> <d' b'>-> <d a'>-> <b g'>4-> r8.\breathe <d b'>16\ff\upbow |
          <d b'>2\downbow r4 r8.\breathe <b g'>16\upbow | <b g'>2\fermata\downbow r2
          \bar "|."
        }
      }
    }
  }
}

