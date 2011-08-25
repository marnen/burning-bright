\version "2.14.2"
\include "english.ly"

tenorTromboneIINotes = {
  % Orchestration p. 1
  \clef tenor
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
  \relative a {
    r4 a2\mp r4 a2 |
    r4 a2\< a a4\! |
    d,=\mf r r2 |
  }
  R1*4 |
  % p. 8
  \time 3/2
  R1. |
  \time 5/4
  R1*5/4 \bar "||"
  \key ef \major
  \time 6/4
  R1.*7 \bar "||"
  % p. 10
  <<
    { \repeat unfold 5 { r4 d'( \glissando af8) r r2 r4 | } }
    { s4 s\f }
  >>
}

\addQuote "tenor_trombone2" { \tenorTromboneIINotes }
