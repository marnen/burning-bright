\version "2.14.2"
\include "english.ly"
\include "../globals.ly"
\include "horn4.ly"

\addQuote "horn4_u" { \transpose c c' \hornIVNotesConcert }

hornIIINotes = {
  \transpose f c' {
    % Orchestration p. 1
    \clef treble
    \time 4/4
    R1*2 |
    \time 6/4
    R1. |
    \time 4/4
    R1 |
    % p. 2
    \time 3/2
    R1. |
    \time 6/4
    <<
      {
        \repeat unfold 3 {
          r4 g'2 r4 d'2 |
        }
      }
      {
        s4 s\mf
      }
    >>
    % p. 3
    \time 4/4
    r4 g'2 r4 |
    \time 6/4
    <<
      {
        \repeat unfold 4 {
          af'2 r4 af'2 r4
        }
      }
      {
        s1.\f | s1. | s2.\> s2 s4\! | s1.\mp
      }
    >>
    \bar "||"
    % p. 4
    \time 4/4
    R1*2 |
    % p. 5
    \time 3/2
    R1. |
    \time 4/4
    R1 |
    \time 3/2
    R1. |
    % p. 6
    \time 4/4
    R1*2 |
    \relative d' {
      r4 d2\mp r4 ef2 |
      r4 g2\< a bf4\! |
      a='\f r r2 |
    }
    R1*3 |
    % p. 8
    \quoteDuring #"horn4_u" {
      s1\mf^\bellUp |
      \time 3/2
      s1. |
      \time 5/4 
      s1
    }
    d'4( \bar "||"
    \time 6/4
    af8) r r4 r r2 r4 |
    % p. 9
    R1.*2 |
    \relative f' {
      f1.(_\markup { \dynamic pp \italic legato }^\ord |
      fs2.~ fs4 ef! f) |
      % p. 10
      g2.( b4 g f) |
      g\< b2 c4 cs2\! \bar "||"
      \partcombineApart r4 d=''2\f \glissando g, r4 \partcombineAutomatic |
    }
    R1.*4 |
  }
}

\addQuote "horn3" { \hornIIINotes }
