\version "2.18.2"
\header {
    title="Entrance of the Queen of Sheba"
    composer="G. F. Hendel"
    arranger="Arr. by H. B. Fisher"
}
\score {
    \relative c'' {
        \key g \major
        \clef treble
        \time 2/2 \numericTimeSignature
        \mark "Allegro Moderato"
        \tempo 4 = 60

        g'8_\f d b d g d b d |
        g8 d b d g d b d |
        a8 g' fis e d c b a |
        b g a b c d e fis |
        g d b d g d b d |
        g e a, e' g e a, e' | % measure 6
        fis e d e^4 a,4 cis |
        d^"solo" %% << { \voiceOne  a8(\upbow  b8) } \new Voice { \voiceTwo d,4 } >> 
           a8(\upbow b8)
           a8( b) a( b) |  %% measure 8 !! COMPLICATED
        a8\downbow^"tutti" fis d fis a fis d fis |
        d' b g b d b g b |
        c8 a fis a c a fis a | % measure 11
        b8 d, e fis g a b c |
        d b g b d b g b |
        d a fis a d a fis a |
        b g e g b g e g |
        b fis d fis b fis d fis |
        g' e c e g e c e |
        g d b d g d b d |
        c d e^4 d c b a g |
        fis g a^4 g fis e d c |
        b d^4 c e d fis e g | % measure 21
        fis a^4 g b a c b d | 
        c d c d e^4 d c b |
        a b a b c d c d |
        e^4 d e d c b c b |
        a b a b c d c d |
        e^4 d e d c b c b |
        a b a b  c b c b |
        b d c e d fis e g |
        fis4 e8 d g4 c, |
        b a8 g d4 fis |
        g d g,2\fermata_\markup \italic {Fine}^\markup \italic {2nd time}\bar "|." %% Measure 32!! TODO: Fine and bars here
        \break 
        g'8\downbow a b c b4 a |
        g d'2 c4 |
        b4\upbow c8 b c4 a |
        b8 c d e d4 c |
        b c8 b c4 a |
        b4 a g2 |
        g'8\downbow^"Tutti." d b d g d b d |
        g d b d g d b d | % measure 40
        a8 g' fis e d c b a |
        b4 d, g,2 |
        d''2\downbow^"solo" e8^4 d c b | %% measure 43
        c4 e2 e4 |
        d8 c b d c b a c |
        b4 d2\upbow d4\upbow |
        c8 b a c b a g b |
        a4 d fis,8 g a b |
        a4 d fis,8 g a b |
        a4 d d d | % measure 50
        d8\downbow^"Tutti." a^0 fis a d a fis a |
        d a fis a d a d fis
        e8 d cis b a g fis e |
        fis8 d e fis g a b cis |
        d8\downbow^"solo" e fis g fis4 e | % measure 55 %% TODO: Two voices here??
        d4 a2 g4 |
        fis4 g8 fis g4 e |
        fis8 g a b a4 cis4 |
        d4 e8 fis g4 e |
        fis4 e d2 | % measure 60
        a'8^"Tutti."\downbow fis d fis a8 fis d fis |
        a8 e^0 cis e a e cis e | % measure 62
        fis8 d b d fis d b d |
        fis8 cis a cis fis cis a cis |
        d8 b g b d b g b |
        d8 a fis a d a fis a |
        g8 a b a g fis e d |
        cis2 r4 e'4\upbow | % measure 68
        fis4( e) e( d) |
        g4( fis) fis( e) |
        fis8(\downbow g fis e) e( fis e d) |
        e8( fis e d) d8( e^4 d cis) |
        b8(^"tutti"\downbow cis b a) g( a^4 g fis) |
        e8( fis e fis) g( a g a) |
        b8( a b a) g( fis g fis) | % measure 75
        e8( fis e fis) g( a g a) |
        b8( a b a) g( fis g fis) |
        e8( fis e fis) g( a g a) |
        fis4 d' e, cis' |
        d4 a d, r4 \breathe |
        b'8^"solo"\downbow c d e^4 d4 c | % measure 81
        b4 d2 c4 |
        b4 c8 b c4 a |
        b4 a g r |
        g'8^"Tutti."\downbow d b d g d b d | % measure 85
        g8 d b d g d b d |
        a8 g' fis e d c b a |
        b8 g a b g b, c d |
        b'4^"solo"(\downbow a) a( g) | % measure 89 %% TODO: Two voices here?
        c4( b) b( a) |
        b8( c b a) a( b a g) |
        a8( b a g) g( a^4 g fis) |
        g8 a b c b4 a |
        g4 g'2  fis4 |
        e4 fis8 e fis4 dis4 |
        e4^4 b g b |
        e8^"Tutti."\downbow b g b e b g b |
        e8 b g b e b e g | % measure 98
        fis8 e dis cis b a g fis |
        g8 e fis g a b cis dis |
        e8 b g b e b g b |
        e4 d8 c b4\upbow a\upbow |
        g2 fis2 |
        \mark \markup \italic { "D.C. al Fine"}
        e2 r2 \bar "||"
    }
    \layout {
      \context {
        \Score {
          %% \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/24)
          \override Score.BarNumber #'break-visibility = #end-of-line-invisible
          %% \override Score.BarNumber #'Y-offset = #-4.0 % bar number below staff!
        }
      }
    }
}
