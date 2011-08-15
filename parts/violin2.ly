\version "2.14.2"
\include "english.ly"

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
      s1.\mp
    }
    {
      \relative g'' {
        r8 g( f d b gs=')
      }
      \repeat unfold 7 {
        \relative g'' {
          r8 g!( f d b gs=')
        }
      }
    }
  >>
  \bar "||"
  \key c \minor
  \repeat unfold 2 {
    r8 c'([ g' c'])]
  }
}

\addQuote "violin2" { \violinIINotes }
