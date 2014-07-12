\version "2.18.0"
\include "english.ly"
\include "cello.ly"

\addQuote "cello" { \celloNotes }

bassoonNotes = {
  % Small orchestration p. 1
  \key c \minor
  \clef bass
  R1*2 |
  \relative d {
    r2 r4 r8 d\mp( ef d c g') |
    cs,=4( d2) r4  r b,(\p ~ |
    % p. 2
    \tuplet 3/2 { b=,,1 f'2\< ~ } |
    \tuplet 3/2 { f=,2 ef1) } |
  }
  \quoteDuring #"cello" {
    % 6/4
    s1.*2 |
    % p. 3
    % 9/4
    s1. s2.|
    % 6/4
    s1. |
    % 7/4
    s1.. |
    % p. 4
    % a minor
    % 6/4
    s1. |
    % 9/4
    s4*9 |
    % 6/4
    s1. |
    % p.5
    % 9/4
    s4*9 |
    % c minor
    % 4/4
    s2
  }
  r2
}

\addQuote "bassoon" { \bassoonNotes }
\addQuote "bassoon_d" { \transpose c' c \bassoonNotes }
