\version "2.14.2"
\include "english.ly"

bassTromboneNotes = {
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
  R1.*3 |
  % p. 3
  \relative e, {
    \time 4/4
    r2 r4 ef!_\markup { \dynamic f \italic pesante } ~ |
    \key a \minor
    \repeat unfold 2 { ef4 r g!~ g r ef4~ | }
    % p. 4
    ef r r r2 r4 |
    R1. \bar "||"
    \key c \minor
    \time 4/4
    R1 |
  }
}

\addQuote "bass_trombone" { \bassTromboneNotes }