% Created on Mon Aug 15 13:29:44 EDT 2011
\version "2.14.2"

\header {
	title = "Burning Bright" 
 poet = "John Steinbeck" 
 	composer = "Marnen E. Laibow-Koser" 
 	copyright = "Copyright © 2010–2011 Marnen E. Laibow-Koser. All rights reserved." 

}

\include "english.ly"
\include "parts/cello.ly"

verse= \lyricmode {

}
 

staffPiccolo = \new Staff {
	\time 4/4
	\set Staff.instrumentName = "Piccolo"
	\set Staff.shortInstrumentName = "Picc."
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
	\set Staff.instrumentName = "2 Flutes"
	\set Staff.shortInstrumentName = "Fls."
	\set Staff.midiInstrument = "flute"
	\key c \minor
	\clef treble
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffClarinets = \new Staff {
	\set Staff.instrumentName = \markup { \concat { "2 Clarinets in B" \smaller \flat } }
	\set Staff.shortInstrumentName = \markup { \concat { "Cls. (B" \smaller \flat \larger ")" } }
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
	\set Staff.instrumentName = "2 Oboes"
	\set Staff.shortInstrumentName = "Obs."
	\set Staff.midiInstrument = "oboe"
	\key c \minor
	\clef treble
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffBassoons = \new Staff {
	\set Staff.instrumentName = "2 Bassoons"
	\set Staff.shortInstrumentName = "Bns."
	\set Staff.midiInstrument = "bassoon"
	\key c \minor
	\clef bass
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffHornsInII = \new Staff {
	\set Staff.instrumentName = \markup { \column { 1 2 } }
	\set Staff.shortInstrumentName = \markup { \column { 1 2 } }
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
	\set Staff.instrumentName = \markup { \column { 3 4 } }
	\set Staff.shortInstrumentName = \markup { \column { 3 4 } }
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
	\set Staff.instrumentName = "3 Trumpets in C"
	\set Staff.shortInstrumentName = "Tpts. (C)"
	\set Staff.midiInstrument = "trumpet"
	\key c \minor
	\clef treble
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffTenorTrombones = \new Staff {
	\set Staff.instrumentName = "2 Tenor Trombones"
	\set Staff.shortInstrumentName = "T.Tbns."
	\set Staff.midiInstrument = "trombone"
	\key c \minor
	\clef bass
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffBassTrombone = \new Staff {
	\set Staff.instrumentName = "Bass Trombone"
	\set Staff.shortInstrumentName = "B.Tbn."
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
	\set Staff.shortInstrumentName = "Glock."
	\set Staff.midiInstrument = "glockenspiel"
	\transposition c''
	\key c \minor
	\clef treble
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffPercussion = \new DrumStaff {
  \set DrumStaff.instrumentName = "Percussion"
  \set DrumStaff.shortInstrumentName = "Perc."
}
staffHarp = \new PianoStaff {
	\set PianoStaff.midiInstrument = #"harp"
	\set PianoStaff.instrumentName = #"Harp"
	\set PianoStaff.shortInstrumentName = "Hp."
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
	\set Staff.instrumentName = "Joe Saul"
	\set Staff.shortInstrumentName = "J.S."
	\set Staff.midiInstrument = "bassoon"
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
	\set Staff.instrumentName = "1"
	\set Staff.shortInstrumentName = "1"
	\set Staff.midiInstrument = "violin"
	\key c \minor
	\clef treble
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffViolinII = \new Staff {
	\set Staff.instrumentName = "2"
	\set Staff.shortInstrumentName = "2"
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
	\set Staff.shortInstrumentName = "Va."
	\set Staff.midiInstrument = "viola"
	\key c \minor
	\clef alto
	\relative c' { 	
 % Type notes here 

	\bar "|."
	}

}
staffCello = \new Staff {
	\set Staff.instrumentName = "Violoncello"
	\set Staff.shortInstrumentName = "Vc."
	\set Staff.midiInstrument = "cello"
	\celloNotes
}
staffContrabass = \new Staff {
	\set Staff.instrumentName = "Contrabass"
	\set Staff.shortInstrumentName = "Cb."
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
	  \new StaffGroup << 
	    \new GrandStaff <<
        \staffPiccolo
        \staffFlutes
      >>
      \staffClarinets
      \staffOboes
      \staffBassoons
    >>
    \new StaffGroup <<
		  \new PianoStaff {
		    \set PianoStaff.instrumentName = "Horns in F"
		    \set PianoStaff.shortInstrumentName = "Hns. (F)"
		    <<
          \staffHornsInII
          \staffHornsIIInIV
        >>
      }
      \staffTrumpets
      \new GrandStaff <<
        \staffTenorTrombones
        \staffBassTrombone
      >>
    >>
    \new StaffGroup <<
      \staffGlockenspiel
      \staffPercussion
    >>
		\staffHarp
		\staffVoice
		\context Lyrics = "lmelodyVoi" \lyricmode { \lyricsto "melodyVoi" \verse }
		
		\new StaffGroup <<
		  \new PianoStaff {
		    \set PianoStaff.instrumentName = "Violins"
		    \set PianoStaff.shortInstrumentName = "Vns."
		    <<
          \staffViolinI
          \staffViolinII
        >>
      }
      \staffViola
      \staffCello
      \staffContrabass
    >>
	>>
	
	\midi {
	}

  \layout {
  }
}

\paper {
}


