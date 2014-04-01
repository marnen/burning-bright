\version "2.18.0"
\include "english.ly"
\include "oboe1.ly"

oboeIINotes = {
  % Orchestration p. 1
  \clef treble
  \key c \minor
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
  R1.*3 |
  % p. 3
  \time 4/4
  R1 |
  \key a \minor
  \time 6/4
  \quoteDuring #"oboe1" { s1.*4 }
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
  % p. 6
  \key d \minor
  \time 4/4
  R1*2 |
  \time 6/4
  R1. |
  \quoteDuring #"flute2" { s4 s2\mf s2. | \time 4/4 s1 } |
  % p. 7
  \relative d' {
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
  R1.*6
  % p. 10
  \relative d'' {
    r2 r4 << { d2. } { s2\mf\< \tuplet 3/2 { s8 s s\! } } >> \bar "||"
    <<
      { \repeat unfold 5 { r4 d2 r4 cs2 | } }
      { s4 s\f }
    >>
  }
}

\addQuote "oboe2" { \oboeIINotes }
