\version "2.18.2"

\header { 
  title = "My favorite things"
  arranger = "Arranged by: Shannon M. Crow"
  %% instrument = \markup \with-color #red "Violin"
  copyright = ""
  tagline = ""
}

\score {
  <<
  \new Staff \with {
    instrumentName = #"Violin "
    shortInstrumentName = #"Vln. "
  } \relative c' {
    \clef treble
    \time 3/4
    \key g\major
    \repeat volta 2 {
      %% \set Score.repeatCommands = #'(start-repeat)
      e4 b' b | fis e e | b e e | fis e2 | e4 b' b | fis e e |
      b e e | fis e2 | e4 b' a | e fis d | d a' g | c,2. | b4 c d |
      e fis g | a b a | dis,2.
    }
    e4 g g | fis e e | b e e | fis e2 | e4 b' b | fis e e |
    b e e | fis e2 | e4 b' a | e fis d | d a' g | c,2. | b4 c d |
    e fis g | a ais b | c2. | e,4 r2 | e4 r2 | fis4 r2 | fis4 r2 |
    e4 r2 | e4 r2 | c2. | r2 e4 | e fis e | fis e fis | g a g |
    a2 g4 | b c b | c2.( | c2.) | b2. | g2. \bar "|."
  }

  \new Staff \with {
    instrumentName = #"Viola "
    shortInstrumentName = #"Vla. "
  } \relative c' {
    \clef alto
    \time 3/4
    \key g\major
    \repeat volta 2 {
      %% \set Score.repeatCommands = #'(start-repeat)
      g4 r2 | a4 r2 | g4 r2 | a2. | g4 r2 | c4 r2 | g4 r2 |
      a2. | c4 r2 | d4 r2 | b4 r2 | c2. | d4 r2 |
      g,4 r2 | a4 r2 | b2. 
    }
    g4 r2 | a4 r2 | g4 r2 | a4 r2 | c4 r2 | c4 r2 | g4 r2 |
    g2. | c4 r2 | a4 r2 | b4 r2 | e2. | d4 r2 | g,4 r2 |
    c4 r2 | c2. | g4 r2 | g4 r2 | a4 r2 | a4 r2 | g4 r2 |
    g4 r2 | e'2. | r | g,4 r2 | a4 r2 | c4 r2 | c4 r2 | d4 r2 |
    e2.( | e2.) | d2. | c2.
    \bar "|."
  }

  \new Staff \with {
    instrumentName = #"Double Bass "
    shortInstrumentName = #"Db. "
  } \relative c {
    \clef bass
    \time 3/4
    \key g\major
    \repeat volta 2 {
      %% \set Score.repeatCommands = #'(start-repeat)
      e4 r2 | fis4 r2 | e4 r2 | fis2. | c4 r2 | c4 r2 |
      e4 r2 | fis2. | a4 r2 | d,4 r2 | g4 r2 | c,2. | g'4 r2 |
      c,4 r2 | fis4 r2 | b,2. 
    }
    e4 r2 | fis4 r2 | e4 r2 | fis4 r2 | a,4 r2 | a4 r2 | e'4 r2 |
    fis2. | a,4 r2 | d4 r2 | g,4 r2 | c2. | g4 r2 | c4 r2 |
    fis4 r2 | b2 r4 | r4 b4 b4 | b2 d,4 | r4 a'4 a4 | a2 dis,4 |
    r4 g4 g4 | g2 b,4 | e2. | e2 r4 | e4 r2 | fis4 r2 | a4 r2 |
    a4 r2 | g4 r2 | c,2.( | c2.) | d2. | g,2.
    \bar "|."
  }
  >>

  \layout {
    \context { 
      \Score \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
    }
  }
}
