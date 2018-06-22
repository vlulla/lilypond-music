\version "2.18.2"
\header{
  title = "3. Suite"
  arranger = "GEORG PHILLIP TELEMAN"
  enteredby= "Vijay Lulla (2018.06.01)"
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
  \tempo "Allegro non troppo" 4 = 60
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c''' {
          \voiceconsts
          \set Score.markFormatter = #format-mark-circle-numbers
          \time 4/4 \clef treble
          a4.--(\f\downbow e8--) f4.--( e8--) |
          d4.\downbow c8\upbow b8.--( c16--) d8.--( e16--) | a,2 a4.--(\< b8--) |
          c4.\! b8 b4. a'16( gis16) | \mark\default\barNumberCheck #5
          a4_\dim e4 r8. fis16\downbow g8.--( fis16--) |
          g4 d4 r8. e16\p\downbow fis8.--( e16--) |
          f4 c4 r8. d16\downbow\cresc e8.--( f16--) |
          g4. f16( e16) d8( c16 b16) c8( b16 a16) | g2 c4.--( c8--) |
          f4\f g8.--( a16--) d,4. c8 |\mark\default\barNumberCheck #11
          c2\> r8. g'16\downbow\p a8.--( g16--) |
          f4. e8 d8.--( e16--) f8.--( g16--) | c,2 r8. e16\downbow f8.--( e16--) |
          d4.\< c8 b8.--(\> c16--) d8.--( e16--) | \mark\default\barNumberCheck #15
          a,2\cresc e'4.-0( fis8--) | g4.\! fis8 fis4. e16-4( dis16) |
          e4.--( fis8--) fis4.--( e8--) |
          dis4. e16-4( dis16) e8 fis16 e16-0 fis8 g16 fis16 |
          g8 e16-4 dis16 e8 g16 fis16 g8 a16 g16 a8 b16 a16 |
          b2\ff e,4.--( e8--) | a4_"rall." g8.( fis16) fis4. e8 |
          e1\fermata \bar"||"

          %% \tempo "Allegro"

          \partial 4 \cadenzaOn a,8\p-4( gis8) \cadenzaOff |
          a4-. b4-. c4-. d4-. | e2->-4 a,4-.( e'4-.) |
          a,4-. f'4-. e4-0-. d4-. | e2->-4 a,4-.( b4-.) | c4-.\< b4-. d4-. c4-. |
          b8\> a8-. b8-. c8-.\! b4-. a8(-4 gis8) | \mark\default\barNumberCheck #28
          a4-. b4-. c4-. d4-. | e2-> a,4-.( e'4-.) | a,4-. f'4-. e4-. d4-. |
          e2-> a,4-.( b4-.) | c4-.\< b4-. d4-. c4-. | b2.->\> c8(\mf b8) |
          \mark\default\barNumberCheck #34
          c4-. e4-.-4 d4-. c4-. | d2-> g,4-.( g'4-.) |
          c,4-. e4-.-4 d4-. c4-. | d2-> g,4-. d'8-. e8-. |
          \mark\default\barNumberCheck #38
          f4-.\cresc e4-. f4-. e4-. | f4( g8 a8) g2 | g8->( e8) d8( c8) c4-. b4-. |
          c2.->\> e8-0(\p f8) | \mark\default\barNumberCheck #42
          g4-. e4-. f4-. e4-. | f2-> d4-.( e4-.-4) | d4-.\< c4-. b4-. a4-. |
          b2->\> e,4-. \!a8-.\downbow_\markup{\italic "motto cresc."} bis8-. |
          \mark\default\barNumberCheck #46
          a4-. b4-. c4-. d4-. | e2-> a4-. gis4-. |
          a4-.\upbow\f a,8-. b8-. c4-. d4-. | e2-4 d4-.( c4-.) |
          b4->_\markup{\italic "allarg"} a4-> b4-> gis4-> | a2.->-4\fermata

          \time 3/4
          \mark \markup {\musicglyph #"scripts.segno"}
          \repeat volta 2 {
           {
             e'4-.\downbow\f a,4-._\markup{\small "(2nd time p)"}( a'4-.) |
             f2-> e4-. | d4-. g,4-.( g'4-.) |
             e2-> d4-. | \mark\default\barNumberCheck #56
             c4-. a2-> | d4-. b2-> | e4-4 d8( c8) b8-. a8-. |
             gis2 r4
           }
          }
          \mark\default\barNumberCheck #60
          b4-.\downbow\mf e4-.( e4-.) | cis2-> d4-. | e4-. a,4-.( g'4-.) |
          f2-> e4-. | \mark\default\barNumberCheck #64
          d4-. g4->(\cresc bes4) | cis,4-. f4->( a4-) | a,4-.\f d4-.( cis4-.) |
          d2.\> | \mark\default\barNumberCheck #68
          a4-.\downbow\p d4-.( f4-.) | b,2->^"1H" c4-. | d4-. g,4-.( g'4-.) |
          e2->\cresc d4-. | \mark\default\barNumberCheck #72
          c4-. a2-> | d4-. b2-> | e4---4\f d8( c8) b8-. c8-. |
          a2.->_\markup{\italic "Fine."} \bar"||"
          \mark\default \barNumberCheck #76
          a8-.\downbow\p_\markup{\italic "lightly"} a8-. b8-. b8-. gis8-. gis8-. |
          a8-.-4 a,8-. c8-.-"3L" e8-. a8-. r8 |
          c8-.\downbow c8-. d8-. d8-. b8-. b8-. | c8-. c,8-. e8-. g8-. c8-. r8 |
          \mark\default\barNumberCheck #80
          e8-. e8-. f8-. f8-. d8-. d8-. | e8-.-4 e8-. d8-. d8-. c8-. c8-. |
          b4\< a8-4( gis8) a8-. b8-. | gis2 r4 | \mark\default\barNumberCheck #84
          g8\downbow\mf g8 c8 c8 e,8 e8 | d8 d8 g8 b8 d8 r8 |
          g,8-.\p g8-. c8-. c8-. e,8-. e8-. | d8-. d8-. g8-. b8-. d8-. r8 |
          \mark\default\barNumberCheck #88
          e8-.-4\downbow e8-. c8-. c8-. a8-.-4 a8-. |
          f8( e8 f8) d'8-. e,8-. c'8-. |
          d,8(\< e8 d8) c'8-. g8-. b8-. | c4\mf r4 r4 |
          \mark\default\barNumberCheck #92
          a8-.\pp a8-. b8-. b8-. gis8-. gis8-. |
          a8-.-4 a,8-. c8-.-"3L" e8-. a8-.-4 r8 |
          c8-.\downbow c8-. d8-. d8-. b8-. b8-. |
          c8-. c,8-. e8-. g8-. c8-. r8 |\mark\default\barNumberCheck #96
          e8-.-0\downbow\cresc e8-. f8-. f8-. d8-. d8-. |
          e8-. e8-. d8-. d8-. c8-. c8-. |
          b8-. b8-. a8-.\< a'8-. e8-._\markup{\italic "rit."} gis8-. |
          a8-.\> a,8-. c8-._\markup{D. S. \musicglyph #"scripts.segno" al Fine} e8-. \!a-. r8 \bar "||"

          \bar"|."
        }
      }
    }
  }
}

