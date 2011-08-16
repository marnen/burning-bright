\version "2.14.2"
\include "english.ly"

hornINotes = {
  \transpose f c' {
    % Orchestration p. 1
    \clef treble
    \time 4/4
    R1*2 |
    \time 6/4
    R1. |
    \time 4/4
    R1 |
    % p. 2
    \time 3/2
    R1. |
    \time 6/4
    <<
      {
        \repeat unfold 3 {
          r4 cs''2 r4 g'2 |
        }
      }
      {
        s4 s\mf
      }
    >>
    % p. 3
    \time 4/4
    r4 cs''2 r4 |
    \time 6/4
    <<
      {
        \repeat unfold 4 {
          d''2 r4 b'2 r4
        }
      }
      {
        s1.\f | s1. | s2.\> s2 s4\! | s1.\mp
      }
    >>
    \bar "||"
    % p. 4
    \time 4/4
    R1 |
  }
}

\addQuote "horn1" { \hornINotes }
