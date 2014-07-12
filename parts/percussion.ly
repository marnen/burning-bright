\version "2.18.0"
\include "../globals.ly"

percussionNotes = {
  \drummode {
    % Small orchestration p. 1
    R1*2 |
    R1.*2 |
    % p. 2
    R1*2 |
    <cymc bd>2\mf r4 r2 r4 |
    bd2 r4 r2 r4 |
    % p. 3
    bd2 r4 r2 r4 bd2 r4 |
    % 6/4
    r2 r4 bd2 r4 |
    % 7/4
    r2 r4 bd2 r4 bd ~ |
    % p. 4
    % a minor
    <<
      {
        \voiceTwo
        \repeat unfold 2 {
          bd4 r r r2 bd4 ~ 
        } bd r r |
      }
      \new DrumVoice {
        % 6/4
        \voiceOne
        cymc2 r4 r2 r4 |
        % 9/4
        r2 r4 r2 r4 cymc2 r4 |
      }
    >>
    % 6/4
    \oneVoice
    r2 bd4_\dim ~ bd r r |
    % 9/4
    r2 bd4\mp ~ bd r r r2 bd4\ppp ~ |
    % c minor
    % 4/4
    bd r r2 |
    % p. 5
    % 9/4
    
  }
}
