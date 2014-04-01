\version "2.18.0"
\include "english.ly"
\include "voice.ly"

trumpetINotes = {
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
  \set Staff.quotedEventTypes = #'(note-event rest-event)
  \quoteDuring #"voice_u" { s4 s2\mf s2. } |
  \set Staff.quotedEventTypes = #'(note-event rest-event tie-event beam-event tuplet-span-event)
  R1.*2 |
  \time 4/4
  \quoteDuring #"voice_u" { s4 s2.\f } |
  \key a \minor
  \time 6/4
  f''2 r4 \quoteDuring #"voice_u" { s2. | s2. } r2 r4 |
  R1.*2 \bar "||"
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
}

\addQuote "trumpet1" { \trumpetINotes }
