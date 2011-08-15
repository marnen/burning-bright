\version "2.14.2"
\include "english.ly"

verse = \lyricmode {
  But re -- mem -- ber -- ing— re -- mem -- ber -- ing the pain— it’s like look -- ing last in a cof -- fin— there it is. The face is dead and you can for -- get it. But if you do not look, the face is nev -- er dead and you can -- not in your back mind say good -- by.
}

voiceNotes = {
  \context Voice = "voice" {
    \dynamicUp	
    % Orchestration p. 1
    \key c \minor
    \clef bass
    \time 4/4
    \relative c {
      r2 r4 c8\mp d |
      ef4. d8 c4 r |
      \time 6/4
      r8 d ef d c g' d=4 r r |
      \time 4/4
      \times 2/3 { r4 c d } ef4. d8 |
      % p. 2
      c=2\< ef4 f g a\! |
      \time 6/4
      r d='4.\f cs8 g2 r4 |
      r d'=' cs g d cs= |
      % p. 3
      d'=' cs g bf4. a=8 r4 |
      \time 4/4
      r d=' cs e |
      \key a \minor
      f d gs, r8 e' f4. d8 |
      % p. 4
      cs='4. e8 d4 r c d |
      bf2\> a4 r g!2\! |
      f4\mp ef d r ef4. d8 \bar "||"
      \time 4/4
      \key c \minor
      c2 r |
    }
  }
}

\addQuote "voice" { \voiceNotes }
