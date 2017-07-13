\version "2.18.2"

\paper { #(include-special-characters) }

%% http://thread.gmane.org/gmane.comp.gnu.lilypond.general/77369
%% #(define my-shown-barnums '(3 7 15 25 34 42 51 61 71 79 87 93 101 105 113 125 133))
%% #(define ((every-bar-number-of-list-visible ls) barnum mp)
%%   (if (member barnum ls) #t #f))
%%
%% Then do \set Score.barNumberVisibility = #(every-bar-number-of-list-variable my-shown-barnums) in your score!

\header {
  title = "BOND &hellip; JAMES BOND"
  subtitle = \markup"(James Bond Theme &bull; Live and Let Die &bull; Nobody Does It Better &bull; Goldfinger &bull; Skyfall)"
  piece = "VIOLIN I"
  arranger = "Arranged by ROBERT LONGFIELD"
  enteredby = "Vijay Lulla (2017.07.12)"
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
  \key g\major
  \numericTimeSignature
  \compressFullBarRests
}

%% showLastLength = R1*8 %% show only last few measures %% comment to typeset whole score

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
        \voiceconsts
        \clef treble
        \time 4/4
        \tempo "Boldly" 4=96
        \set Score.markFormatter = #format-mark-box-barnumbers
        e8--\ff\downbow( g8-.) r8 ees'8->\downbow( d2) \breathe|
        fis,1:32~\sfz\> \bar"||"
        \tempo \markup{\column{"Fast" "Energetic"}} 4=110
        \mark\default
        fis8\mf r8 r4 r2 |
        R1*3 |
        e8-.\mf\downbow^"James Bond Theme" fis16 fis fis8-. fis8->~ fis8 e8-. e8-. e8-. |
        e8-. g16 g16 g8-. g8->~ g8 fis8-. fis8 fis8 |
        \barNumberCheck 9
        e8_\markup{\italic "sim."} fis16 fis16 fis8 fis8~ fis8 e8 e8 e8 |
        e8 g16 g16 g8 g8~ g8 fis8 fis8 fis8 |
        e8 fis16 fis16 fis8 fis8~ fis8 e8 e8 e8 |
        e8 g16 g16 g8 g8~ g8 fis8 fis8 e8 |
        ees'8->( d4.~ d4) b8-- a8-- |
        b1\< |
        \barNumberCheck 15
        \mark\default \tempo "Swing" 4=110
        e,8--\f\downbow e8-. r8 e8( fis8 e8) fis4-. |
        g8-- g8-. r8 g8( fis8 e8) fis4-. |
        e'8-- e8-. r8 e8( fis8 e8) fis4-. |
        g8-- g8-. r8\< g8( fis8 e8) fis4-. |
        b8--\downbow\ff b8-. r4 r4 b8--\downbow b8-. |
        r2 b16--\downbow b8-.~ b16-. b8-> b8-> |
        \barNumberCheck 21
        R1*4/4*2^"Even Eighths" | R1*4/4*2 _\markup{\italic "rit."} \bar "||"
        \mark\default \tempo "Slowly" 4 = 66
        r4 r16 d,,16(\mf\upbow g16 b16) d4 e8( fis8) |
        e4. d16( c16) b16( c16 b16 a16~ a4) |
        r4 r16 d,16(\upbow g16 b16) d4 d16( e16 fis8) |
        e4. r8 r2 |
        \barNumberCheck 29
        r4 r16 d,16(\upbow g16 b16) d4 e8( fis8) |
        g8.( e16) e16( d16 g8) e4 a8( g8) |
        fis8( g8 a8) d,8~ d2 |
        d16( e16 f8~ f2) e16( d16) bes8 |
        \tempo "Fast, rhythmic" 4=135
        \time 2/4 a8( g8~ g4)
        \mark\default
        \time 4/4 g8\mf\downbow a8 bes8 r8 r4 d,8\upbow e8
        \barNumberCheck 35
        f8 r8 r4 c8\downbow bes4.-> |
        g'8 a8 bes8 r8 r8 d,8\upbow e8 f8 |
        r8 c4-.\downbow bes8->~ bes2 |
        g'8\downbow a8 bes8 r8 r4 d,8\upbow e8 |
        f8 r8 r4 c8\downbow bes4.-> |
        g'8 a8 bes8 r8 r8 d,8\upbow e8 f8 |
        \barNumberCheck 41
        r8 c4-.\downbow bes8~-> bes2 |
        \mark\default g''8\f\downbow a8 bes8 r8 r4 d,8\upbow e8 |
        f8 r8 r4 c8\downbow bes4.-> |
        g'8 a8 bes8 r8 r8 d,8\upbow e8 f8 |
        r8 c4-.\downbow bes8->~ bes2 |
        g'8\downbow a8 bes8 r8 r4 d,8\upbow e8 |
        f8 r8 r4 c8\downbow bes4.-> |
        g'8 a8 bes8 r8 r8 d,8\upbow e8 f8 |
        r8 c4-.\upbow bes8:32~->\downbow\fermata bes2:32~^\markup{\italic "sul ponticello"}\> \bar"||"
        bes2:32~^"Slowly" bes8\p r8 r4 |
        \barNumberCheck 51
        \mark\default \tempo 4 = 66
        e2\downbow\mp ees2 |
        d4 a'4-- g4-- f4-- |
        e2 ees2 |
        d4 a'4-- g4-- f4-- |
        e2 ees2 | ees2 d2 |
        c2 d4.(\< dis8) |
        e16(\downbow\mf fis16 g16 a16) b8( a8) g8 a4. |
        g1~ | g1~\upbow\> \bar "||"
        \key d \major
        \mark\default \tempo "Moderately fast" 4 = 110
        g8\p g8-._\markup{\italic "lightly"} g8-. g8-. g8-. g8-. g8-. g8-. |
        g8-. g8-.  g8-. g8-.  g8-. g8-.  g8-. g8-. |
        g8-.^"Goldfinger" g8-.  g8-. g8-.  g8-. g8-.  g8-. g8-. |
        \barNumberCheck 64
        g8 g8_\markup{\italic "sim."} g8 g8 g8 g8 g8 g8 |
        g8 g8 g8 g8 g8 g8 g8 g8 |
        g8 g8 g8 g8 g8 g8 g8 g8 |
        fis8 fis8 fis8 fis8 fis8 fis8 fis8 fis8 |
        fis8 fis8 fis8 fis8 fis8 fis8 fis8 fis8 |
        fis8\< d8 d8 d8 ees8(\mf d8) r8 e8(\upbow |
        d2~\< d8) d4-> d8 |
        \mark\default
        d2\downbow\f a'8( g4.~ |
        g8) r8 r4 r2 |
        r4 a8(\downbow fis8) g4.( d8) |
        \tuplet 3/2 { e4 e4 e4} c'4( b4) |
        ais1~ |
        ais4 ais,4-- ais4-- ais4-- |
        b1~ | b2.\upbow\> cis8(\upbow\mf b8) |
        \mark\default
        \tuplet 3/2 {a4_\markup{\italic "legato"} a4 fis4} \tuplet 3/2 {a4 a4 b4} |
        cis2. cis8( b8) |
        \tuplet 3/2 {a4 a4 fis4} \tuplet 3/2 {a4 a4 cis4} |
        e1 |
        c8-. r8 r4 r4 fis4--\upbow\f |
        f8 r8 r4 r4 a8->\downbow a8-> |
        a8-> r8 a8--\upbow a8-- gis4( fis4) |
        f4\< d'4---> b4---> aes4--->  \bar "||"
        \mark\default
        \key g \major
        g2\downbow\ff d'8( c?4.~ | 
        c8) r8 r4 r2 |
        r4 d,8(\downbow b8) c4.( g8) |
        \tuplet 3/2 {a4-> a4-> a4->} f'4->( e4) |
        \barNumberCheck 91
        dis1( | 
        d4) dis4-- dis4-- dis4-- |
        \mark\default
        e1~\downbow |
        e4.\upbow e8 \tuplet 3/2 {g4-- fis4-- d4--} |
        e1~ | e2\upbow fis4-- d4-- |
        e1~ | e2\upbow g4-> a4-> |
        <b fis>1~\sfz->^\markup{\italic "div."} |
        <b fis>1\>_\markup{\italic "rit."}\upbow~ \bar "||"
        \mark\default 
        \tempo \markup{\column{"Moderately slow" "mysterious"}} 4 = 76
        <b fis>8\p r8 r4 r2 |
        R1*4/4*2 |
        r2 r4 g4--\mp^\markup{\italic "unis."}
        \mark\default
        fis8( e8) e2. |
        r2 e8\downbow( fis8) g8( fis8) |
        fis4.( e8) e2 |
        r2 fis8(\downbow e8) fis8( e8) |
        \barNumberCheck 109
        fis4.( e8) g2 |
        r2 fis8(\downbow e8) fis8( e8) |
        fis2. e4-- |
        b'2.\< r4\! |
        \mark\default
        r4 b,4\mf\downbow( e4) fis4 |
        g4.( fis8) e2 |
        r4 e4\downbow( a4) b4 |
        c2 b2 |
        r4 b,4(\downbow e4) fis4 |
        g4.( fis8) e2 |
        r4 e4\downbow( a4) b4 |
        c2\> b2 |
        \barNumberCheck 121
        \mark\default
        e,1~\downbow\mp_\markup{\italic "accel. poco a poco"} \> |
        e2. r4\! |
        R1*4/4*2 \bar"||"
        \mark\default \tempo "Fast, energetic" 4=110
        e,8-.\mf fis16 fis16 fis8-. fis8->~ fis8 e8-. e8-. e8-. |
        e8-._\markup{\italic "cresc.poco a poco"} g16 g16 g8-. g8->~ g8 fis8-. fis8-. fis8-. |
        e8_\markup{\italic "sim."} fis16 fis16 fis8 fis8~ fis8 e8 e8 e8 |
        e8 g16 g16 g8 g8~ g8 fis8 fis8 fis8 |
        e8-.\downbow\f fis'16 fis16 fis8-. fis8->~ fis8 e8-. e8-. e8-. |
        e8-. g16_\markup{\italic "cresc.poco a poco"} g16 g8-. g8->~ g8 fis8-. fis8-. fis8-. |
        e8_\markup{\italic "sim."} fis16 fis16 fis8 fis8~ fis8 e8 e8 e8 |
        \barNumberCheck 132
        e8 g16 g16 g8 g8~ g8 fis8 fis8 fis8 |
        \mark\default
        e4\ff\downbow r4 r2 |
        r2 b,8--( d8-.) r8 bes'8(->\downbow |
        a4) f8--(\upbow a8-.) r8 ees'8(->\downbow d4~ |
        d8) r8 r4 r2 |
        fis4->\downbow\ff fis4->\downbow_\markup{\italic "molto rit."} fis4->\downbow fis4->\downbow |
        <b fis>1:32->\fermata\downbow^\markup{\italic "div."}

        \bar"|."
        }
      }
    }
    \layout { }
    \midi { }
  }
}
