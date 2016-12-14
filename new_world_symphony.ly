\version "2.18.2"

%%
%% See http://lsr.di.unimi.it/LSR/Snippet?id=838
%%

#(define ((bars-per-line-engraver bar-list) context)
   (let* ((working-copy bar-list)
          (total (1+ (car working-copy))))
     `((acknowledgers
         (paper-column-interface
           . ,(lambda (engraver grob source-engraver)
                (let ((internal-bar (ly:context-property context 'internalBarNumber)))
                  (if (and (pair? working-copy)
                           (= (remainder internal-bar total) 0)
                           (eq? #t (ly:grob-property grob 'non-musical)))
                    (begin
                      (set! (ly:grob-property grob 'line-break permission) 'force)
                      (if (null? (cdr working-copy))
                        (set! working-copy bar-list)
                        (begin
                          (set! working-copy (cdr working-copy))))
                      (set! total (+ total (car working-copy))))))))))))

%% \layout{
%%   indent = #0
%% }

\header{ 
  title="NEW WORLD SYMPHONY THEME"
  composer = "Antonin Dvorak"
}

\score{
  %% \consists #(bars-per-line-engraver '(4))
  \relative c' {
    \time 4/4
    \clef treble
    \key g \major
    \mark Moderato
    fis^\downbow  a a \breathe r | r r r r | e^\downbow fis e d | d r r r |
    fis^\downbow a a r | fis^\upbow e d r | e fis a fis | e \breathe r r r |
    fis^\downbow a a r | fis^\upbow e d r | e fis e d | d \breathe r r r |
    b'^\downbow d d r | c^\upbow a b r | b d c a | b \breathe r r r |
    b^\downbow d d r | c^\upbow a b r | b d c a | b \breathe r r r |
    fis^\downbow a a r | fis^\upbow e d r | e fis a fis | e \breathe r r r |
    fis^\downbow a a r | fis^\upbow e d r | e fis e d | d \breathe r r r |
    fis^\downbow fis e e | d d d \breathe r | r r r r | d^\downbow d d r ||
  }
  \layout {
    \context { 
      \Score \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
    \numericTimeSignature
  }
}
