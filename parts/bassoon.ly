\version "2.18.0"
\include "english.ly"
\include "cello.ly"

\addQuote "cello" { \celloNotes }

bassoonNotes = {
  % Small orchestration p. 1
  \key c \minor
  \clef bass
  R1*2 |
  \relative d {
    r2 r4 r8 d\mp( ef d c g') |
    cs,=4( d2) r4  r b,(\p ~ |
    % p. 2
    \tuplet 3/2 { b=,,1 f'2\< ~ } |
    \tuplet 3/2 { f=,2 ef1) } |
  }
  \quoteDuring #"cello" {
    % 6/4
    s1.*2 |
    % p. 3
    % 9/4
    s1. s2.|
    % 6/4
    s1. |
    % 7/4
    s1.. |
    % p. 4
    % a minor
    % 6/4
    s1.*2 |
  }
  %{
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
  %}
}

\addQuote "bassoon" { \bassoonNotes }
\addQuote "bassoon_d" { \transpose c' c \bassoonNotes }
