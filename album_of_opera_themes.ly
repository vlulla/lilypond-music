\version "2.18.2"

\header {
  title = "ALBUM of OPERA THEMES"
  subtitle = "for the Junior String Orchestra"
  arranger = "arrangement by JEFF MANOOKIAN"
  enteredby = "Vijay Lulla (2017.01.19)"
}

\layout {
  \context {
    \Score
      % \override BarNumber.break-visibility = ##(#f #t #t)
  }
}

voiceconsts = {
  \key c \major
  \time 3/4
  \tempo "Moderato" 4 = 126
}

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative c' {
          \voiceconsts
          \clef treble
          g'4^"pizz."\pp r4 a |
          a r4 g |
          g r4 a | 
          a r4 g |
          e2(^"arco" f4) |
          f2( e4) |
          e4( d f) |
          f2( e4) |
          e4( d f) |
          f2( e4) |
          e2.( | 
          e4) r4 r4 |
          e4-"pizz." r4 r4 |
          g4 r4 r4 |
          e4 r4 r4 |
          g4 r4 r4 | % bar 16
          e4 r4 r4 |
          g4 r4 r4 |
          e4 r4 a4 |
          a4 r4 g4 |
          e4 r4 r4 |
          e4 r4 r4 |
          b4 r4 r4 |
          d4 r4 r4 |
          b4 r4 r4 | % bar 25
          d4 r4 r4 |
          e4 r4 a4 |
          a4 r4 g4 |
          g2(^"arco" a4) |
          a2( b4) |
          b2( c4) |
          c2( b4) |
          b2( a4) |
          a2( g4) |
          g2.( |
          g4) r4 r4 | % bar 36
          g2( a4) |
          a2( bes4) |
          c2.( | 
          c2.)( | 
          c4) g4( a4) |
          bes4( a g) |
          a2.( |
          a4) r4 a4 |
          a2( b?4) | % bar 45
          b2( c4) |
          d2.( |
          d2.)( |
          d4) a4( b) |
          c4( b a) |
          g2.( |
          g4) r4 r4 |
          g2.( |
          g4) b4( a) |
          g2.( |
          g4) r4 r4 |
          g2.( |
          g4) b4( a4 |
          g4) r4 a4^"pizz." |
          a4 r4 g4 | 
          g4 r4 a4 |
          a4 r4 g4 |
          e2(^"arco" f4) |
          f2( e4) | % bar 64
          e4( d f4) |
          f2( e4) |
          e4( d f) |
          f2( e4) |
          e2 a4-. |
          a4-. r4 g4-. |
          e2( f4) |
          f2( e4) |
          e4( d f) |
          f2( e4) |
          e4( d f) |
          f2( e4 |
          g4-.) r4 a4-. |
          a4-. r4 g4-. |
          f4-. d( e) |
          f4( g a | % bar 80
          g4-.) r4 a4-. |
          a4-. r4 g4-. |
          g4-. g4( a4) |
          b4( c d) |
          e2.( |
          e2.) |
          e4( d c) |
          b4( c a) |
          g2.->( |
          g2) a4 |
          b2.->( |
          b2) b4 |
          c2.-> |
          g4( c2) |
          g4( d'2~ | % bar 95
          d2.) |
          c4( e2) |
          g,4( c2) |
          g4( d'2~ |
          d2.) | % bar 100
          g,4( d'2~ |
          d2.) |
          c4( e a) |
          a2( g4) |
          e2( f4) |
          f2( e4) |
          c2( d4) |
          d2( c4) |
          g2(\> a4) |
          a2( g4) |
          e2( f4) |
          f2( e4) |
          c2.(\pp |
          c2.)( |
          c2.)( |
          c2.)( |
          c4) r4 r4

          \bar "|."
        }
      }
    }
    \layout { }
    \midi { }
  }
}
