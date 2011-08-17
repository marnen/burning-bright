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
          r8 cs([ g d cs g=')]
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
      s8 s\mp
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
  <<
    {
      \relative d' {
        r8 d( g! d)
        \repeat unfold 8 { r8 d( g d) }
      }
    }
    {
      \time 4/4 s1*2
      % p. 5
      \time 3/2 s1.
      \time 4/4 s1
    }
  >>
  \time 3/2
  \relative d' {
    r8 d( c'! d,) r d( c' d,) r g='( f' g,) |
    % p. 6
    \key d \minor
    \time 4/4
    \repeat unfold 2 { r8 e'=''( a, e') }
    r e!=''(\< a, e') r e( a, e')\! |
  }
  \time 6/4
  \relative a {
    r8 a(\mf bf d ef g) r g( a bf d ef) |
    r8 a,='(\< bf d ef g)\! bf(\> a g ef d bf)\! |
  }
}

\addQuote "violin1" { \violinINotes }
