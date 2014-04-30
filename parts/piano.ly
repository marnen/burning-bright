\version "2.18.2"
\include "english.ly"
\include "../globals.ly"

pianoRHNotes = {
  \key c \minor
  % Small orchestration p. 1
  R1*2 | R1.*2 |
  % p. 2
  R1*2 |
  <<
    { s4_\mfpesante }
    \repeat unfold 5 {
      g2 r4 ef2 r4
    }
  >>
  % p. 3
  g2 r2 |
  % p. 4
  \key a \minor
  % 6/4
  \repeat unfold 2 {
    b2 r4 e2 r4 |
  }
}

pianoLHNotes = {
  \key c \minor
  \clef bass
  % p. 1
  R1*2 | R1.*2 |
  % p. 2
  R1*2 |
  \relative g, {
    \repeat unfold 5 {
      <g g,>2 r4 <ef ef,>2 r4
    }
    % p. 3
    <g=, g,>2 r |
    % p. 4
    \key a \minor
    % 6/4
    \repeat unfold 2 {
      <b=, b,>2 r4 <e, e,>2 r4 |
    }
  }
}

pianoNotes = {
  <<
    \context Staff = "pianoRH" { \pianoRHNotes }
    \context Staff = "pianoLH" { \pianoLHNotes }
  >>
}