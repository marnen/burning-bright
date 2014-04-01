\version "2.18.0"
\include "english.ly"
\include "flute2.ly"
\include "violin1.ly"

\addQuote "flute2_u" { \transpose c c' \fluteIINotes }
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
  R1*2 |
  % p. 5
  \time 3/2
  R1. |
  \time 4/4
  R1 |
  \time 3/2
  R1. |
  % p. 6
  \key d \minor
  \time 4/4
  R1*2 |
  \time 6/4
  R1.*2 |
  % p. 7
  \tempo "Con moto"
  \time 4/4
  R1*5 |
  % p. 8
  \time 3/2
  R1. |
  \time 5/4
  R1*5/4 \bar "||"
  \key ef \major
  \time 6/4
  R1.*6 |
  % p. 10
  r2 r4 \quoteDuring #"flute2_u" { s2\mf\< \tuplet 3/2 { s8 s s\! } | s1.*5 | }
}

\addQuote "piccolo" { \piccoloNotes }
