\version "2.18.0"

meter = {
  % Small orchestration p. 1
  \tempo 4 = 126
  \time 4/4
  s1*2 |
  \time 6/4
  s1. |
  \time 3/2
  s1. |
  % p. 2
  \time 4/4
  s1*2 |
  \time 6/4
  s1.*2 |
  % p. 3
  \time 9/4
  s1. s2. |
  \time 6/4
  s1. |
  \time 7/4
  s1.. \bar "||"
  % p. 4
  \time 6/4
  s1.*2 |
  %{
    % p. 5
    \time 3/2
    s1. |
    \time 4/4
    s1 |
    \time 3/2
    s1. |
    % p. 6
    \time 4/4
    s1*2 |
    \time 6/4
    s1.*2 |
    % p. 7
    \tempo "Con moto"
    \time 4/4
    s1*5 |
    % p. 8
    \time 3/2
    s1. |
    \time 5/4
    s1*5/4 \bar "||"
    \time 6/4
    s1.*7 \bar "||"
    % p. 10
    s1.*5 |
  %}
}


sim = \markup { \italic sim. }

div = \markup { div. }
unis = \markup { unis. }

fpesante = \markup { \dynamic f \italic pesante }
mfpesante = \markup { \dynamic mf \italic pesante }

bellUp = \markup { "bell up" }
ord = \markup { ord. }
