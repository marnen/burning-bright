\version "2.14.2"

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
  }
}
