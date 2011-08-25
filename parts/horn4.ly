\version "2.14.2"
\include "english.ly"
\include "../globals.ly"

hornIVNotesConcert = {
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
  R1.*3 |
  % p. 3
  \time 4/4
  R1 |
  \time 6/4
  <<
    {
      \repeat unfold 4 {
        f'2 r4 d'2 r4
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
  \relative a {
    r4 a2\mp r4 bf2 |
    r4 d2\< ef\! r4 |
  }
  <<
    { \repeat unfold 15 { d4( gs8) r } }
    { 
      s1\mf^\bellUp | s1*4 |
      % p. 8
      \time 3/2
      s1.
      \time 5/4
      s1
    }
  >>
  d4( \bar "||"
  \time 6/4
  af8) r r4 r r2 r4 |
  % p. 9
  \relative a, {
    <<
      { af2.( f) }
      { s2.\pp\<^\ord s2\mp\> s8 s\! }
    >> |
    R1.
    <<
      { \repeat unfold 4 { af2.( f) } }
      { s1._\sim | s1.*2 | s1\< s4 s8 s\! }
    >>
    \bar "||"
    g=,2\f r4 r2 r4 |
    R1.*4 |
  }
}

hornIVNotes = {
  \transpose f c' \hornIVNotesConcert
}

\addQuote "horn4" { \hornIVNotesConcert }
