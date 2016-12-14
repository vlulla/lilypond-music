\version "2.18.2"

\score {
  \relative c' {
    \clef treble
    % \key g \major
    % cis d e fis
    c d e f g a b

    #(with-output-to-file "tst.txt"
      (lambda () #{ \displayMusic { c'4\f } #}))
  }
}
