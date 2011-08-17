\version "2.14.2"
\include "english.ly"
\include "violin2.ly"

clarinetIINotes = {
  \transpose bf c' {
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
    \quoteDuring #"violin2" {
      s1.*3 |
      % p. 3
      \time 4/4
      s1 |
      \time 6/4
      s1.*4 \bar "||"
    }
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
    \relative a {
      r4 a(\mf bf) r bf( d) |
      r ef(\< g) a( bf d)\! |
    }
  }
}

\addQuote "clarinet2" { \clarinetIINotes }
