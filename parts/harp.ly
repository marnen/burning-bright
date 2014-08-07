\version "2.18.0"
\include "english.ly"
\include "../globals.ly"

% \pedalChange {G \flat}
#(
  define-markup-command (pedalChange layout props pedaling) (markup-list?)
  (interpret-markup layout props
    (markup (make-concat-markup (map #'make-vcenter-markup pedaling)))
  )
)

harpRHNotes = {
  % p. 1
  \clef treble
  \key c \minor
  R1*2 | R1.*2 |
  % p. 2
  R1*2 |
  \relative c'' {
    <<
      { s4_\markup { \harp-pedal #"-v-|---^" } s_\fpesante }
      \repeat unfold 5 {
        r4 <cs g>2 r4 <cs d g>2
      }
    >>
    % p. 3
    r4 <cs='' g>2 r4 |
    % p. 4
    \key a \minor
    <<
      \repeat unfold 5 {
        <af=' d g>2 r4 <af d>2 r4
      }
      {
        % 6/4
        s1. |
        % 9/4
        s4*9 |
        % 6/4
        s1.\> |
        % p. 5
        % 9/4
      }
    >>
    \key c \minor
    % 4/4
    c=''4\!\p_\markup \pedalChange { C \natural } r r2 |
  }
}

harpLHNotes = {
  % p. 1
  \clef bass
  \key c \minor
  R1*2 | R1.*2 |
  % p. 2
  R1*2 |
  \relative d' {
    \repeat unfold 5 {
        r4 <d g,>2 r4 <cs d g>2
    }
    % p. 3
    r4 <d=' g,>2 r4 |
    % p. 4
    \key a \minor
    \repeat unfold 5 {
      % 6/4
      % 9/4
      % 6/4
      % p. 5
      % 9/4
      <af= d g>2 r4 <f b>2 r4
    } |
    \key c \minor
    % 4/4
    c'='4 r r2
  }
  %{
    % p. 4
    \key c \minor
    R1*2 |
    % p. 5
    R1. | R1 | R1. |
    % p. 6
    \key d \minor
    R1*2 | R1.*2 |
    % p. 7
    R1*5 |
    % p. 8
    R1. | R1*5/4 |
    \key ef \major
    R1.*7 |
    % p. 10
    <<
      {
        \arpeggioBracket
        \repeat unfold 5 { <g, g>2\arpeggio r4 <cs, cs>2\arpeggio r4 | }
      }
      { d2 s4 s2.^\markup \pedalChange { C \sharp } }
    >>
  %}
}

harpNotes = <<
  \new Staff = "harpRH" \with { \remove "Staff_performer" } {  % Right hand
    \override Glissando.breakable = ##t
    \harpRHNotes
  }
  \context Staff = "harpLH" \with { \remove "Staff_performer" } {  % Left hand
    \harpLHNotes
  }
>>
