\version "2.18.2"
\header {
  title = "BLUE-FIRE FIDDLER"
  piece = "Violin I"
  arranger = "SOON HEE NEWBOLD"
  enteredby = "Vijay Lulla (2017.08.29)"
}

\layout {
  \context {
    \Score {
      %% \override BarNumber.break-visibility = ##(#f #t #t)
      \override MultiMeasureRest.expand-limit = #1
      %% \override SpacingSpanner.bae-shortest-duration = #(ly:make-moment 1/20)
    }
  }
}

voiceconsts = {
  \numericTimeSignature
  \compressFullBarRests
  \tempo "Presto" 4=120
}

%% showLastLength = R1*8 %% while typesetting.  %% Comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          \key d \major
          \set Score.markFormatter = #format-mark-box-barnumbers 
          a'8\downbow\mf b16->\upbow( a16) a8 b16->( a16) a8 b16->( a16) a16\downbow g16(\upbow e16 g16) |
          a8\downbow b16->( a16) a8 b16->( a16) a16( e16) b'8 cis4-> \breathe |
          a8\downbow b16->( a16) a8 b16->( a16) a8 b16->( a16) a16 g16( e16 g16) |
          a8 b16->( a16) a8 b16->( a16) a16( e16) b'8 a4-> \breathe |
          \barNumberCheck #5
          \mark\default
          <a e'>8\f\downbow <b e>16->( <a e'>16) <a e'>8 <b e>16->( <a e'>16) <a e'>8 <b e>16->( <a e'>16)  <a e'>16\downbow e'16\upbow e16 e16 \breathe |
          <a, e'>8\f\downbow <b e>16->( <a e'>16) <a e'>8 <b e>16->( <a e'>16) <a e'>16( e16) <b' e>8 <cis e>4-> \breathe |
          <a e'>8\f\downbow <b e>16->( <a e'>16) <a e'>8 <b e>16->( <a e'>16) <a e'>8 <b e>16->( <a e'>16)  <a e'>16 e'16 e16 e16 |
          <a, e'>8\f\downbow <b e>16->( <a e'>16) <a e'>8 <b e>16->( <a e'>16) <a e'>16( e16) <b' e>8 <a e'>4-> \breathe |
          \barNumberCheck #9
          a'8\downbow b16->( a16) a8 b16->( a16) a8 b16->( a16) a16 g16( e16 g16) |
          a8 b16->( a16) a8 b16->( a16) a16( e16) b'8 cis4-> \breathe |
          a8\downbow b16->( a16) a8 b16->( a16) a8 b16->( a16) a16 g16( e16 g16) |
          a8 b16->( a16) a8 b16->( a16) a16( e16) b'8 a8-> cis,16(\upbow b16) |
          \mark\default
          a8\downbow fis'16\downbow a,16\upbow e'16 a,16 fis'16 a,16 e'16 a,16 fis'16 a,16 e'8\downbow cis16(\upbow b16) |
          a8\downbow fis'16\downbow a,16\upbow e'16 a,16 fis'16 a,16 gis'16( b16) b16 gis16 b8 a16\downbow b16\upbow |
          cis16\downbow b16(\upbow a16) cis16\downbow b16\upbow( a16) fis16 gis16 a16(\downbow fis16) e16 cis16 a8 a16\downbow b16 |
          cis16\downbow e8\upbow cis16\downbow e8\upbow e16 d16 cis8 a16\upbow a16->(\downbow a8) cis16(\upbow b16) |
          a8\downbow fis'16\downbow a,16\upbow e'16 a,16 fis'16 a,16 e'16 a,16 fis'16 a,16 e'8 cis16( b16) |
          \barNumberCheck #18
          a8\downbow fis'16\downbow a,16\upbow e'16 a,16 fis'16 a,16 gis'16\downbow b8\upbow gis16\downbow b8\upbow a16 b16 |
          cis16 b16( a16) cis16 b16( a16) fis16 gis16 a16 fis16 e16 cis16 a8 a16 b16 |
          cis16( e16) e16 cis16 e8 e16 d16 cis8 a16 a16->( a4) |
          \mark\default
          r8 d,8^\markup{\italic "pizz."} r8 d8 r8 d8 r8 a8 |
          r8 d8 r8 d8 r8 d8 r8 a8 |
          r8 d8 r8 d8 r8 d8 r8 a8 |
          r8 d8 r8 d8 r8 d8 r8^\markup{\italic "arco"} g8 |
          e'8\downbow fis16(->\upbow e16) e8 fis16->( e16) e8 fis16->( e16) e16 d16( b16 d16) |
          \barNumberCheck #26
          e8 fis16->( e16) e8 fis16->( e16) e16( b16) fis'8 e4-> \breathe |
          e8\downbow fis16->( e16) e8 fis16->( e16) e8 fis16->( e16) e16 d16( b16 d16) |
          e8 fis16->( e16) e8 fis16->( e16) d16( a16) e'8 d4-> \breathe |
          \mark\default
          e,8\downbow e16 fis16 g8\upbow g16 a16 b16( e16) e16 b16 e4 |
          b16( e16) e16 d16 e8 e16 fis16 g16( e16) d16 b16 a8 b16\downbow a16 |
          g16\downbow a16(\upbow b16) g16\downbow b16(\upbow d16) e16 d16 e16(\downbow fis16) g16 fis16 g8 e16\downbow fis16 |
          g16\downbow e16(\upbow d16) g16 d16(\upbow c16) g16 a16 b8\downbow g16\upbow g16->(\downbow g4) \breathe |
          g8\downbow g16 a16 b8 b16 d16 e16( g16) g16 e16 g4 |
          e16( g16) g16 e16 g8 g16 a16 b16( g16) fis16 d16 d8 b16 a16 |
          b16 c16( d16) b16 d16( fis16) g16 fis16 g16( a16) b16 a16 b8 g16 a16 |
          b16 a16( g16) b16 g16( e16) d16 c16 d8 b16 b16->( b4) |
          \mark\default
          r8 e,8^\markup{\italic "pizz."} r8 e8 r8 e8 r8 e8 |
          r8 e8 r8 e8 r8 e8 r8 d8 |
          r8 e8 r8 e8 r8 e8 r8 c8 |
          r8 e8 r8 e8 r8 e8 r8^\markup{\italic "arco"} d8\upbow |
          g8\downbow g16 a16 b8 b16 d16 e16( g16) g16 e16 g4 |
          \barNumberCheck #42
          e16( g16) g16 e16 g8 g16 a16 b16( g16) fis16 d16 d8 b16 a16 |
          b16 c16( d16) b16 d16( fis16) g16 fis16 g16( a16) b16 a16 b8 g16 a16 |
          b16 a16( g16) b16 g16( e16) d16 c16 d8 b16 b16->( b4) |
          \mark\default
          R1 * 4/4 * 4 |
          \barNumberCheck #49
          <a e'>8\downbow\f <b e>16->( <a e'>16) <a e'>8 <b e>16->( <a e'>16) <a e'>8 <b e>16->( <a e'>16) <a e'>16 e'16 e16 e16 |
          <a, e'>8\downbow <b e>16->( <a e'>16) <a e'>8 <b e>16->( <a e'>16) <a e'>8 <b e>16->( <a e'>16) <a e'>16 e'16 e16 e16 |
          a8\downbow b16->( a16) a8 b16->( a16) a8 b16->( a16) a16 g16( e16 g16) |
          a8 b16->( a16) a8 b16->( a16) a16( e16) b'8 a8-> cis,16(\upbow b16) |
          \mark\default
          a8\downbow fis'16\downbow a,16\upbow e'16 a,16 fis'16 a,16 e'16 a,16 fis'16 a,16 e'8 cis16( b16) |
          a8\downbow fis'16\downbow a,16\upbow e'16 a,16 fis'16 a,16 gis'16( b16) b16 gis16 b8 a16 b16 |
          cis16 b16( a16) cis16 b16( a16) fis16 gis16 a16( fis16) e16 cis16 a8 a16 b16 |
          cis16 e8 cis16 e8 e16 d16 cis8 a16 a16->( a8) cis16(\upbow b16) |
          a8\downbow fis'16\downbow a,16\upbow e'16 a,16 fis'16 a,16 e'16 a,16 fis'16 a,16 e'8 cis16( b16) |
          a8\downbow fis'16\downbow a,16 e'16 a,16 fis'16 a,16 gis'16 b8 gis16 b8 a16 b16 |
          cis16 b16( a16) cis16 b16( a16) fis16 gis16 a16( fis16) e16 cis16 a8 a16 b16 |
          \barNumberCheck #60
          cis16( e16) e16 cis16 e8 e16 d16 cis8 a16 a16->( a4) \breathe | 
          \mark\default
          e8\downbow e16 fis16 g8 g16 a16 b16( e16) e16 b16 e4 |
          b16( e16) e16 b16 e8 e16 fis16 g16( e16) d16 b16 a8 b16 a16 |
          g16 a16( b16) g16 b16( d16) e16 d16 e16( fis16) g16 fis16 g8 e16 fis16 |
          g16 e16( d16) g16 d16( c16) b16 a16 b8 g16 g16->( g4) \breathe |
          g8\downbow g16 a16 b8 b16 d16 e16( g16) g16 e16 g4 |
          e16( g16) g16 e16 g8 g16 a16 b16( g16) fis16 d16 d8 b16 a16 |
          b16 c16( d16) b16 d16( fis16) g16 fis16 g16( a16) b16 a16 b8 g16 a16 |
          b16 a16( g16) b16 g16( e16) d16 c16 d8 b16 b16->( b8) b16(\upbow a16) |
          \mark\default
          g8\downbow e'16\downbow b16\upbow d16 b16 e16 b16 d16 b16 e16 b16 d8\downbow b16(\upbow a16) |
          g8\downbow e'16\downbow b16\upbow d16 b16 e16 b16 fis'16( a16) a16 fis16 a8 g16 a16 |
          b16 a16( g16) b16 a16( g16) e16 fis16 g16(e16) d16 b16 g8 g16 a16 |
          b16 d8 b16 d8 d16 c16 b8 g16 g16->( g4) \breathe |
          d''16\ff\downbow c16\upbow b16 d16 c16 b16 g16 a16 b16 g16 d16 fis16 g16 d16 b8 |
          d16\downbow g16\upbow g16 d16 g8\downbow\breathe d16\downbow c16\upbow b8-> g8->\upbow g8->\downbow r8 \bar"|."
        }
      }
    }
  }
}
