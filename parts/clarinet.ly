\version "2.18.0"
\include "english.ly"
\include "../globals.ly"
\include "flute.ly"
\include "violin1.ly"

clarinetNotesConcert = {
  % Small orchestration p. 1
  \clef treble
  \key c \minor
  \time 4/4
  R1*2 |
  R1.*2 |
  % p. 2
  R1*2 |
  <<
    { s4 s_\fpesante }
    \repeat unfold 3 {
      r4 cs''2 r4 g''2
    }
  >>
  r4 cs''2
  %{
    \time 3/2
    R1. |
    \time 6/4
    \quoteDuring #"violin1" {
      s1.*3 |
      % p. 3
      \time 4/4
      s1 |
      \time 6/4
      s1.*4 \bar "||"
    }
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
    \relative b {
      r4 bf(\mf d) r d( ef) |
      r g='(\< a) bf( d ef)\! |
      % p. 7
      \time 4/4
      d'\f r r2 |
    }
    \relative a' {
      a1~\p | a~ | a |
      % p. 8
      a~
      \time 3/2
      a1.~ |
      \time 5/4
      a1 r4 \bar "||"
    }
    \key ef \major
    \relative b {
      \time 6/4
      <<
        { \repeat unfold 6 { ef8( f g bf c ef) f( ef c bf g f) | } }
        { s2\p\< s8 s\! s2\mf\> s8 s\! | s_\sim }
      >>
      % p. 10
      ef='8(\< f g bf c ef) g,( bf \tuplet 3/2 { c[ ef f] } \tuplet 3/2 { fs[ g af])\! } \bar "||"
    }
    \quoteDuring #"flute_d" { s1.*5 | }
  %}
}

clarinetNotes = {
  \transpose bf c' \clarinetNotesConcert
}

\addQuote "clarinet" { \clarinetNotesConcert }
