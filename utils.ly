%% http://lilypond.org/doc/v2.18/Documentation/notation/graphic
downarrow=\markup{\combine \draw-line #'(0 . 2) \arrow-head #Y #DOWN ##t}
uparrow=\markup{ \combine \draw-line #'(0 . -2) \arrow-head #Y #UP ##t }

%% https://lists.gnu.org/archive/html/lilypond-user/2015-12/msg00566.html
myDisplayBarNumber = {
  % Allow bar numbers to be displayed not only at beginning of lines:
  %   \once\override Score.BarNumber.break-visibility = ##(#f #t #t)
  \once\override Score.BarNumber.break-visibility = ##(#f #t #f)

  % Allow bar number 1 to be displayed
  \once\set Score.barNumberVisibility = #all-bar-numbers-visible
}

date = #(strftime "%Y-%m-%d" (localtime (current-time)))
