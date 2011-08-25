\version "2.14.2"
\include "english.ly"

timeKeyTrack = {
  % Orchestration p. 1
  \tempo 4 = 126
  \time 4/4
  s1*2 |
  \time 6/4
  s1. |
  \time 4/4
  s1 |
  % p. 2
  \time 3/2
  s1. |
  \time 6/4
  s1.*3 |
  % p. 3
  \time 4/4
  s1 |
  \time 6/4
  s1.*4 \bar "||"
  % p. 4
  \time 4/4
  s1*2 |
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
  \s1.*5 |
}

harpRHNotes = {
}

harpLHNotes = {
}

harpNotes = <<
  \context Staff = "RH" {  % Right hand 
    \harpRHNotes
  }
  \context Staff = "LH" {  % Left hand 			
    \harpLHNotes
  }
>>

