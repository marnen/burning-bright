\version "2.14.2"
\include "english.ly"
\include "cello.ly"

\addQuote "cello" { \celloNotes }

bassoonINotes = {
  % Orchestration p. 1
  \key c \minor
  \clef bass
  \time 4/4
  R1*2 |
  \time 6/4
  R1. |
  \time 4/4
  \relative b,, {
    r2 b~(\p |
    % p. 2
    \time 3/2
    b\< f' ef)\! |
  }
  \quoteDuring #"cello" {
    \time 6/4
    s1.*3 |
    % p. 3
    \time 4/4
    s1 |
    \key a \minor
    \time 6/4
    s1.*4
    % p. 4
    s2
  }
  r2 |
  % p. 5
  R1 |
  \time 3/2
  R1. |
  \relative c, {
    \partcombineSoloIOnce
    \time 4/4
    r8 cs(\p d e~ e2) |
    \time 3/2
    r8 e( f g~ g2~ g8 a bf c) |
    % p. 6
    \key d \minor
    \time 4/4
    cs=1 |
    r2 r8 ef(\< df c~\! |
    \time 6/4
    c4)\mf r r d! cs g~ |
    g=,8 d'\< ef d c! g' d( ef f g bf c)\! |
    % p. 7
    \time 4/4
    d='4\f r r2 |
    R1*2 |
  }
  \relative c {
    r2 r4 r8 cs\mf |
    % p. 8
    ds e4.~ e4 r |
    \time 3/2
    r4 r8 c'='( b a4) b8( a g!4.) |
    \time 5/4
    r2 r d=4( \bar "||"
    \key ef \major
    af'=8) r r4 r r2 r4 |
  }
  % p. 9
  R1.*3
  \relative b, {
    r4 b2_\markup { \dynamic mp \italic "non legato" } ff' ef4 |
    % p. 10
    r gf2 e f4 |
    r2 r4 r a=2->\f \bar "||"
    \repeat unfold 5 { g=2 r4 cs,=2 r4 | }
  }
}

\addQuote "bassoon1" { \bassoonINotes }
\addQuote "bassoon1_d" { \transpose c' c \bassoonINotes }
