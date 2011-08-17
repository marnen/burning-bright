\version "2.14.2"
\include "english.ly"

hornIVNotes = {
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
    R1.*3 |
    % p. 3
    \time 4/4
    R1 |
    \time 6/4
    <<
      {
        \repeat unfold 4 {
          f'2 r4 d'2 r4
        }
      }
      {
        s1.\f | s1. | s2.\> s2 s4\! | s1.\mp
      }
    >>
    \bar "||"
    % p. 4
    \time 4/4
    R1*2 |
    % p. 5
    \time 3/2
    R1. |
    \time 4/4
    R1 |
    \time 3/2
    R1. |
    % p. 6
    \time 4/4
    R1*2 |
    \relative a {
      r4 a2\mp r4 bf2 |
      r4 d2\< ef\! r4 |
    }
  }
}

\addQuote "horn4" { \hornIVNotes }
