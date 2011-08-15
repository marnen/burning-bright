\version "2.14.2"
\include "english.ly"

violinINotes = {
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
        \relative d' {
          r8 d([ g d)]
        }
      }
      \repeat unfold 7 {
        \relative c''' {
          r8 cs( g d cs g=')
        }
      }
      r8 cs''' |
    }
  >>
  \key a \minor
  \time 6/4
  <<
    {
      s1.*2 |
      % p. 4
      s8 s\> s2 s s8 s\! |
      s1.\mp
    }
    {
      \repeat unfold 8 {
        \relative d''' {
          r8 d( b a gs d='')
        }
      }
    }
  >>
  \bar "||"
  \key c \minor
  \repeat unfold 2 {
    \relative d' {
      r8 d( g d)
    }
  }
}

\addQuote "violin1" { \violinINotes }
