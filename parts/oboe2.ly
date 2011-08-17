\version "2.14.2"
\include "english.ly"
\include "oboe1.ly"

oboeIINotes = {
  % Orchestration p. 1
  \clef treble
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
  \quoteDuring #"oboe1" { s1.*4 }
  \bar "||"
  % p. 4
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
  R1. |
  \quoteDuring #"flute2" { s4 s2\mf s2. } |
}

\addQuote "oboe2" { \oboeIINotes }
