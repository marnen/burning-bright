\version "2.14.2"
\include "english.ly"
\include "cello.ly"

\addQuote "cello" { \celloNotes }

bassoonINotes = {
  % Orchestration p. 1
  \key c \minor
  \clef bass
  \time 4/4
  R1*2 |
  \time 6/4
  R1. |
  \time 4/4
  \relative b,, {
    r2 b~(\p |
    % p. 2
    \time 3/2
    b\< f' ef)\! |
  }
  \quoteDuring #"cello" {
    \time 6/4
    s1.*3 |
    % p. 3
    \time 4/4
    s1 |
    \key a \minor
    \time 6/4
    s1.*4
    % p. 4
    s2
  }
  r2 |
}

\addQuote "bassoon1" { \bassoonINotes }
