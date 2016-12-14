%% 
%% Compile like
%%  ~/Applications/Lilypond.app/Contents/Resources/bin/lilypond rondeau.ly
%%
\version "2.18.2"

#(define my-shown-barnums '(5 10 15 20 25 30 35 40 45))
#(define ((every-bar-number-of-list-visible l) barnum mp)
  (if (member barnum l) #t #f))

%% #(set-global-staff-size  36)

\header { title = "Rondeau"
          subtitle = "(from \"Masterpiece Theater\")" 
          composer = "Mouret-Leidig"
          arranger = "Shannon Crow"
        }
\layout { \context { 
  \Score 
    \override SpacingSpanner.uniform-stretching = ##t 
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  } 
}

\score { 
  \relative {
    \time 4/4 \numericTimeSignature
    \clef treble
    \key g \major
    \tempo 4 = 90
    \override Score.BarNumber #'break-visibility = ##(#f #t #t)
    \set Score.barNumberVisibility = #(every-bar-number-of-list-visible my-shown-barnums)

    a'\downbow_\f a8-.\upbow( a8-.\upbow) a4\downbow d,\upbow |  % measure 1
    a'\downbow a8\upbow a8\downbow a4\upbow b8\downbow_\mf a\upbow |
    \repeat volta 2 { 
        g4\downbow d g a |
        b8 c b a g a b c |
        d4\downbow d8-.\upbow( d8-.\upbow) d4 e | % measure 5
        \grace { d16\downbow e16^4 } d4. c8\upbow b4\downbow b8(\upbow c8) |
        d4 g d d |
        b\downbow a8( b8) c8 d b c | 
    }
    \alternative {
      { a4 d, a' a8-.\upbow( a8-.\upbow) | a2 r4 b8\downbow a8\upbow | }
      { a8\downbow d c b a4.\downbow g8\upbow | g2.\downbow\fermata b8_\f c8}
    }
    d4\downbow d8-.(\upbow d8-.)\upbow d4\downbow d\upbow | % measure 13
    b\downbow g g8\downbow f\upbow g a |
    b4\downbow a8-.(\upbow b8-.)\upbow c8 b a g | % measure 15
    a g f e d c b c |
    d'4\downbow d8-.(\upbow d8-.)\upbow d4\downbow d\upbow |
    b g g8 f g a |
    b4\downbow a8-.(\upbow b-.)\upbow c\downbow b a g |
    d'2\downbow r4 b8_\f\downbow a8\upbow | % measure 20
    g4 d g a |
    b8 c b a g a b c |
    d4 d8-.( d-.) d4 e |
    \grace { d16\downbow e16^4 } d4. c8 b4 b8( c8) |
    d4 g d d |
    b a8( b) c d b c |
    a d c b a4. g8 |
    g2. d'4_\f |
    e8( d) e( f) e( f) e( d) |
    c4 c c c |
    d8( c) d( e) d( e) d( c) |
    b4 e d c8( b) |
    c4 e_\p d c8( b) |
    c4 e_\f d c8( b) |
    c8( b) c( d) b4. a8 |
    a4 e' e e |
    f e f g8( f) |
    e4 e_\p e e |
    f e f g8( f) |
    e4 e_\f e e |
    f e f g8( f) |
    e8( f) e( f) g( e) a4 |
    f4. e8 e4. d8 |
    d4 a8-.( b-.) c4 c |
    b b8 c d4 d |
    g, c8_\ff d8 e4 e |
    a, d c8 b a g |
    f4 a d b8_\mf a |
  }
}
