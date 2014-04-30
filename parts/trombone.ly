\version "2.18.0"
\include "english.ly"
\include "../globals.ly"

tenorTromboneNotes = {
  % Small orchestration p. 1
  \clef bass
  \key c \minor
  R1*2 |
  R1.*2 |
  % p. 2
  R1*2 |
  % 6/4
  R1.*2 |
  % p. 3
  \relative d {
    % 9/4
    r2 r4 r2 r4 r2 d4\mf |
    % 6/4
    ef=2 d4 ~ d cs4. g'8 |
    % 7/4
    ef=2 r4 r2 r4 ef,\f ~ |
    % p. 4
    \key a \minor
    % 6/4
    \repeat unfold 2 {
      ef=,4 r g ~ g r ef ~ |
    }
  }
  %{
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
      r4 bf2\< d ef4\! |
      d='\mf r r2 |
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
      { \repeat unfold 5 { r2 r4 r af'( \glissando d'8) r | } }
      { s1 s4\f }
    >>
  %}
}

\addQuote "tenor_trombone" { \tenorTromboneNotes }
