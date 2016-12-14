\version "2.18.2"

\book {
  \score {
    \new Staff {
      \relative c' {
        \key g \major
        \clef treble
        \time 4/4
        \numericTimeSignature
        \autoBeamOff
        g8[ a] b[ c] d[ e] fis[ g] |
        a[ b] c[ d] e[ fis] g4 |
        g8[ fis] e[ d] c[ b] a[ g] |
        fis[ e] d[ c] b[ a] g4 ||
      }
    }
    \layout { }
    \midi { }
  }
}
