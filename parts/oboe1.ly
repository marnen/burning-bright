\version "2.14.2"
\include "english.ly"

oboeINotes = {
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
  <<
    {
      \repeat unfold 8 {
        \relative a'' {
          r8 af( g af f e)
        }
      }
    }
    {
      s8 s\f s2 s2. |
      s1. |
      s8 s\> s2 s s8 s8\! |
      s8 s\mp
    }
  >>
  \bar "||"
  % p. 4
  \time 4/4
  \key c \minor
  R1 |
}

\addQuote "oboe1" { \oboeINotes }
