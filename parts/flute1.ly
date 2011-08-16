\version "2.14.2"
\include "english.ly"
\include "voice.ly"

fluteINotes = {
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
  \time 6/4
  R1. |
  % p. 4
  r2 r4
  \quoteDuring #"voice_u" {
    s4 s2\f | s1.*2 | s1
  } % 4/4, c minor
}

\addQuote "flute1" { \fluteINotes }
