\version "2.18.0"
\include "english.ly"
\include "violin2.ly"
\include "clarinet1.ly"

\addQuote "clarinet1_d4" { \transpose c' g \clarinetINotesConcert }

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
      % p. 7
      \time 4/4
      a\f r r2 |
    }
    a1~\p | a~ | a |
    % p. 8
    \relative e' {
      r4 e_\markup { \italic sempre \dynamic p } a d |
      \time 3/2
      c f bf,!='2 r |
      \time 5/4
      R1*5/4 \bar "||"
    }
    \key ef \major
    \time 6/4
    \quoteDuring #"clarinet1_d4" { s1.*7 } \bar "||"
    \quoteDuring #"flute2_d" { s1.*5 }
  }
}

\addQuote "clarinet2" { \clarinetIINotes }
