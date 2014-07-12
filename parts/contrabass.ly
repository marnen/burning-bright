\version "2.18.0"
\include "english.ly"
\include "cello.ly"


contrabassNotes = {
  \addQuote "cello_d" { \transpose c' c \celloNotes }

  % Small orchestration p. 1
  \clef "F_8"
  \key c \minor
  R1*2 |
  R1.*2 |
  % p. 2
  R1*2 |
  \quoteDuring #"cello_d" {
    \repeat unfold 5 { s2. \parenthesize ef,2 s4 }
    % p. 3
    s1 |
    % p. 4
    % 6/4
    s1. |
    % 9/4
    s4*9 |
    % 6/4
    s1. |
    % p. 5
    % 9/4
    s4*9 |
    % c minor
    % 4/4
    s2
  } r2 |
}

\addQuote "contrabass" { \contrabassNotes }
