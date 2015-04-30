\version "2.18.0"
\include "english.ly"
\include "violin1.ly"

\addQuote "violin1_d" { \transpose c' c \violinINotes }

violinIINotes = {
  % Small orchestration p. 1
  \key c \minor
  <<
    { s8 s\mp }
    \repeat unfold 13 {
      r8 c'([ g' c'])]
    }
  >>
  % p. 2
  \relative d' {
    \tuplet 5/4 { d8(\< ef a d g)\! }
  }
  <<
    { s8 s\f }
    \repeat unfold 10 {
      \relative d'' {
        r8 d([ cs g d cs=')]
      }
    }
  >>
  \relative d'' {
    % p. 3
    r8 d([ cs g] d[ g cs d)] |
  }
  % p. 4
  \key a \minor
  \relative g'' {
    % 6/4
    r8 g( f d b gs=') r d'( b a gs d) |
    % 9/4
    r g='( f d b gs) b( d gs a b d) g2 r4 |
    % 6/4
    r8 g=''\>( f d b gs) r f'( d b g f) |
    % p. 5
    % 9/4
    r d'=''( b a gs d) r b'( a g d b) r g'( f d b gs)
    \key c \minor
    % 4/4
    r\! c='\p( g' c,) r c( g' c,)
  }
}

\addQuote "violin2" { \violinIINotes }
