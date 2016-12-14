%% 
%% Compile like
%%  ~/Applications/Lilypond.app/Contents/Resources/bin/lilypond rhythm1.ly
%%
\version "2.18.2"

\header { title = "LESSON 1 - RHYTHM" }
\layout { \context { \Score \override SpacingSpanner.uniform-stretching = ##t } 
  #(set-global-staff-size  36)
}

\score { 
    <<
    \relative c'' { \time 2/4 a a | a a | a a | a a | a a | a a | a2 \bar "||" }
    \relative c'' { \time 2/4 a4 a | a2 | a4 a | a2 | a4 a | a2 | a | }
    >>
}

%% \score {
%%   \relative c'' { \time 2/4 a4 a | a2 | a4 a | a2 | a4 a | a2 | a | }
%%   \layout { \context { \Score \override SpacingSpanner.uniform-stretching = ##t } }
%% }
%% 
%% \score { 
%%   \relative c'' { \time 2/4 a2 a4 a a a a2 a4 a a2 a4 a || }
%%   \layout { \context { \Score \override SpacingSpanner.uniform-stretching = ##t } }
%% }
%% 
%% \score { 
%%   \relative c'' { \time 2/4 a4 a a2 a4 a a2 a a4 a a a } 
%%   \layout { \context { \Score \override SpacingSpanner.uniform-stretching = ##t } }
%% }
%% 
%% \score { 
%%   \relative c'' { \time 2/4 a2 a4 a a2 a4 a a a a a a2 } 
%%   \layout { \context { \Score \override SpacingSpanner.uniform-stretching = ##t } }
%% }
