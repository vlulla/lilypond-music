\version "2.22.1"
\header {
  title="Simple Hoedown"
  arranger="Jason W. Krug (ASCAP)"
  enteredby = "Vijay Lulla (2023.01.25)"
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
  \key d \major
  \numericTimeSignature
  \compressEmptyMeasures
  \tempo "Energetically" 4 = 120
}

%% showLastLength = R1*8 %% last few measures %% Comment to typeset whole score!

\book {
  \score {
    \new Staff {
      \new Voice {
	\relative c' {
	  \voiceconsts
	  \set Score.markFormatter = #format-mark-box-barnumbers
	  \time 4/4 \clef treble
	  <d a'>4\f\downbow <d a'>4 <d a'>8 <d a'>8 <d a'>4 | <d a'>8 <d a'>4 <d a'>8 <d a'>4 <d a'>4 | R1*2 | \barNumberCheck #5 
          \mark\default
          <d a'>4\mp\downbow <d a'>4 <d a'>8 <d a'>8 <d a'>4 | <d a'>8 <d a'>4 <d a'>8 <d a'>4 <d a'>4 | <d a'>4 <d a'>4 <d a'>8 <d a'>8 <d a'>4 |
          <d a'>8 <d a'>4 <d a'>8 <d a'>4 <d a'>4 | <d a'>4\mf <d a'>4 <d a'>8 <d a'>8 <d a'>4 | <d a'>8 <d a'>4 <d a'>8 <d a'>4 <d a'>4 | 
          <d a'>4 <d a'>4 <d a'>8 <d a'>8 <d a'>4 | <d a'>8 <d a'>4 <d a'>8 <d a'>4 <d a'>4 | \barNumberCheck #13 \mark\default 
          <d g,>4->-.\f\downbow <d g,>4->-. g4.->\downbow e8 | fis4 fis8 a8-4 g8 e8 d4 | <d g,>8->-.\downbow <d g,>8->-. <d g,>4->-. g4.->\downbow e8 |
          fis8( a8-4) g8 fis8 g2 | <d g,>4->-.\downbow <d g,>4->-. g4.-> e8 | fis4 fis8 a8-4 g8 e8 d4 | <d g,>4->-.\downbow <d g,>4->-. g4.-> e8 | 
          g8 fis8 g8 e8 a4 a4 | \barNumberCheck #21 \mark\default
          <d, a'>4\mp\downbow <d a'>4 <d a'>8 <d a'>8 <d a'>4 | <d a'>8 <d a'>4 <d a'>8 <d a'>4 <d a'>4 | <d a'>4 <d a'>4 <d a'>8 <d a'>8 <d a'>4 |
          <d a'>8 <d a'>4 <d a'>8 <d a'>4 <d a'>4 | <d a'>4\mf <d a'>4 <d a'>8 <d a'>8 <d a'>4 | <d a'>8 <d a'>4 <d a'>8 <d a'>4 <d a'>4 |
          <d a'>4 <d a'>4 <d a'>8 <d a'>8 <d a'>4 | <d a'>8 <d a'>4 <d a'>8 <d a'>4 <d a'>4 | \barNumberCheck #29 \mark\default
          \repeat volta 2 {
            e4.(\f\downbow d8) c2 | e4.( d8) e4-.( fis4-.) | d4.( c8) b2 | d4.( c8) d4-.( fis4-.) | e4.( d8) c2 | e4.( d8) e4-.( d4-.) |
            d8 d4 d8 d4 d4 | cis4 cis4 cis4->-. r4 | \barNumberCheck #37 \mark\default
            d4\f\downbow e4 fis2 | g4 a4 d,2 | d4 e4 fis2 | g8 fis8 g8 a8-4 d,2 | <d a'>4\mf^\markup{\italic{pizz., arco (2x)}} <d a'>4 <d a'>8 <d a'>8 <d a'>4 |
            <d a'>8 <d a'>4 <d a'>8 <d a'>4 <d a'>4 | <d a'>4 <d a'>4 <d a'>8 <d a'>8 <d a'>4 | <d a'>8 <d a'>4 <d a'>8 <d a'>4 <d a'>4 |
          } \barNumberCheck #45 \mark\default
          b'2.\mp\downbow a4 | b2 d2 | <a e'>8 <a e'>4 <a e'>8 <a e'>4 <a e'>4 | <a e'>8 <a e'>4 <a e'>8 <a e'>4 <a e'>4 | <d, a'>4-.-> r4 r2
          \bar "|."
	}
      }
    }
  }
}

