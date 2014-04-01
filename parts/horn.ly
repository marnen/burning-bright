\version "2.18.0"
\include "english.ly"
\include "voice.ly"

hornNotes = {
  \transpose f c' {
    % Orchestration p. 1
    \clef treble
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
    <<
      {
        \repeat unfold 3 {
          r4 cs''2 r4 g'2 |
        }
      }
      {
        s4 s\mf
      }
    >>
    % p. 3
    \time 4/4
    r4 cs''2 r4 |
    \time 6/4
    <<
      {
        \repeat unfold 4 {
          d''2 r4 b'2 r4
        }
      }
      {
        s1.\f | s1. | s2.\> s2 s4\! | s1.\mp
      }
    >>
    \bar "||"
    % p. 4
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
    \time 4/4
    R1*2 |
    \relative e' {
      r4 ef2\mp r4 g2 |
      r4 a2\< bf d4\! |
      % p. 7
      d=''\f r r2 |
    }
    R1*4 |
    % p. 8
    \time 3/2
    R1. |
    \time 5/4
    R1*5/4 \bar "||"
    \time 6/4
    R1.*7 \bar "||"
    % p. 10
    \quoteDuring #"voice_u" { s1.*5 } |
  }
}

\addQuote "horn" { \hornNotes }
