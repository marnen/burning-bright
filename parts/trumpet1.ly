\version "2.14.2"
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
  R1 |
}

\addQuote "trumpet1" { \trumpetINotes }
