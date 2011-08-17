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
  }
}

\addQuote "bassoon1" { \bassoonINotes }
