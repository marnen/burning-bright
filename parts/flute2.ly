\version "2.14.2"
\include "english.ly"

fluteIINotes = {
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
  \relative d' {
    r4 d\mf( ef) r ef( g) |
    r a='(\< bf) d( ef g)\! |
    % p. 7
    \time 4/4
    a=''\f r r2 |
    a1\p~ | a~ | a |
    % p. 8
    a~ |
    \time 3/2
    a1.~ |
    \time 5/4
    a1 r4 \bar "||"
  }
  \key ef \major
  \time 6/4
  \relative a' {
    af!8(\p\< bf c ef f af)\! bf(\mf\> af f ef c bf)\! |
    <<
      {
        \repeat unfold 5 {
          af8( bf c ef f af) bf( af f ef c bf) |
        }
      }
      {
        s_\markup { \italic sim. }
      }
    >>
    % p. 10
    af='8(\< bf c ef f af) c,( ef \times 2/3 { f[ af bf] } \times 2/3 { b[ c cs])\! } \bar "||"
    <<
      { \repeat unfold 5 { r4 \times 2/3 { d='''8( cs c } b16 bf a af g4) r r | } }
      { s4 s\f }
    >>
  }
}

\addQuote "flute2" { \fluteIINotes }
