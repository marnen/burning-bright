\version "2.14.2"
\include "english.ly"
\include "violin1.ly"

\addQuote "violin1_d" { \transpose c' c \violinINotes }

violinIINotes = {
  % Orchestration p. 1
  \key c \minor
  <<
    {
        \time 4/4
      s1*2\mp |
      \time 6/4
      s1. |
      \time 4/4
      s1 |
      % p. 2
      \time 3/2
      s2\< s2.. s8\! |
      \time 6/4
      s8 s\f s2 s2. |
      s1.*2 |
      % p. 3
      \time 4/4
      s1 |
    }
    {
      \repeat unfold 12 {
        r8 c'([ g' c'])]
      }
      \repeat unfold 7 {
        \relative d'' {
          r8 d([ cs g d cs=')]
        }
      }
      r8 d'' |
    }
  >>
  \key a \minor
  \time 6/4
  <<
    {
      s1.*2 |
      % p. 4
      s8 s\> s2 s s8 s\! |
      s8 s\mp
    }
    {
      \relative g'' {
        r8 g( f d b gs=')
      }
      \repeat unfold 7 {
        \relative g'' {
          r8 g!( f d b gs!=')
        }
      }
    }
  >>
  \bar "||"
  \key c \minor
  <<
    { r8 c'([ g'! c'])] \repeat unfold 8 { r8 c'([ g' c'])] } }
    { s1*2 | \time 3/2 s1. | \time 4/4 s1 | }
  >>
  \relative d' {
    \time 3/2
    \repeat unfold 2 { r8 d( g d) } r d( c'! d,) |
    % p. 6
    \key d \minor
    \time 4/4
    <<
      { \repeat unfold 4 { r f='( d' f,) } }
      { s1 | s8 s\< s s s s s s\! | }
    >>
  }
  \relative a {
    \time 6/4
    <<
      { \repeat unfold 2 { r8 a( bf d ef g) } } |
      { s8 s\mf }
    >>
    r d='(\< ef g bf d)\! ef(\> d bf a g ef)\! |
  }
  % p. 7
  \quoteDuring #"violin1_d" { s1*5 | s1. | s1 }
  \relative d' {
    % p. 8
    r8 d(\>^\unis |
    \key ef \major
    ef2.\!\p\< f)\!\mf\> |
    % p. 9
    << \repeat unfold 5 { ef2.( f) } { s\!_\sim } >>
    % p. 10
    ef='2.\< f8( g bf c \times 2/3 { ef[ f fs\!)] } |
    << \repeat unfold 5 { r4 g=''( \glissando d8) r r4 cs( \glissando g='8) r | } { s4 s\f } >>
  }
}

\addQuote "violin2" { \violinIINotes }
