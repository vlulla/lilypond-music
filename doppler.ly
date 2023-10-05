\version "2.24.1"
\header {
  title="Doppler"
  piece="RONDO"
  enteredby = "Vijay Lulla (2023.10.03)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/12)
  }
}

voiceconsts = {
  \numericTimeSignature
  \compressEmptyMeasures
  \tempo "Allegretto con moto" 4 = 80
}

atempo = \markup {\italic "a tempo"}
rit = \markup{\italic "rit."}
pocorit = \markup{\italic "poco rit"}
div = \markup{\italic "div"}
uni = \markup{\italic "uni"}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score!

\book {
  \score {
    \new Staff {
      \new Voice {
	\relative c'' {
	  \voiceconsts
          \key c \major
	  %% \set Score.markFormatter = #format-mark-circle-numbers

	  \time 2/4 \clef treble
	  \slashedGrace dis8 e2->\f | \slashedGrace f8 e2-> |
          \repeat volta 2 { e,8-. c'-8-. r8 b8-. | r8 a8-. r8 gis8-. | r8 e8-. e8-. e8-. | e4 e8-. e8-. | e4 e8-. e8-. | e4\cresc e8-. e8-. \! |
          \barNumberCheck   #9 | e8.->e16 e8-. dis8-. | \alternative{ \volta 1 {b4 \slashedGrace f''8 e4} \volta 2 {b,4 \slashedGrace dis'8 e4}} } c,8\f b8\marcato c16 b16 c8 | b8 c4-> cis8 |d8 cis8 d16 cis16 d8 | cis8 d4-> dis8 |
          \barNumberCheck  #16 | e8\p g8_\markup{\italic "sub"} r8 fis8 | r8 e8 r8 dis8 | g8-> g8 r8 fis8 | r8 e8 r8 dis8 | b8 b8 r8 c8 | b8 b8 r8 c8 | b8 b8 r8 gis'8 |
          \barNumberCheck  #23 | r8_\pocorit e8 r8 e8 | e8\tempo \atempo c'8-. r8 b8 | r8 a8-. r8 gis8-. | r8 e8-. e8-. e8-. | e4 fis8-.\cresc fis8-. \! | e4 fis8-. fis8-. e4 b'8-. b8-. |
          \barNumberCheck  #30 | a4 b8-. b8-. | a4(\f fis8) f8-- | e8-. dis8-- d8-. cis8-- | d8-. bes8-- a8-.  gis8-. | a8.-> a16\dim a8 b!8 | a4( gis4) | r8 a4\p\> a8( \!| a8) a8( gis8) b8-. |
          \barNumberCheck  #38 | r8 a4 a8( | a8) a8( gis8) b8-. | r8 a4 a8 | r8 a4 a8 | r2 | r8 a'8(\mp c8 e8) | c2(_\rit\> | c2) | c2\p\fermata

          \barNumberCheck  #47 |\key f \major
                                 c,4\pp^"Poco meno" c4 | c2 | d4 d4 | bis4( c4) | c4.( cis8) | d2 | d2 | e2 | c4 c4 | c2 |
          \barNumberCheck  #57 | b4 f'4 | c2 | c2\<( | c2) | b2\> | c4. r8\! | d4 d4 | ees2 | c2 | bes2 |
          \barNumberCheck  #67 | g'4 e4 | c2 | f2(\> e2) | ees4\p ees4 | ees2 | f4 f4\< | f2 | f4\mf c'4 | bes4 aes4 |
          \barNumberCheck  #77 | f2 | g2\< |<f aes>2^\div\> | <g g>2\< | <f d>2\> | c8^\uni\! r8 d8\pp r8 | d8 r8 e8 r8 | c8 r8 <b d>8 r8
          \barNumberCheck  #85 | <bes( des(>4 <c) c)>4 | r8^\atempo f8^\uni r8 c8 | r8 c8 r8 e8 |r8 g8 r8 d8 | r8 bes8 r8\< bes8 | r8 c8 r8 cis8 \!| r8 d8 r8_\markup{\italic "poco rall"}\> d8 \!|
          \barNumberCheck  #92 | r8 d8 r8 d8 | r8 c8\> r8 c8 \bar "||" f8\mf^\atempo e8 f16 e16 f8 | e8 f4-> fis8 | g8 fis8\cresc g16 fis16 g8\! | fis8 g4-> gis8 | a8 e8 r8 c8 |
          \barNumberCheck  #99 | r8 b8 r8 b8 | r8 <a c>8^\div\p\cresc r8 <a c>8\! | r8 a8^\uni r8 a8 | b8\mf dis8\cresc e4 \! | dis8_"poco a poco" e4 b8 | <cis d>8^\div r8 <cis d>8 r8 | <cis d>8 r8 <cis d>8 r8 |
          \barNumberCheck #106 | b8\f^\uni dis8 e4 | dis8 e4 b8 | <dis fis>8^\div r8 <dis fis>8 r8 | <dis fis>8 r8 <dis fis>8 r8 | e8^\uni r8 c4(\p b8) r8 c4( | b8) r8 bis4 | a4( d4) |

          \barNumberCheck #114 | \key c \major
                                 c8\p^\atempo c'8 r8 b8 | r8 a8 r8 gis8 | r8 e8 e8 e8 | e4 fis8 fis8 | e4 fis8 fis8 | e4 b'!8 b8 | a4 b8 b8 |
          \barNumberCheck #121 | a4.\< g8\f( |f8) g8-- f8-. ees--\> | d8-. c8-- bes8-.\! d8-. | d8. d16 d8 d8-. | d4 cis4 | a8\mf cis8 d4 | cis8 d4 d8 |
          \barNumberCheck #128 | cis8 r8 cis8 r8 | cis8 r8 cis8 r8 | c8 e8 f4 | e8 f4 f8 | e8 r8 e8 r8 | e8 r8 e8 r8 | <ees c>4\ff^\div c16(^\uni ees16) aes16 e16 |
          \barNumberCheck #135 | c8 <ees c>4^\div <ees c>8 | ees8^\uni r8 ees8 r8 | ees8 r8 ees8 r8 | c4 aes16( c16) f16 c16 | aes8 <c aes>4^\div <c aes>8 | <c g>8 r8 <c g>8 r8 | <c g>8 r8 <c g>8 r8 |
          \barNumberCheck #142 | <f c>4. <f c>8 | <ees c>4. <ees c>8 | <ees c>4 <ees' fis>4->\fz | <ees fis>4->_\rit\< <ees fis>4->\fz | r8^\atempo b8\pp^\uni r8 a8  | r8 g8 r8 fis8 | r8 d8 ees8 fis8 |
          \barNumberCheck #149 | r8 d8 ees8 fis8 | d8 r8 ees4( | d8) r8 ees4( | d8) r8 f4(_\rit | f2) | g4\pp g4 | g2 | f4 a4 | f4( g4) | g4.( gis8)
          \barNumberCheck #159 | a2 | ees2 | d2 | r8 c8 r8 c8 | r8 b8 r8 b8 | r8 d8 r8 d8 | r8 f8 r8 f8 | r8 c8 r8 c8 | r8 c8 r8 c8 |
          \barNumberCheck #168 | r8 d8_\markup{\italic "poco rall."} r8 d8 | r8 d8_\rit r8 d8  \bar "||" c8^\atempo r8 e8\p dis8  | e8 r8 e8\pp dis8 | e8 r8 <g( e(>4\mf | <g) e)>4 <g e>4 | <g f>8\f r8 <g f>8 <g f>8 | f8 r8 <f d>8\p <e cis>8 |
          \barNumberCheck #176 | <f d>8 r8 <d'( b(>4 | <d) b)>4 <f, g>4 | <e g>4\f e8\p^\uni dis8 | e8 r8 e8\pp dis8 | e8 r8 <g( e(>4\p | <g) e)>4 <g e>4 | <f g>8\f r8 <f g>8 <f g>8 | <f g>8 r8 <f d>8\pp <e cis>8 |
          \barNumberCheck #184 | <f d>8 r8 <d'( b(>4\p | <d) b)>4 b,4^\uni | c4\mf b8 c8 | b8 c4-> cis8 | d4 cis8 d8 | cis8 d4-> dis8 | e8\cresc r8 e8 r8 | e8\f r8 e4 | f8\p r8_"sub" f8\< r8 |
          \barNumberCheck #193 | f8\f r8 g4-> | r8 g8\pp r8_"sub" b8 | r8 a8 r8 gis8 | r8 f8 r8 e8 | r8 d8 r8 d8 | <c g>2 | <c a>2 | <c g>2 | <c a>2 | <c g>8 r8 c8^\uni r8 |
          \barNumberCheck #203 | e8 r8 g8 r8 | c8\< r8 e8 r8 \! | g8 r8 r4 | <c,, d>8\mf^\div <c d>8 <c d>8\cresc <c d>8 | <c d>8 <c d>8 <c d>8 <c d>8 | <f d>8\< <f d>8 <f d>8 <f d>8 | <f d>8\< <f d>8 <f d>8 <f d>8 | <g e>8\ff <g e>4-.( <g e>8-.)
          \barNumberCheck #211 | <f g>8 r8 <b d>4-> | <g e>8 <g e>4-.( <g e>8-.) | <f g>8 r8 <b d>4-> | <g e>8 <g e>8\mf\< <g e>8 <g e>8 | <g e>8 <g e>8 <g e>8 <g e>8 | g8^\uni r8 g8->\ff r8 | g8-> r8_\rit c8-> r8 | g,2\fermata
          \bar "|."
	}
      }
    }
  }
}

