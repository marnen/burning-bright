\version "2.18.0"
\include "english.ly"
\include "../globals.ly"

violaNotes = {
  % Orchestration p. 1
  \clef alto
  \key c \minor
  R1*2 |
  R1.*2 |
  % p. 2
  R1 |
  c4\mp\< r af r\! |
  <<
    { s4_\fpesante }
    {
      \repeat unfold 5 {
        g2 r4 ef2 r4
      }
    }
  >>
  g2 r |
  % p. 4
  \key a \minor
  <<
    \repeat unfold 5 {
      b2 r4 e2 r4
    }
    {
      % 6/4
      s1. |
      % 9/4
      s4*9 |
      % 6/4
      s1.\> |
      % p. 5
      % 9/4
    }
  >>
  \key c \minor
  % 4/4
  c4\!\p r r2 |
}

\addQuote "viola" { \violaNotes }
