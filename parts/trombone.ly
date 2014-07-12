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
    <<
      \repeat unfold 5 {
        ef=,4 r g ~ g r ef ~ |
      }
      {
        % 6/4
        s1. |
        % 9/4
        s4*9 |
        % 6/4
        s1.\>
        % p. 5
        % 9/4
        % 6/4
      }
    >>
    \key c \minor
    ef=,2\!\p r |
  }
}

\addQuote "tenor_trombone" { \tenorTromboneNotes }
