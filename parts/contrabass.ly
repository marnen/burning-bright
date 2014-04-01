\version "2.18.0"
\include "english.ly"
\include "cello.ly"


contrabassNotes = {
  \addQuote "cello_d" { \transpose c' c \celloNotes }
  
  % Smallrchestration p. 1
  \clef "F_8"
  \key c \minor
  R1*2 |
  R1.*2 |
  % p. 2
  R1*2 |
  \quoteDuring #"cello_d" {
    \repeat unfold 3 { s2. \parenthesize ef,2 s4 }
    % p. 3
    s2.
  }
  %{
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
    % p. 7
    d,4\f r d,\mf r |
    \quoteDuring #"cello" {
      s1*4 |
      % p. 8
      \time 3/2
      s1. |
      \time 5/4
      s1
    }
    d,4 \bar "||"
    \key ef \major
    \time 6/4
    \quoteDuring #"cello_d" { s1.*6 | }
    % p. 10
    \relative a, {
      af2.(\< f)\! \bar "||"
    }
    \quoteDuring #"cello" { s1.*5 | }
  %}
}

\addQuote "contrabass" { \contrabassNotes }
