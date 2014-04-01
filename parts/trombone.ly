\version "2.18.0"
\include "english.ly"
\include "../globals.ly"

tenorTromboneNotes = {
  % Small orchestration p. 1
  \clef tenor
  \key c \minor
  R1*2 |
  R1.*2 |
  % p. 2
  R1*2 |
  \relative g, {
    <<
      { s4_\mfpesante }
      \repeat unfold 3 {
        g2 r4 ef2 r4
      }
    >>
    % p. 3
    g=,2 r4 |
  }
  %{
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
