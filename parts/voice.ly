\version "2.18.0"
\include "english.ly"

verse = \lyricmode {
  But re -- mem -- ber -- ing— re -- mem -- ber -- ing the pain— it’s like look -- ing last in a cof -- fin— there it is. The face is dead and you can for -- get it. But if you do not look, the face is nev -- er dead and you can -- not in your back mind say good -- by. And so I am look -- ing back at the sad -- ness so deep dug in. The top mind de -- nies ste -- ril -- i -- ty. I re -- mem -- ber how it was. Be -- ing con -- vinced, I de -- nied __ the des -- o -- la -- tion or made a joke of it, a bit -- ter joke. I can re -- mem -- ber on -- ly vague -- ly the slow, sus -- pi -- cious hat -- red that can grow and flower be -- tween man and wo -- man while they say, “Not now. We can’t af -- ford a child. We don’t want a child if we can’t take per -- fect care of
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
      \tuplet 3/2 { r4 c d } ef4. d8 |
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
      % p. 5
      r8 d= ef4 r2 |
      \time 3/2
      r4 d8 c d4. g8 d4 c8 d |
      \time 4/4
      ef2 g4 r4 |
      \time 3/2
      r e bf' a e!= r |
      % p. 6
      \key d \minor
      \time 4/4
      r8 e c'!4 bf e,
      d'='2\< \tuplet 3/2 { r4\! e!2\mf } |
      \time 6/4
      c8 bf a=4 r r c! d |
      ef4. d8 c4 r ef2 |
      % p. 7
      \time 4/4
      d4 r r2 |
      \tuplet 3/2 { c='4 b c } d r |
      r8 c d e~ e4 d |
      c d a g! |
      % p. 8
      r e= a d |
      \time 3/2
      c f bf,!=2 r |
      \time 5/4
      r a4 bf8 d,=4. \bar "||"
      \key ef \major
      \time 6/4
      af!=,2 r4 r2 r4 |
      % p. 9
      r2 r4 c=\mp c d |
      ef4. d8\noBeam c d ef4 c! r8 ef |
      f2 r4 r8 ef d4 ef |
      fs2 d ef4 f |
      % p. 10
      g=8 ef f4. g8 b4 g f |
      g\< b g c=' cs2\! \bar "||"
      r4 d2\f \glissando g, r4 |
      r4 d'2 cs8 g d'4 cs |
      g=2. r4 d'2 |
      cs4 g d' cs g8 d' cs4 |
      g= e'2 ef4 d a |
    }
  }
}

\addQuote "voice" { \voiceNotes }
\addQuote "voice_u" { \transpose c c' \voiceNotes }
