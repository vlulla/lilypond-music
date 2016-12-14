\version "2.18.2"
\header {
  title = "\"Jana-Gana-Mana\""
  subtitle = "(Thou Art the Ruler of the Minds of All People)"
  arranger = "Rabindranath Tagore"
}

\score {
  <<
  \new Staff {
    \relative c'{
      \clef treble
      \numericTimeSignature
      \time 4/4
      c8[ <d a>8] <e c> e e[ e] <e c> e |      %  1
      <e c>4 e8 e d <c e> <f d>4 |             %  2
      <e c> e8 e <d b>4 d8 d |                 %  3
      b8 d <c a>2 <c a>4 |                     %  4
      <c g'>4 g'8 g d[ g] g g |                %  5
      <e g>4 g8 fis <g e> fis g4 |             %  6
      <f c>4 f8 f <f d>4 f8 <f c> |            %  7
      d8 f <e c>2. |                           %  8
      <e b>4 e8 e <e c>4 e8 d |                %  9
      <b g'>8[ g'] <g b,>8 f <f a,>4 <f b,>4 | % 10
      <e c>4 e8 e <d a>4 d8 d |                % 11
      b8 d <c a>2. |                           % 12
      <e c>8[ e] e8 e <e c>4 e8 f |            % 13
      d8 e <d f>2. |                           % 14
      e8[ f] <e g>8 g g4 <f c>8 e |            % 15
      d8 f <e c>2. |                           % 16
      <c e>4 e <d a>8[ d] d d |                % 17
      b8 d <c a>2. |                           % 18
      <c g'>8[ g'] g g <d g>4 g8 f |           % 19
      <e g>4 g8 fis <g e>8 fis g4 |            % 20
      <c, f>4 f8 f <e c>4 e8 e16 f |           % 21
      \new Voice << 
         { d8 f e2 b'8 b8 } 
         { a,8 b c2 <e b>4} 
      >> |                                     % 22 FIXME:  Is there a better way?
      \new Voice << 
         { a2. b8 a} 
         {<c, e>2. d8 c} 
      >> |                                     % 23  FIXME: Are there two voices here? 
      \new Voice << 
         {b'2. g8 g} 
         {b,2. <c g>4}  
      >> |                                     % 24  FIXME
      \new Voice << {a'1} {<a, c>1} >> |         % 25  FIXME
      c8[ c] d8 d e8[ e] d e |                 % 26
      <f d>1                                   % 27
      \bar "|."
    }
  }
  %% \new Staff {
  %%   \relative c' {
  %%     \clef bass
  %%     \numericTimeSignature
  %%     \time 4/4
  %%   }
  %% }
  >>

  \layout {
    indent = 0.0
  }
}
