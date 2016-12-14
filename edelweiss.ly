\version "2.18.2"

\header { 
  title = "Edelweiss" 
  arranger = "Arranged by: Shannon M. Crow"
  instrument = \markup \with-color #red "Violin"
  copyright = ""
  tagline = ""
}

\score {
  \relative c' {
    \clef treble
    \time 3/4
    f2 a4 | e'2. | d2 a4 | g2. | f2 f4 | f g a | b2. |
    a2. | f2 a4 | e'2. | d2 a4 | f2 f4 | a b c | d2. |
    d2. | e8 r8 r8 a,8 a4 | c b a | f2 a4 | d2. | b2 d4 |
    e2 d4 | c2. | a2. | f2 a4 | e'2. | d2 a4 | g2. | f2 a4 |
    a b c | d2.  \bar "||"
  }
  \layout {
    \context { 
      \Score \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
    }
  }
}
