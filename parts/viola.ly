\version "2.14.2"
\include "english.ly"

violaNotes = {
  % Orchestration p. 1
  \clef alto
  \key c \minor
  \time 4/4
  R1*2 |
  \time 6/4
  R1. |
  \time 4/4
  R1 |
  % p. 2
  \time 3/2
  r2 c4\mp\< r af r\! |
  \time 6/4
  <<
    {
      \repeat unfold 3 {
        g2 r4 ef2 r4 |
      }
    }
    {
      s1.*3_\markup { \dynamic f \italic pesante }
    }
  >>
  \time 4/4
  g2 r |
  \key a \minor
  <<
    {
      b!2 r4 e!2 r4 |
      \repeat unfold 3 {
        b2 r4 e!2 r4
      }
    }
    {
      s1.*2 |
      % p. 4
      s1\> s4 s4\! |
      s1\mp
    }
  >>
  \bar "||"
  \key c \minor
  c4 r r2 |
  % p. 5
  R1 |
  \time 3/2
  R1. |
  \time 4/4
  R1 |
  \time 3/2
  \relative c' {
    <<
      {
        \repeat unfold 3 { r8 cs( d cs) } |
        % p. 6
        \key d \minor
        \repeat unfold 2 { r8 e( a e) } |
        r e!( a e) r e( a e) |
        \repeat unfold 3 { r8 a,=( bf d ef g) }
      }
      {
        \time 3/2
        s8 s\mp s4 s1 |
        \time 4/4
        s1 | s8 s\< s s s s s s\! |
        \time 6/4
        s8 s\mf s2 s2. |
        s8 s\< s s s s\!
      }
    >>
    bf='(\> a g ef d bf)\! |
    % p. 7
    << \repeat unfold 15 { r8 a=([ d a)] } { s8 s\mf } >>
    r8 a=(\> |
    \key ef \major
    bf2.\!\p\< c)\!\mf\> |
    % p. 9
    << \repeat unfold 5 { bf2.( c) } { s\!_sim } >> |
    % p. 10
    bf=\< c8( ef f g \times 2/3 { bf[ c cs])\! } |
    << \repeat unfold 5 { r4 d=''( \glissando g,8) r r4 g( \glissando cs,='8) r } { s4 s\f } >>
  }
}

\addQuote "viola" { \violaNotes }
