\version "2.18.0"
\include "english.ly"
\include "../globals.ly"

celloNotes = {
  % Orchestration p. 1
  \clef bass
  \key c \minor
  \relative c {
    \time 4/4
    c4\mp r af r |
    c r af r |
    \time 6/4
    c r af r c r |
    \time 4/4
    af r c r |
    % p. 2
    \time 3/2
    af\< r c r af r\! |
    \time 6/4
    g=,2_\markup { \dynamic f \italic pesante } r4 ef2 r4 |
    \repeat unfold 2 { g2 r4 ef2 r4 } |
    % p. 3
    \time 4/4
    g2 r |
    \key a \minor
    \time 6/4
    b!=,2 r4 e,!2 r4 |
    % p. 4
    b'2 r4 e,!2 r4 |
    b'2\> r4 e,!2 r4\! |
    b'2\mp r4 e,!2 r4 \bar "||"
    \key c \minor
    \time 4/4
    c'=4 r af r |
    % p. 5
    c r af r |
    \time 3/2
    c r af r c r |
    \time 4/4
    af r c r |
    \time 3/2
    f= r ef! r a, r |
    % p. 6
    \key d \minor
    \time 4/4
    d= r bf r |
    ef\< r gs= r\! |
    \time 6/4
    a,=,2_\markup { \dynamic mf \italic pesante } r4 ef2 r4 |
    a2\< r4 ef2 r4\! |
    % p. 7
    \time 4/4
    <d d'>\f^\div r d=,\mf^\unis r |
    << 
      { \repeat unfold 13 { d4 r } }
      { s1*4 | \time 3/2 s1. | \time 5/4 s1 }
    >>
    % p. 8
    r4 \bar "||"
  }
  \key ef \major
  \time 6/4
  <<
    { \repeat unfold 6 { af2.( f) | } }
    { s2\p\< s8 s\! s2\mf\> s8 s\! | s_\sim }
  >>
  % p. 10
  \relative a {
    af2.\< f8( ef d c bf af)\! \bar "||"
    << 
      { \repeat unfold 5 { g=,2 r4 cs,2 r4 | } }
      { s4\f }
    >>
  }
}

\addQuote "cello" { \celloNotes }
