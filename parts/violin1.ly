\version "2.18.0"
\include "english.ly"
\include "../globals.ly"

violinINotes = {
  % Small orchestration p. 1
  \key c \minor
  <<
    { s8 s\mp }
    \repeat unfold 13 {
      \relative d' {
        r8 d([ g d)]
      }
    }
  >>
  \relative e' {
    \tuplet 5/4 { ef(\< a d g c\!) }
  }
  <<
    { s8 s\f }
    \repeat unfold 10 {
      \relative c''' {
        r8 cs([ g d cs g=')]
      }
    }
  >>
  \relative c''' {
    % p. 3
    r8 cs([ g d] cs[ d g cs)] |
  }
  % p. 4
  \key a \minor
  \relative d''' {
    % 6/4
    r8 d( b a gs d='') r g( f d b gs) |
    % 9/4
    r d'=''( b a gs d) g( a b d gs b) d2 r4 |
    % 6/4
    r8 d='''\>( b a gs d) r b'( a gs d b) |
    % p. 5
    % 9/4
    r g'=''( f d b gs) r f'( d b g f) r d'( b a g d ) |
    \key c \minor
    % 4/4
    r\! d='\p( g d) r d( g d) |
  }
}

\addQuote "violin1" { \violinINotes }
