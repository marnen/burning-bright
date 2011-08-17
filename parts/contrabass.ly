\version "2.14.2"
\include "english.ly"
\include "cello.ly"


contrabassNotes = {
  \addQuote "cello_d" { \transpose c' c \celloNotes }
  
  % Orchestration p. 1
  \clef "F_8"
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
  \quoteDuring #"cello_d" {
    \time 6/4
    \repeat unfold 3 { s2. \parenthesize ef,2 s4 }
    % p. 3
    \time 4/4
    s1 |
    \time 6/4
    s1.*4
    % p. 4
    \time 4/4
    s2
  }
  r2 |
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
  R1 |
  \quoteDuring #"cello_d" {
    s1\mp |
    \time 6/4
    \repeat unfold 2 { s2. \parenthesize ef,2 s4 | }
  }
}
