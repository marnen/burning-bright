% Created on Mon Aug 15 13:29:44 EDT 2011
\version "2.18.0"
#(ly:set-option 'relative-includes #t)

\header {
	title = "Burning Bright" 
  poet = "John Steinbeck" 
 	composer = "Marnen E. Laibow-Koser" 
 	copyright = "Copyright © 2010–2011 Marnen E. Laibow-Koser. All rights reserved." 

}

\include "english.ly"
\include "globals.ly"
\include "parts/flute1.ly"
\include "parts/oboe1.ly"
\include "parts/clarinet2.ly"
\include "parts/bassoon1.ly"

\include "parts/horn1.ly"
\include "parts/trumpet1.ly"
\include "parts/tenor_trombone1.ly"

\include "parts/percussion.ly"

\include "parts/harp.ly"

\include "parts/voice.ly"
\include "parts/violin1.ly"
\include "parts/violin2.ly"
\include "parts/viola.ly"
\include "parts/cello.ly"
\include "parts/contrabass.ly" 

staffFlute = \new Staff {
	\set Staff.instrumentName = "Flute"
	\set Staff.shortInstrumentName = "Fl."
	\set Staff.midiInstrument = "flute"
  \fluteINotes
}
staffOboe = \new Staff {
	\set Staff.instrumentName = "Oboe"
	\set Staff.shortInstrumentName = "Ob."
	\set Staff.midiInstrument = "oboe"
  \oboeINotes
}
staffClarinet = \new Staff {
	\set Staff.instrumentName = \markup { \concat { "Clarinet in B" \smaller \flat } }
	\set Staff.shortInstrumentName = \markup { \concat { "Cl. (B" \smaller \flat \larger ")" } }
	\set Staff.midiInstrument = "clarinet"
	\transposition bf
  \clarinetINotes
}
staffBassoon = \new Staff {
	\set Staff.instrumentName = "Bassoon"
	\set Staff.shortInstrumentName = "Bn."
	\set Staff.midiInstrument = "bassoon"
  \bassoonINotes
}
staffHorn = \new Staff {
	\set Staff.instrumentName = "Horn in F"
	\set Staff.shortInstrumentName = "Hn. (F)"
	\set Staff.midiInstrument = "french horn"
	\transposition f
  \hornINotes
}
staffTrumpet = \new Staff {
	\set Staff.instrumentName = "Trumpet in C"
	\set Staff.shortInstrumentName = "Tpt. (C)"
	\set Staff.midiInstrument = "trumpet"
	\trumpetINotes
}
staffTenorTrombone = \new Staff {
	\set Staff.instrumentName = "Tenor Trombone"
	\set Staff.shortInstrumentName = "Tbn."
	\set Staff.midiInstrument = "trombone"
  \tenorTromboneINotes
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
	\harpNotes
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
      \staffFlute
      \staffOboe
      \staffClarinet
      \staffBassoon
    >>
    \new StaffGroup <<
      \staffHorn
      \staffTrumpet
      \staffTenorTrombone
    >>
    \staffPercussion
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


