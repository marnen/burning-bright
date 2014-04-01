\version "2.18.0"
\include "../globals.ly"

percussionNotes = {
  \drummode {
    % Orchestration p. 1
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
    <cymc bd>2\f r4 r2 r4 |
    bd2 r4 r2 r4 |
    % p. 3
    <cymc bd>2 r4 r2 r4 |
    \time 4/4
    <<
      {
        s1 |
        \time 6/4
        cymc2 r4 r2 r4 |
        % p. 4
        R1. |
        cymc2 r4 s2 s4\mp |
        r2 r4 r2 s4\ppp \bar "||"
        \time 4/4
        cymc2 r2 |
      }
      \\
      {
        \oneVoice bd2 r4 \voiceTwo \stemUp bd~ |
        \stemDown \repeat unfold 4 { bd r r r2 bd4~ | }
        bd4 r4 r2 |
      }
    >>
    % p. 5
    R1 |
    \time 3/2
    R1. |
    \time 4/4
    R1 |
    \time 3/2
    R1. |
    % p. 6
    \time 4/4
    R1*2 |
    <bd cymc>2\mf r4 r2 r4 |
    <bd cymc>2 r4 r2 r4 |
    % p. 7
    <<
      { \repeat unfold 15 { <bd cymc>4 r } }
      {
        s2\f s \mf | s1*4 |
        % p. 8
        \time 3/2
        s1. |
        \time 5/4
      }
    >>
    <bd cymc>4 \bar "||"
    \time 6/4
    R1. |
    % p. 9
    <<
      { bd2.:32~ bd: }
      { s2.\ppp\< s2\!\p\> s8.. s32\!\ppp }
    >> |
    R1. |
    bd2.:~_\sim\< bd:~\!\> |
    bd:~\!\< bd:~\!\>
    % p. 10
    R1.\! |
    bd1.:\ppp\< \bar "||"
    <<
      { \repeat unfold 10 { r4 <bd cymc>2 } }
      { s4\! s2\f }
    >>
  }
}
