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
      { s4 s_\fpesante }
      \repeat unfold 3 {
        r4 <cs g>2 r4 <cs d g>2
      }
    >>
    % p. 3
    r4 <cs='' g>2 |
  }
  %{
    R1 |
    \key a \minor
    R1.*4 |
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
    <<
      {
        \repeat unfold 6 { <ef af>2. \glissando <f'' bf''> \glissando | }
        % p. 10
        \voiceOne <ef af>2.\< \glissando <f'' bf''> | \voiceTwo d''2\!\f
      }
      \new Voice {
        s2.\p\<_\markup { \harp-pedal #"v-^|^-v^" } s\!\mf\> |
        s1.*5\!_\sim |
        % p. 10
        \voiceTwo s2. <d' g'>2._\markup \column { \pedalChange { D \natural } \pedalChange { G \natural } } \glissando |
        \voiceOne <g'' d'''>2
      }
    >>
    \oneVoice r4 r2 r4 |
    % p. 11
    R1.*4 |
  %}
}

harpLHNotes = {
  % p. 1
  \clef bass
  \key c \minor
  R1*2 | R1.*2 |
  % p. 2
  R1*2 |
  \relative d' {
    \repeat unfold 3 {
        r4 <d g,>2 r4 <cs d g>2
    }
    % p. 3
    r4 <d=' g,>2 |
  }
  %{
    \key a \minor
    R1.*4 |
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
  \context Staff = "harpRH" {  % Right hand 
    \override Glissando.breakable = ##t
    \harpRHNotes
  }
  \context Staff = "harpLH" {  % Left hand
    \harpLHNotes
  }
>>
