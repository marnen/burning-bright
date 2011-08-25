\version "2.14.2"
\include "english.ly"
\include "bassoon1.ly"
\include "cello.ly"
\include "contrabass.ly"

bassoonIINotes = {
  % Orchestration p. 1
  \clef bass
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
  \quoteDuring #"bassoon1" {
    \skip 1.*3 |
    % p. 3
    s1 | s1. |
    % p. 4
    \partcombineApart
    s2. s2 
  }
  \relative e, {
    ef4~ |
    ef\> r g~ g r ef\!~ |
    ef\mp r g~ g r ef~ \bar "||"
    \time 4/4
    \key c \minor
    ef2 \partcombineAutomatic r |
  }
  % p. 5
  R1 |
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
  \quoteDuring #"cello" {
    s1.*2 |
  }
  % p. 7
  \time 4/4
  d,4\f r d,\mf r |
  \quoteDuring #"cello" { 
    s1*4 |
    % p. 8
    \time 3/2 s1. | \time 5/4 s1
  } d,4 \bar "||"
  \key ef \major
  \time 6/4
  \quoteDuring #"cello_d" { s1.*3 } |
  % p. 9
  R1. |
  \quoteDuring #"bassoon1_d" { s1.*8 } |
}

\addQuote "bassoon2" { \bassoonIINotes }
