\version "2.14.2"
\include "english.ly"

violaNotes = {
  % Orchestration p. 1
  \clef alto
  \key c \minor
  \time 4/4
  R1*2 |
  \time 6/4
  R1. |
  \time 4/4
  R1 |
  % p. 2
  \time 3/2
  r2 c4\mp\< r af r\! |
  \time 6/4
  <<
    {
      \repeat unfold 3 {
        g2 r4 ef2 r4 |
      }
    }
    {
      s1.*3_\markup { \dynamic f \italic pesante }
    }
  >>
  \time 4/4
  g2 r |
  \key a \minor
  <<
    {
      b!2 r4 e!2 r4 |
      \repeat unfold 3 {
        b2 r4 e!2 r4
      }
    }
    {
      s1.*2 |
      % p. 4
      s1\> s4 s4\! |
      s1\mp
    }
  >>
  \bar "||"
  \key c \minor
  c4 r r2 |
}

\addQuote "viola" { \violaNotes }
