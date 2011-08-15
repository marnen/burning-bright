\version "2.14.2"
\include "english.ly"
\include "cello.ly"

\addQuote "cello" { \celloNotes }

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
  \quoteDuring #"cello" {
    \skip 1.*3 |
    % p. 3
    s1 | s1. |
    % p. 4
    s2. s2 
  }
  \relative e, {
    ef4~ |
    ef\> r g~ g r ef\!~ |
    ef\mp r g~ g r ef~ \bar "||"
    \time 4/4
    \key c \minor
    ef2 r |
  }
}

\addQuote "bassoon2" { \bassoonIINotes }
