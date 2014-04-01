\version "2.18.0"
\include "english.ly"
\include "bassoon1.ly"
\include "cello.ly"

bassTromboneNotes = {
  % Orchestration p. 1
  \clef bass
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
  \relative e, {
    \time 4/4
    r2 r4 ef!_\markup { \dynamic f \italic pesante } ~ |
    \key a \minor
    \repeat unfold 2 { ef4 r g!~ g r ef4~ | }
    % p. 4
    ef r r r2 r4 |
}
  R1. \bar "||"
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
  \set Staff.quotedEventTypes = #'(note-event rest-event)
  \quoteDuring #"cello" { s1._\markup { \dynamic mp \italic pesante } | s1. | }
  \set Staff.quotedEventTypes = #'(note-event rest-event tie-event beam-event tuplet-span-event articulation-event dynamic-event)
  % p. 7
  \time 4/4
  d,4\mf r d,\mp r |
  \quoteDuring #"cello" {
    s1*4 |
    % p. 8
    \time 3/2
    s1. |
    \time 5/4
    s1
  }
  d,4( \bar "||"
  \key ef \major
  \time 6/4
  af,) r r r2 r4 |
  % p. 9
  R1.*5 |
  % p. 10
  \quoteDuring #"bassoon1_d" {
    s1. \bar "||"
    s1.*5 |
  }
}

\addQuote "bass_trombone" { \bassTromboneNotes }
