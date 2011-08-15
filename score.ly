% Created on Mon Aug 15 13:29:44 EDT 2011
\version "2.14.2"

\header {
	title = "Burning Bright" 
 poet = "John Steinbeck" 
 	composer = "Marnen E. Laibow-Koser" 
 	copyright = "Copyright © 2010–2011 Marnen E. Laibow-Koser. All rights reserved." 

}

\include "english.ly"

verse= \lyricmode {

}
 

staffPiccolo = \new Staff {
	\time 4/4
	\set Staff.instrumentName = "Piccolo"
	\set Staff.midiInstrument = "piccolo"
	\transposition c'
	\key c \minor
	\clef treble
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffFlutes = \new Staff {
	\set Staff.instrumentName = "Flute"
	\set Staff.midiInstrument = "flute"
	\key c \minor
	\clef treble
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffClarinets = \new Staff {
	\set Staff.instrumentName = "Clarinet in Bb"
	\set Staff.midiInstrument = "clarinet"
	\transposition bf,
	\key c \minor
	\clef treble
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffOboes = \new Staff {
	\set Staff.instrumentName = "Oboe"
	\set Staff.midiInstrument = "oboe"
	\key c \minor
	\clef treble
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffBassoons = \new Staff {
	\set Staff.instrumentName = "Bassoon"
	\set Staff.midiInstrument = "bassoon"
	\key c \minor
	\clef bass
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffHornsInII = \new Staff {
	\set Staff.instrumentName = "Horn in F"
	\set Staff.midiInstrument = "french horn"
	\transposition f,
	\key c \minor
	\clef treble
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffHornsIIInIV = \new Staff {
	\set Staff.instrumentName = "Horn in F"
	\set Staff.midiInstrument = "french horn"
	\transposition f,
	\key c \minor
	\clef treble
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffTrumpets = \new Staff {
	\set Staff.instrumentName = "Trumpet in C"
	\set Staff.midiInstrument = "trumpet"
	\transposition bf,
	\key c \minor
	\clef treble
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffTenorTrombones = \new Staff {
	\set Staff.instrumentName = "Trombone"
	\set Staff.midiInstrument = "trombone"
	\key c \minor
	\clef bass
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffBassTrombone = \new Staff {
	\set Staff.instrumentName = "Trombone"
	\set Staff.midiInstrument = "trombone"
	\key c \minor
	\clef bass
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffGlockenspiel = \new Staff {
	\set Staff.instrumentName = "Glockenspiel"
	\set Staff.midiInstrument = "glockenspiel"
	\transposition c''
	\key c \minor
	\clef treble
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffHarp = \new PianoStaff {
	\set PianoStaff.midiInstrument = #"harp"
	\set PianoStaff.instrumentName = #"Harp"
				<<
		\context Staff = "RH" {  % Right hand 
			\clef treble
			\key c \minor
			\relative c' {
			}
		}
		\context Staff = "LH" {  % Left hand 			
			\clef bass
			\key c \minor
			\relative c {
			}
		}
	>>
}

staffVoice = \new Staff {
	\set Staff.instrumentName = "Voice"
	\set Staff.midiInstrument = "voice oohs"
	\key c \minor
	\clef treble
	\relative c' { 	
		\context Voice = "melodyVoi" {
			\dynamicUp		
 % Type notes here 
		}

	\bar "|."
	}

}
staffViolinI = \new Staff {
	\set Staff.instrumentName = "Violin"
	\set Staff.midiInstrument = "violin"
	\key c \minor
	\clef treble
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffViolinII = \new Staff {
	\set Staff.instrumentName = "Violin"
	\set Staff.midiInstrument = "violin"
	\key c \minor
	\clef treble
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffViola = \new Staff {
	\set Staff.instrumentName = "Viola"
	\set Staff.midiInstrument = "viola"
	\key c \minor
	\clef alto
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffCello = \new Staff {
	\set Staff.instrumentName = "Cello"
	\set Staff.midiInstrument = "cello"
	\key c \minor
	\clef bass
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffContrabass = \new Staff {
	\set Staff.instrumentName = "Contrabass"
	\set Staff.midiInstrument = "contrabass"
	\transposition c'
	\key c \minor
	\clef bass
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}


\score {
	<<
		\staffPiccolo
		\staffFlutes
		\staffClarinets
		\staffOboes
		\staffBassoons
		\staffHornsInII
		\staffHornsIIInIV
		\staffTrumpets
		\staffTenorTrombones
		\staffBassTrombone
		\staffGlockenspiel
		\staffHarp
		\staffVoice
		\context Lyrics = "lmelodyVoi" \lyricmode { \lyricsto "melodyVoi" \verse }
		
		\staffViolinI
		\staffViolinII
		\staffViola
		\staffCello
		\staffContrabass
	>>
	
	\midi {
	}

  \layout {
  }
}

\paper {
}


