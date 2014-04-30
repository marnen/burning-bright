\version "2.18.0"
\include "english.ly"
\include "../globals.ly"

oboeNotes = {
  % Small orchestration p. 1
  \clef treble
  \key c \minor
  R1*2 |
  R1.*2 |
  % p. 2
  R1*2 |
  \relative g' {
    <<
      { s4 s_\fpesante }
      \repeat unfold 5 {
        r4 g2 r4 d'2
      }
    >>
    r4 g,='2 r4 |
    % p. 4
    \key a \minor
    % 6/4
    \repeat unfold 2 {
      d'=''2 r4 gs,2 r4 |
    }
  }
  %{
    \bar "||"
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
    % p. 5
    \key d \minor
    \time 4/4
    R1*2 |
    \time 6/4
    R1. |
    \relative b' {
      r4 bf(\mf\< d) ef( g a)\! |
      % p. 7
      \time 4/4
      \partcombineApart
      d,=''\f r r2 |
      \partcombineAutomatic
      d1~\p | d~ | d |
      % p. 8
      d~ |
      \time 3/2
      d1.~ |
      \time 5/4
      d1 r4 \bar "||"
    }
    \key ef \major
    \time 6/4
    R1.*3 |
    % p. 9
    \relative c' {
      r4 cs8\p( d cs b fs' cs4.) r4 |
      R1. |
      % p. 10
      r2 r4 g'='8 ef! f4. g8 |
    }
    \relative g'' {
      r2 r4 << { g2. } { s2\mf\< \tuplet 3/2 { s8 s s\! } } >> \bar "||"
      <<
        { \repeat unfold 10 { r4 g2 } }
        { s4 s\f }
      >> |
    }
  %}
}

\addQuote "oboe" { \oboeNotes }
