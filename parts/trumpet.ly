\version "2.18.0"
\include "english.ly"
\include "voice.ly"

trumpetNotes = {
  % Small orchestration p. 1
  \clef treble
  \key c \minor
  R1*2 |
  R1.*2 |
  % p. 2
  R1*2 |
  \relative d'' {
    r2 d4\mf ~ d8 cs g2 |
    R1. |
    % p. 3
    r2 r8 d'=''8 ~ d4 cs g bf4. a8 r4 |
    % 6/4
    R1. |
    % 7/4
    r2 r4 d='' ~ d cs e |
    % p. 4
    \key a \minor
    % 6/4
    f=''2 r4 r2 r4 |
    R1. |
  }
  %{
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
    R1.*2 |
    % p. 7
    \relative a' {
      <<
        { \repeat unfold 15 { r8 a([ d a)] } }
        { s8 s\mf }
      >>
      % p. 8
      r8 a( \bar "||"
      \key ef \major
      \time 6/4
      af!) r r4 r r2 r4
    }
    % p. 9
    R1. |
    \relative c'' {
      r2 r4 r8 cs\noBeam\pp^\markup { muted } d e4. |
    }
    R1.*4 \bar "||"
    % p. 10
    R1.*5 |
   %}
}

\addQuote "trumpet" { \trumpetNotes }
