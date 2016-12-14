\version "2.18.2"

\header { 
  title = "D Major Scales" 
  arranger = "Arranged by: Shannon Crow"
  instrument = \markup \with-color #red "Violin"
  copyright = ""
  tagline = ""
}

\score {
  \relative c' {
    \clef treble
    \time 4/4
    % half notes
    d2 e | f g | a b | c d | d c | b a | g f | e d |
    % quarter notes
    d4 d e e | f f g g | a a b b | c c d d | d d c c | b b a a | g g f f | e e d d |
    % Missisippi
    \break
    d16 d d d e e e e f f f f g g g g | a a a a b b b b c c c c d d d d | d d d d c c c c b b b b a a a a | g g g g f f f f e e e e d d d d |
    % Grass-ho-pper
    d8[ d16 d16 e8 e16 e16] f8[ f16 f16 g8 g16 g16] |
    a8[ a16 a16 b8 b16 b16] c8[ c16 c16 d8 d16 d16] |
    d8[ d16 d16 c8 c16 c16] b8[ b16 b16 a8 a16 a16] |
    g8[ g16 g16 f8 f16 f16] e8[ e16 e16 d8 d16 d16] |
    {
      \tuplet 3/2 { d8 d d } \tuplet 3/2 { d8 d d } \tuplet 3/2 { e8 e e } \tuplet 3/2 { e8 e e } |
      \tuplet 3/2 { f8 f f } \tuplet 3/2 { f8 f f } \tuplet 3/2 { g8 g g } \tuplet 3/2 { g8 g g } |
      \tuplet 3/2 { a8 a a } \tuplet 3/2 { a8 a a } \tuplet 3/2 { b8 b b } \tuplet 3/2 { b8 b b } |
      \tuplet 3/2 { c8 c c } \tuplet 3/2 { c8 c c } \tuplet 3/2 { d8 d d } \tuplet 3/2 { d8 d d } |
      \tuplet 3/2 { d8 d d } \tuplet 3/2 { d8 d d } \tuplet 3/2 { c8 c c } \tuplet 3/2 { c8 c c } |
      \tuplet 3/2 { b8 b b } \tuplet 3/2 { b8 b b } \tuplet 3/2 { a8 a a } \tuplet 3/2 { a8 a a } |
      \tuplet 3/2 { g8 g g } \tuplet 3/2 { g8 g g } \tuplet 3/2 { f8 f f } \tuplet 3/2 { f8 f f } |
      \tuplet 3/2 { e8 e e } \tuplet 3/2 { e8 e e } \tuplet 3/2 { d8 d d } \tuplet 3/2 { d8 d d } |
    } |
    d4( e) f( g) | a( b) c( d) | d( c) b( a) | g( f) e( d) |
    d( e f g) | a( b c d) | d( c b a) | g( f e d) | d4. d8 e4. e8 |
    f4. f8 g4. g8 | a4. a8 b4. b8 | c4. c8 d4. d8 | d4. d8 c4. c8 |
    b4. b8 a4. a8 | g4. g8 f4. f8 e4. e8 d4. d8
  }
}

\layout { 
  \numericTimeSignature
  \context {
    \Score \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
  }
}
