\version "2.18.0"
\include "english.ly"
\include "voice.ly"

fluteNotes = {
  % Small orchestration p. 1
  \clef treble
  \key c \minor
  R1*2 |
  R1. |
  R1. |
  % p. 2
  R1 |
  \relative c' {
    r4 c8(\mp\< d) \tuplet 5/4 { ef( a d g c)\! }
  }
  <<
    { s8 s\f }
    \repeat unfold 10 {
      \relative d''' {
        r8 d([ cs g d cs)]
      }
    }
  >>
  \relative d''' {
    r8 d([ cs g] d[ g cs d])
    % p. 4
    \key a \minor
    % 6/4
    \repeat unfold 2 {
      r af=''( g af f e)
    } |
    % 9/4
    r af,='( g af f e) d( gs a b d g) af2 r4 |
    <<
      {
        \repeat unfold 3 {
          r8 af=''( g af f e)
        }
        r af,='( g af f e) r af( b d g b) |
      }
      {
        % 6/4
        s8 s\> s2 s2. |
        % p. 5
        % 9/4
        s4*9 |
      }
    >>
    % 4/4
    \key c \minor
    c,=''2\!\p
      
  }
  %{
    % p. 5
    R1 |
    \time 3/2
    R1. |
    \time 4/4
    R1 |
    \time 3/2
    \quoteDuring #"violin1" { s1.\mp } |
    % p. 6
    \key d \minor
    \time 4/4
    <<
      { \repeat unfold 4 { r8 a'( bf'' a') } | }
      { s1 | s8 s\< s4 s4. s8\! | }
    >>
    \time 6/4
    \relative e' {
      r4 ef\mf( g) r a( bf) |
      r d=''(\< ef) g( a bf)\! |
      % p. 7
      \time 4/4
      d='''\f r r2 |
      d1~\p | d1~ | d1 |
      % p. 8
      d1~ |
      \time 3/2
      d1.~ |
      \time 5/4
      d1 r4 \bar "||"
    }
    \key ef \major
    \time 6/4
    R1.*3 |
    \relative d'' {
      % p. 9
      r4 d8\p( ef d c g' d4.) r4 |
      R1. |
      % p. 10
      r2 r4 g=''8 ef! f4. g8 |
    }
    \relative f''' {
      r2 r4 << { f2. } { s2\mf\< \tuplet 3/2 { s8 s s\! } } >> \bar "||"
      <<
        {
          \repeat unfold 5 { r4 \tuplet 3/2 { g8([ fs f] } \tuplet 3/2 { e[ ef d] } cs4) r r }
        }
        {
          s4 s\f
        }
      >>
    }
  %}
}

\addQuote "flute" { \fluteNotes }
\addQuote "flute_d" { \transpose c' c \fluteNotes }
