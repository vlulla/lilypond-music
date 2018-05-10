%% http://lilypond.org/doc/v2.18/Documentation/notation/graphic
downarrow=\markup{\combine \draw-line #'(0 . 2) \arrow-head #Y #DOWN ##f}
uparrow=\markup{ \combine \draw-line #'(0 . -2) \arrow-head #Y #UP ##f }
%% The way to use the above definitions is like this:
%%   \relative c' {
%%     cis!4^\uparrow d4 e4 fis!4^\uparrow
%%   }

%% However if you want to use something like cis!4\uparrow then use the
%% following event functions
%%
%% uparrow = #(define-event-function (parser location) () #{ ^ \markup{\combine \draw-line #'(0 . -2) \arrow-head #Y #UP ##f } #})
%% downarrow = #(define-event-function (parser location) () #{ ^ \markup{\combine \draw-line #'(0 . 2) \arrow-head #Y #DOWN ##f } #})
%%
%% and now you can use the following instead:
%%   \relative c' {
%%     cis!4\uparrow d4 e4 fis!4\uparrow
%%   }



%% https://lists.gnu.org/archive/html/lilypond-user/2015-12/msg00566.html
myDisplayBarNumber = {
  % Allow bar numbers to be displayed not only at beginning of lines:
  %   \once\override Score.BarNumber.break-visibility = ##(#f #t #t)
  \once\override Score.BarNumber.break-visibility = ##(#f #t #f)

  % Allow bar number 1 to be displayed
  \once\set Score.barNumberVisibility = #all-bar-numbers-visible
}

date = #(strftime "%Y-%m-%d" (localtime (current-time)))
