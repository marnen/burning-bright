\version "2.14.2"
\include "english.ly"

fluteIINotes = {
  % Orchestration p. 1
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
  R1.*3 |
  % p. 3
  \time 4/4
  R1 |
  \key a \minor
  \time 6/4
  R1.*4 \bar "||"
  % p. 4
  \key c \minor
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
  \key d \minor
  \time 4/4
  R1*2 |
  \time 6/4
  \relative d' {
    r4 d\mf( ef) r ef( g) |
    r a='(\< bf) d( ef g)\! |
  }
}

\addQuote "flute2" { \fluteIINotes }
