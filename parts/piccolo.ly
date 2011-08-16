\version "2.14.2"
\include "english.ly"
\include "violin1.ly"

\addQuote "violin1_u" { \transpose c c' \violinINotes }

piccoloNotes = {
  % Orchestration p. 1
  \clef "G^8"
  \key c \minor
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
  \quoteDuring #"violin1_u" {
    s1.*3 |
    % p. 3
    \time 4/4
    s1 |
    \time 6/4
    s1.*3 |
    % p. 4
    s2.
  }
  r2 r4 \bar "||"
  \time 4/4
  \key c \minor
  R1 |
}

\addQuote "piccolo" { \piccoloNotes }
