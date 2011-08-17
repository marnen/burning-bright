% Created on Mon Aug 15 13:29:44 EDT 2011
\version "2.14.2"
#(ly:set-option 'relative-includes #t)

\header {
	title = "Burning Bright" 
  poet = "John Steinbeck" 
 	composer = "Marnen E. Laibow-Koser" 
 	copyright = "Copyright © 2010–2011 Marnen E. Laibow-Koser. All rights reserved." 

}

\include "english.ly"
\include "parts/piccolo.ly"
\include "parts/flute1.ly"
\include "parts/flute2.ly"
\include "parts/oboe1.ly"
\include "parts/oboe2.ly"
\include "parts/clarinet1.ly"
\include "parts/clarinet2.ly"
\include "parts/bassoon1.ly"
\include "parts/bassoon2.ly"

\include "parts/horn1.ly"
\include "parts/horn2.ly"
\include "parts/horn3.ly"
\include "parts/horn4.ly"
\include "parts/trumpet1.ly"
\include "parts/tenor_trombone1.ly"
\include "parts/bass_trombone.ly"

\include "parts/percussion.ly"

\include "parts/voice.ly"
\include "parts/violin1.ly"
\include "parts/violin2.ly"
\include "parts/viola.ly"
\include "parts/cello.ly"
\include "parts/contrabass.ly" 

staffPiccolo = \new Staff {
	\tempo 4 = 132
	\set Staff.instrumentName = "Piccolo"
	\set Staff.shortInstrumentName = "Picc."
	\set Staff.midiInstrument = "piccolo"
	\piccoloNotes
}
staffFlutes = \new Staff {
	\set Staff.instrumentName = "2 Flutes"
	\set Staff.shortInstrumentName = "Fls."
	\set Staff.midiInstrument = "flute"
  \set Staff.soloText = "1."
  \set Staff.soloIIText = "2."
	\partcombine \fluteINotes \fluteIINotes
}
staffOboes = \new Staff {
	\set Staff.instrumentName = "2 Oboes"
	\set Staff.shortInstrumentName = "Obs."
	\set Staff.midiInstrument = "oboe"
  \set Staff.soloText = "1."
  \set Staff.soloIIText = "2."
	\partcombine \oboeINotes \oboeIINotes
}
staffClarinets = \new Staff {
	\set Staff.instrumentName = \markup { \concat { "2 Clarinets in B" \smaller \flat } }
	\set Staff.shortInstrumentName = \markup { \concat { "Cls. (B" \smaller \flat \larger ")" } }
	\set Staff.midiInstrument = "clarinet"
  \set Staff.soloText = "1."
  \set Staff.soloIIText = "2."
	\transposition bf
	\partcombine \clarinetINotes \clarinetIINotes
}
staffBassoons = \new Staff {
  \set Staff.soloText = "1."
  \set Staff.soloIIText = "2."
	\set Staff.instrumentName = "2 Bassoons"
	\set Staff.shortInstrumentName = "Bns."
	\set Staff.midiInstrument = "bassoon"
	\partcombine \bassoonINotes \bassoonIINotes
}

staffHornsInII = \new Staff {
	\set Staff.instrumentName = \markup { \column { 1 2 } }
	\set Staff.shortInstrumentName = \markup { \column { 1 2 } }
	\set Staff.midiInstrument = "french horn"
  \set Staff.soloText = "1."
  \set Staff.soloIIText = "2."
	\transposition f
	\partcombine \hornINotes \hornIINotes
}
staffHornsIIInIV = \new Staff {
	\set Staff.instrumentName = \markup { \column { 3 4 } }
	\set Staff.shortInstrumentName = \markup { \column { 3 4 } }
	\set Staff.midiInstrument = "french horn"
  \set Staff.soloText = "3."
  \set Staff.soloIIText = "4."
	\transposition f
	\partcombine \hornIIINotes \hornIVNotes
}
staffTrumpets = \new Staff {
	\set Staff.instrumentName = "3 Trumpets in C"
	\set Staff.shortInstrumentName = "Tpts. (C)"
	\set Staff.midiInstrument = "trumpet"
  \set Staff.soloText = "1."
  \set Staff.soloIIText = "2."
	\trumpetINotes
}
staffTenorTrombones = \new Staff {
	\set Staff.instrumentName = "2 Tenor Trombones"
	\set Staff.shortInstrumentName = "T.Tbns."
	\set Staff.midiInstrument = "trombone"
  \set Staff.soloText = "1."
  \set Staff.soloIIText = "2."
  \tenorTromboneINotes
}
staffBassTrombone = \new Staff {
	\set Staff.instrumentName = "Bass Trombone"
	\set Staff.shortInstrumentName = "B.Tbn."
	\set Staff.midiInstrument = "trombone"
	\bassTromboneNotes
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
  \percussionNotes
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
  \context Voice = "voice" {
    \dynamicUp		
    \voiceNotes
  }
}
staffViolinI = \new Staff {
	\set Staff.instrumentName = "1"
	\set Staff.shortInstrumentName = "1"
	\set Staff.midiInstrument = "violin"
	\violinINotes
}
staffViolinII = \new Staff {
	\set Staff.instrumentName = "2"
	\set Staff.shortInstrumentName = "2"
	\set Staff.midiInstrument = "violin"
	\violinIINotes
}
staffViola = \new Staff {
	\set Staff.instrumentName = "Viola"
	\set Staff.shortInstrumentName = "Va."
	\set Staff.midiInstrument = "viola"
	\violaNotes
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
	\contrabassNotes
}


\score {
	<<
	  \new StaffGroup << 
	    \new GrandStaff <<
        \staffPiccolo
        \staffFlutes
      >>
      \staffOboes
      \staffClarinets
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
		\context Lyrics = "lyrics" \lyricmode { \lyricsto "voice" \verse }
		
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


