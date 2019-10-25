\version "2.18.2"
\header {
  title="Symphony No. 7"
  subtitle="Second Movement"
  arranger = "Beethoven"
  enteredby = "Vijay Lulla (2019.08.30)"
}

\layout {
  \context {
    \Score
      \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/56)
  }
}

voiceconsts = {
  \key a \major
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Allegretto" 4 = 74
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score!

\book {
  \score {
    \new Staff {
      \new Voice {
	\relative c' {
	  \voiceconsts
	  \set Score.markFormatter = #format-mark-box-alphabet
	  \time 2/4 \clef treble
	  a'2\f\>~ | a2 | cis4\p\downbow cis8\upbow cis8\upbow | cis4 cis4 |
          cis4 cis8\upbow cis8\upbow | cis4 cis4 | cis4 cis8\upbow dis8\upbow |
          e4 e4 | e4 e8\upbow e8\upbow | e2 | \mark\default e4\downbow e8\upbow fis8\upbow |
          \barNumberCheck #12
          gis4 gis4 | dis4 dis8\upbow eis8\upbow | fis4 fis4 | cis4 cis8\upbow cis8\upbow |
          cis4 cis4 | cis4 dis8\upbow eis8\upbow | fis2 | \mark\default \barNumberCheck #19
          e4 e8\upbow fis8\upbow | gis4 gis4 | dis4 dis8\upbow eis8\upbow | fis4 fis4 |
          cis4 cis8\upbow cis8\upbow | cis4 cis4 | cis4 dis8\upbow eis8\upbow | fis2 |
          \mark\default \barNumberCheck #27
          a,2\downbow^"III" | gis2 | gis16( a16 b8~ b8 a16 gis16) | gis8( a8) a4 |
          a4. a16^"I"( b16) | bis8( cis8) cis4 | b16( cis16 d8~ d8 cis16 b16) | b8( cis8) cis4 |
          \mark\default \barNumberCheck #35
          cis2 | bis2 | b8( gis16 ais16) b8( cis16 b16) | b8( ais?8) a4 | a2 | gis4 a4 |
          gis16( a16 b8~ b8 a16 gis16) | fis8 fis16( gis16) a8 a16( b16) |
          \mark\default \barNumberCheck #43
          cis2 | bis2 | b8( gis16 ais16) b8( cis16 b16) | b8( ais?8) a4 | a2 |
          gis4 a4 | gis16( a16 b8~ b8 a16 gis16) | fis4  r4 | cis4 dis8 eis8 | fis2 |
          b4 b8 b8 | a4 r4 | cis4\<^"rit." dis8 eis8| dis8\f\> eis8 fis4( | fis2) \! \bar "|."
	}
      }
    }
  }
}

