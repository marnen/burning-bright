\version "2.18.0"
\include "english.ly"
\include "../globals.ly"

celloNotes = {
  % Orchestration p. 1
  \clef bass
  \key c \minor
  <<
    {
      s1\mp | s | s1.*2 |
      % p. 2
      s1 | s1\< |
    }
    \repeat unfold 7 {
      \relative c {
        c4 r af r
      }
    }
  >>
  \relative g, {
    <<
      { s4\!_\fpesante }
      \repeat unfold 5 {
        g2 r4 ef2 r4
      }
    >>
    % p. 3
    g=,2 r |
    % p. 4
    \key a \minor
    \repeat unfold 2 {
      b=,2 r4 e,2 r4 |
    }
  }
}

\addQuote "cello" { \celloNotes }
