% Music of the Gresley MS - Lisa Koch, December 2017
% This single Lilypond file produces both period and modern notation

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
#(set-default-paper-size "letter" 'landscape)
\paper {
	print-all-headers = ##t
	print-page-number = ##f
	oddHeaderMarkup = \markup \null
	evenHeaderMarkup = \markup \null
}

\header {
	% Titles and subtitles are given in the Score sections below
	% title = "Music of the Gresley Manuscript"
	% subtitle = "Accademia della Danza, Barony of Carolingia, AS LII"
	composer = " "
	tagline = ##f
}

\layout { 
indent = #0
ragged-right = ##t
  \context { \Score
	\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/1)
	}
}

MensStyle = {
	\autoBeamOff
	\stemUp
	\override NoteHead.style = #'petrucci
	\override Rest.style = #'mensural
	\override Stem.neutral-direction = #up
	\set Score.tempoHideNote = ##t
	\set Score.timing = ##f
	\textLengthOff
	\override Staff.KeySignature.glyph-name-alist =
  		#alteration-mensural-glyph-name-alist
	\set Staff.forceClef = ##f
	\defineBarLine "|||||." #'("|||||.""|||||.""|||||.")
	\defineBarLine "||||" #'("||||""||||""||||")
	\defineBarLine ".|||||" #'(".|||||"".|||||"".|||||")
	\defineBarLine ".|||" #'(".|||"".|||"".|||")
}

ModStyle = {
	\set Score.tempoHideNote = ##t
	\set Score.timing = ##f
	\textLengthOff
	\set Staff.forceClef = ##f
}


%%%%%%%%%%%%%% Music goes here %%%%%%%%%%%%%%%%%%%%%%%%

% -------- M1 -------------------------------------
MusicOneOne = \relative c {
			\key c \major
			\cadenzaOn
			f1 f2^\markup {3} f1 f2
			c1 c2 c1 c2 f1. a2 g1 f\breve					
			\bar "|" \noBreak
			c'1 a1 d1 c1. a2 a1
			f2 a2 g1 g\breve
			\bar "|" \noBreak
			c,1 c1 f1 f1
			\bar "|" \noBreak
			a1. b1. c1. c1 a1 
			\once \override NoteHead.color = #grey { b1^\markup { \teeny "fades away" } }
			\once \override NoteHead.color = #(x11-color 'grey65) a1 
			\once \override NoteHead.color = #(x11-color 'grey75) g1 
			}

MusicOneTwo = \relative c {
			\key c \major
			\cadenzaOn
			\textLengthOn
			f1 c2 f1 c2 f1 g2 f1
			\bar "|" \noBreak
			a1. b1. 
			\override TextScript.extra-offset = #'(2 . 5)
			  c1.-\markup { \teeny "      ut sup[ra] illegible        " }
			\bar "|" \noBreak
			s2 s2
			}

MusicOneThree = \relative c' {
			\key c \major
			\cadenzaOn
			g1 g2 f1. e1 d2 c1 c2^\markup { "3" } 
			g'1 f2 e2 d1 c\breve
 			\bar "|" \noBreak
			g'1 f2^\markup { "3." } e2 d1 c\breve
			\bar "|" \noBreak
			g'1. f1. e1. c1.
			\bar "|" \noBreak
			g'1 f2 e2 d1 c\breve
			\bar "|" \noBreak
			g'1 
			\once \override NoteHead.color = #grey { \once \override Stem.color = #grey f2^\markup { \teeny "fades away" } }
			\once \override NoteHead.color = #(x11-color 'grey60) { \once \override Stem.color = #(x11-color 'grey60) e2 } 
			\once \override NoteHead.color = #(x11-color 'grey70) { \once \override Stem.color = #(x11-color 'grey70) d2 } 
			\once \override NoteHead.color = #(x11-color 'grey80) c\breve
			}

% -------- M2 -------------------------------------
MusicTwoOne = \relative c {
			\key c \major
			\cadenzaOn
			\textLengthOn
			\xNotesOn
			f1 g2 a1 e2 f1 g2 d1
			\bar "|" \noBreak
			f2 g1. e1 d2 e2 g2 e2 d2 c\breve
			\xNotesOff
			\bar "|" \noBreak
			% next is a spacer to get the previous bar line to print
			\skip 1
			\override Staff.Clef.full-size-change = ##t
			\set Staff.forceClef = ##t
			e1 f2 g1 e2 f1 g2 e1
			a1. g1.f1.e2 f2 g2 
			\once \override NoteHead.color = #(x11-color 'grey40) { \once \override Stem.color = #(x11-color 'grey40) e2 } 
			\once \override NoteHead.color = #(x11-color 'grey70) { d1. }
			\once \override NoteHead.color = #(x11-color 'grey70) c\breve
			\bar "||||"
			}

MusicTwoTwo = \relative c {
			\key c \major
			\cadenzaOn
			d1_\markup { "Alas þ[e] herd whill þat I co[]th dans" } 
			d2 e1 f2 g1 g2^\markup { 3 } g1 g2
			c1 c2 c2 b1 a\breve
			\bar "|" \noBreak
			a1 a2 a1 a2 
			g1^\markup {".1."}
			g2 g1 g2 a1 g2 f2 e1 d\breve
			\bar "|" \noBreak
			f1 g2 a1^\markup { "2." } g2 f2 e1 d\breve
			\bar "|"  \noBreak
			\once \override TextScript.extra-offset = #'(0 . 2.5)
			s4_\markup { \teeny "blots" }
			}

MusicTwoThree = \relative c {
			\key c \major
			\cadenzaOn
			\textLengthOn
			d1 d2 e1^\markup { "2" } f2 g1 g2 g1 g2
			c1 c2 c2 b1 a1.^\markup {".1."} 
			\override Staff.Clef.full-size-change = ##t
			\clef "petrucci-c4"
			a1 a2 a1 a2 g1 g2 g1 g2 a1 g2 f2 e2 d\breve
			\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/2)
			\bar "|||||."
			}
			
% modern version of MusicTwoThree to handle the mid-staff clef change
MusicTwoThreeModern = \relative c {
			\key c \major
			\cadenzaOn
			\textLengthOn
			d1 d2 e1^\markup { "2" } f2 g1 g2 g1 g2
			c1 c2 c2 b1 a1.^\markup {".1."} 
			\set Staff.forceClef = ##t
			\clef "treble_8"
			a1 a2 a1 a2 g1 g2 g1 g2 a1 g2 f2 e2 d\breve
			\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/2)
			\bar "|||||."
			}

% -------- M3 -------------------------------------

MusicThreeOne = \relative c {
			\key c \major
			\cadenzaOn
			f1. c1. d1. c1.
			g'1. a1 g2 f2 e1 d1.
			f1. c1. d1. c1.
			g'1 f2 e2 d1 c\breve
			\bar "|" \noBreak
			e1. g1 a1.
			e1. e2 g1 g2
			\once \override NoteHead.color = #grey { g1^\markup { \teeny "fades away" } }
			\once \override NoteHead.color = #(x11-color 'grey65) {\override Stem.color = #(x11-color 'grey65) g2 } 
			}

MusicThreeTwo = \relative c' {
			\key c \major
			\cadenzaOn
			a\breve_\markup { \with-color #grey "[] gyng[er] de [] / 2" } 
			g\breve c2 b2 a2 g2 f\breve a\breve e\breve
			c'2 b2 a2 g2 e\breve
			\bar "|" \noBreak
			g1 a2 b1 c2 b1 a2 g1 f1 e1 e2 e1. e1 e2 e1
			\bar "|" \noBreak
			f1 g2 a1 b2 a1 g2 
			\once \override NoteHead.color = #grey { f1^\markup { \teeny "faded" } }
			\once \override NoteHead.color = #(x11-color 'grey65) b1
			}

MusicThreeThree = \relative c' {
			\key c \major
			\cadenzaOn
			g1_\markup { \with-color #grey "Thi[] [] day" } 
			g2 a2^\markup { 2 } g1. f2 e2 d2 c\breve 
			f1. g2 a1 a2 f2 e1 d\breve 
			g1 g2 a2 g1 g2 f2 e1 d1 c\breve
			g'1. a2 g1 g2 e2 d1 c\breve
			\bar "|" \noBreak
			d1 e2 f1 d2 
			\once \override NoteHead.color = #grey { e1^\markup { \teeny "faded" } }
			\once \override NoteHead.color = #(x11-color 'grey60) { \once \override Stem.color = #(x11-color 'grey60) f2 }
			\once \override NoteHead.color = #(x11-color 'grey60) g1
			}

% -------- M4 -------------------------------------

MusicFourOne = \relative c {
			\key c \major
			\cadenzaOn
			f1_\markup { "Brestow is A mery town" }
			f2 f2 g1 e2 d1 c1 c2 
			f1 f2 f2 g1 e2 d1 c1 c2^\markup { 3 }
			f1 e2 f1 g2 a1 a2 a1.
			d,1. g1 f2 g2 a2 g\breve 
			\bar "|" 
			c1 c2 a1 a2 c1 c2 s1
			\bar "|"
			}

MusicFourTwo = \relative c' {
			\key c \major
			\cadenzaOn
			d1. c1 b2 a2 a1^\markup { "3" } g\breve
			\bar "|" \noBreak
			f1 f2 f1 e1 d\breve
			\bar "|" \noBreak
			a'1. g1 e2 f1. g\breve
			\bar "|" \noBreak
			a1. a1. a1. g\breve
			\bar "|" \noBreak
			a1. f1. g1. a1. b1. g1. f1.
			\bar "|" \noBreak
			g1. a1. g2 f1 d2 e1 d\breve
			\bar "|."
			}

MusicFourThree = \relative c' {
			\key c \major
			\cadenzaOn
			c1 b2 a1 g2 c1 b2 a1 g2 
			c1. c1. e2 d1 c1
			\bar "|" 
			e1. d1 e2 f1 g2
			e1 d2 e1 e2 d1 f2 e2 d1 c1 c2 c1
			\bar "|" 
			c1 b2 a1 g2 c1 b2 a1 g2 c1. c1. e2 
      			\once \override NoteHead.color = #(x11-color 'grey50) d1 
			\once \override NoteHead.color = #(x11-color 'grey80) c1
			}


% -------- M5 -------------------------------------

MusicFiveOne = \relative c {
			\key c \major
			\cadenzaOn
			f1_\markup { "Trobyll me þe bordon" }
			f2 g1 g2 a1 a2 a1 r1
			f2 e1 d1.^\markup { 3 } e1 d1 
			f1 e2 f1 g2 a1 a2 a1 a2
			d,1. g1 f2 g2 a1 g\breve
			\bar "|"
			d1 c1^\markup {".1."} d1 c1
			\bar "|"
			f1. g1. a1.^\markup { 3 } a1 a2 
			}

MusicFiveTwo = \relative c' {
			\key c \major
			\cadenzaOn
			g2 f2 g\breve
			\bar "|" \noBreak
			d1 c1^\markup {".1."} d1 c1
			\bar "|" \noBreak
			f1. g1. a1. a1^\markup {"1."} 
			a2 g2 f2 g\breve
			\bar "|" \noBreak
			f1 g1 e1 f1^\markup { 2 } g1 g1 d1 g\breve
			\bar "|" \noBreak
			c1 b2 a2 g1 f\breve
			\bar "|||||."
			}

MusicFiveThree = \relative c' {
			\key c \major
			\cadenzaOn
			c1. c1. f,1. f1.^\markup { 3 } g1 f2 e2 d1 c\breve
			\bar "|" \noBreak
			f1. a1. c1 d2 c2 b1 a1.^\markup { "2./" } b1. b1 b2 a\breve
			\bar "|" \noBreak 
			e1 f1^\markup {"1."} d1 c\breve
			\bar "|" \noBreak 
			e1. e1 e2 e1^\markup { 3 } e2 d1 d2 f2 e2 d1 
			\textLengthOn
			\once \override TextScript.extra-offset = #'(2 . 0)
			c\breve^\markup { \huge "." }
			\bar "|" \noBreak
			s4^\markup { \huge ",,.." }
			\once \override TextScript.extra-offset = #'(-2 . 4)
			s2-\markup { \fontsize #-2 "ut supra " } s2
			\bar ".|||"
			}

% -------- M6 -------------------------------------

MusicSixOne = \relative c' {
			\key c \major
			\cadenzaOn
			c1 c2 a1 a2 g1 a2 f2 e1 d1^\markup { 3 } d2 d1.
			f1 f2 d1 d2 g1 f2 e2 d1 c\breve
			\bar "|" \noBreak
			f1^\markup { 2. } f1 f1
			\bar "|" \noBreak
			f1 f1 f1
			\bar "|" \noBreak
			f1 f1 f1
			\bar "|" \noBreak
			g1 g1 g1 a\breve
			\bar "|" \noBreak
			f1 f1 f1 a1 a1 a1
			}

MusicSixTwo = \relative c' {
			\key f \major
			\cadenzaOn
			bes1 bes1 bes1 bes1 a1 a1 g\breve
			\bar "|" \noBreak
			a1 a1 a1 c1 c1 c1 f1 f1 f1 e1 e1 d\breve
			\bar "|" \noBreak
			d1 d1 d1 d1 d1 d1 d2 d2 d2 c1 a2 c2 d2 d2 c\breve
			\bar "|||||."
			}

MusicSixThree = \relative c {
			\key c \major
			\cadenzaOn
			e1. d1 e2 f1 e2 d1 c2 
			e1. d1 e2 f1 d2 c\breve
			\bar "|" \noBreak
			e1 f2 g1. a1. g1. 
			c1. g1. a1.^\markup { \fontsize #-3 "smudge" } g1. 
			e1 f2 g1. a1. g1.
			f1 e2 c2 d2 c\breve
			\bar "|" \noBreak
			e1 e2 d1 e2 f1 e2 d1 c2 
			e1 e2 d1 e2 f1 d2 c\breve
			\bar "|"
			}

% -------- M7 -------------------------------------

MusicSevenOne = \relative c {
			\key c \major
			\cadenzaOn
			c1_\markup {Ly hartt is An old hors & may no lang[er] drawe |3|}
			c2 d1 d2 c1 c1 c2^\markup {3}
			e2 e2 e2 e2 d1 g1 a1 g1 f2 d2 e1 d\breve
			\bar "|" \noBreak
			e2 e2 e2 e2 e2 e2 e2 e2
			f2 g1 f2 e2 d1 d\breve
			\bar "|" \noBreak
			c1 c2 d1 d2 c1 c1 c2 e2 e2 e2 e2 d1
			}

MusicSevenTwo = \relative c' {
			\key c \major
			\cadenzaOn
			g1 a1 g1 f2 d2 e1 d\breve
			\bar "|" \noBreak
			f1 a1 g1 f\breve
			\bar "|" \noBreak
			c1. f1. a1. g1 g2 f1 f2 c2 d1 c\breve
			\bar ".|||||"
			\skip 1 \skip 1 \skip 1 \skip 1
			% some invisible stuff to get the staff to extend beyond the final bar lines
			\stopStaff \once \override NoteHead.color = #white g'\longa
			}
			
% define that odd key signature with the flat placed on F instead of B
wronglineflat = #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,NATURAL)
    (3 . ,FLAT) (4 . ,NATURAL) (5 . ,NATURAL) (6 . ,NATURAL))
    
MusicSevenThree = \relative c' {
			\key c \wronglineflat
			\cadenzaOn
			e1. fes2 e2 d4 c4 b2 a2 
			c1 d2 fes2 e2 e2 d4 c4 b2 a2
			\bar "|"  \noBreak
			c2. d4 e2 fes2 g1 e1 fes2 d2 e1 d\breve
			\bar "|"  \noBreak
			e1 fes1 a1 g2 e1 fes2 g1. e1
			\bar "|" \noBreak
			e1. fes2 e2 d4 c4 b2 a2
			c2 d2 fes2 e2 e2 
			\once \override NoteHead.color = #grey d\breve
			}

%%%%%%%%%%%%%% end of music, page layouts below %%%%%%%%%%%%%%%%%%%

% We will print all the music pages twice -- once in Petrucci notation and once in Modern notation

% -------- M1 -------------------------------------
\score {
	\new Staff <<
	{ \clef "petrucci-c5" \MensStyle \MusicOneOne
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
			} 
		}
	\header {
		title = "Music of the Gresley Manuscript"
		subtitle = "Accademia della Danza, Barony of Carolingia, AS LII"
		subsubtitle = "page 73"
		piece = \markup { \with-color #grey \italic "[Illegible]" " P[er]nes a g[ ]" }
		}
	}

\score {
	\new Staff <<
	{ \clef "petrucci-c5" \MensStyle \MusicOneTwo
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
			} 
		}
	\header { 
		title = ##f
		subtitle = ##f
		piece = \markup { \with-color #grey \italic "B[re]stein is a mary town" } }
	}

\score {
	\new Staff <<
	{ \clef "petrucci-c5" \MensStyle \MusicOneThree
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
			} 
		}
		\header { 
			title = ##f
			subtitle = ##f
			piece = \markup { "Eglamo[r]" }
		}
	}

\markup { 
	\column {
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0

	\wordwrap \small { \italic { Comment 1: } The first two staves of music have titles which are crossed out with horizontal strokes, which have been represented with greyed italic text. Brackets denote abbreviated text; empty brackets denote illegible text. } 

	\hspace #0

	\wordwrap \small { \italic { Comment 2: } This page is badly damaged; toward the right edge, the ink fades to a faint shadow.  On lines one and three, notes respresented in the palest shades of grey are increasingly conjectural.  These lines have no final bar, and the manuscript may originally have contained additional notes.}

	\hspace #0
} }

% -------- Page M2 -------------------------------------
\pageBreak

\score {
	\new Staff \with { firstClef = ##f } <<
	{ \clef "petrucci-c4" \MensStyle \MusicTwoOne
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
			} 
		}
	\header { 
			title = ##f
			subtitle = "page 74"
		}
	}

\score {
	\new Staff <<
	{ \clef "petrucci-c5" \MensStyle \MusicTwoTwo
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
			} 
		}
		\header { 
			title = ##f
			subtitle = ##f
			piece = \markup { "P[er]nes i[n] gre | 2./" }
		}
	}


\score {
	\new Staff <<
	{ \clef "petrucci-c5" \MensStyle \MusicTwoThree
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
			} 
		}
	\header { 
			title = ##f
			subtitle = ##f
		}
	}

\markup { 
	\column{
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
		\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
		\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
		\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \small { \italic { Comment: } The first staff has no title.  The notes in the first half of the line, before the clef, have been crossed out with horizontal strokes; these notes are represented here with cross-shaped note heads. The notes fade away toward the right of the page, but this staff does end with definite final multiple bar lines.}  
	\hspace #0
	}
}

% -------- Page M3 -------------------------------------
\pageBreak

\score {
	\new Staff \with { firstClef = ##f } <<
	{ \clef "petrucci-c4" \MensStyle \MusicThreeOne
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
			} 
		}
	\header { 
			title = ##f
			subtitle = "page 75"
		}
	}

\score {
	\new Staff <<
	{ \clef "petrucci-c4" \MensStyle \MusicThreeTwo
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
			} 
		}
	\header { 
			title = ##f
			subtitle = ##f
		}
	}

\score {
	\new Staff \with { firstClef = ##f } <<
	{ \clef "petrucci-c4" \MensStyle \MusicThreeThree
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
			} 
		}
	\header { 
			title = ##f
			subtitle = ##f
		}
	}

\markup { 
	\column {
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0	
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\hspace #0 	\hspace #0 	\hspace #0

	\wordwrap \small { \italic { Comment: } This page is also badly damaged, especially toward the right edge, where the ink fades to a faint shadow.  Notes represented in pale shades of grey are increasingly faded. The staves on this page have no final bar lines, and the manuscript may originally have contained additional notes at the ends of the lines.}

\hspace #0
} }

% -------- Page M4 -------------------------------------
\pageBreak

\score {
	\new Staff <<
	{ \clef "petrucci-c4" \MensStyle \MusicFourOne
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = "page 76"
			piece = \markup { "Esp[er]ans/ 3" }
			}
	}

\score {
	\new Staff <<
	{ \clef "petrucci-c5" \MensStyle \MusicFourTwo
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = ##f
			}
	}

\score {
	\new Staff <<
	{ \clef "petrucci-c4" \MensStyle \MusicFourThree
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = ##f
			piece = \markup { "Bayon / 2." }
			}
	}

\markup { 
	\column {
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0

	\wordwrap \small { \italic { Comment:} Some of the ink 
		at the far right margin of the page has been rubbed
		off.  Line 1 has a scratched area before an apparent final bar line which may have contained an additional note.
		The last C note in line 3 is very faint 	and could be just a smudge.}
	\hspace #0
} }

% -------- Page M5 -------------------------------------
\pageBreak

\score {
	\new Staff <<
	{ \clef "petrucci-c4" \MensStyle \MusicFiveOne
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = "page 77"
			piece = \markup { "Northhu[m]bland/3" }
			}
	}

\score {
	\new Staff <<
	{ \clef "petrucci-c4" \MensStyle \MusicFiveTwo
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = ##f
			}
	}

\score {
	\new Staff <<
	{ \clef "petrucci-c5" \MensStyle \MusicFiveThree
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = ##f
			piece = \markup { "Attendans" }
			}
	}

\markup { 
	\column {
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \small { \italic { Comment 1:} Line 1 of the music
		on this page contains a semibreve rest after the seventh note.}
	\wordwrap \small { \italic { Comment 2:} The \italic{u} in the word over 
	the first line is written upside-down, but meaning is known.}
	\wordwrap \small { \italic { Comment 3:} There are several
	small dots and marks at the top of the bar line after the
	final note of line three.}
	\hspace #0
} }

% -------- Page M6 -------------------------------------
\pageBreak

\score {
	\new Staff <<
	{ \clef "petrucci-c4" \MensStyle \MusicSixOne
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = "page 78"
			piece = \markup { "Talbott 2./" }
			}
	}

\score {
	\new Staff <<
	{ \clef "petrucci-c4" \MensStyle \MusicSixTwo
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = ##f
			}
	}

\score {
	\new Staff <<
	{ \clef "petrucci-c5" \MensStyle \MusicSixThree
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = ##f
			piece = \markup { "Lybens distonys/" }
			}
	}

\markup { 
	\column {
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
} }

% -------- Page M7 -------------------------------------
\pageBreak

\score {
	\new Staff <<
	{ \clef "petrucci-c5" \MensStyle \MusicSevenOne
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = "page 79"
			piece = \markup { "Temp[er]ans 3/" }
			}
	}

\score {
	\new Staff <<
	{ \clef "petrucci-c5" \MensStyle \MusicSevenTwo
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = ##f
			}
	}

\score {
	\new Staff <<
	{ \clef "petrucci-c2" \MensStyle \MusicSevenThree
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = ##f
			piece = \markup { "Laduches" }
			}
	}

\markup { 
	\column {
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \small { \italic { Comment 1: } The last note on the third staff is squeezed in at the edge of the page and partly scratched away.}  
	\hspace #0
		\wordwrap \small { \italic { Comment 2: }  The flat for the "key signature" on the 3rd staff is placed on F rather than B.}  
	\hspace #0
} }

%%% End of Petrucci notation pages, now the modern notation pages follow

% -------- M1 modern -------------------------------------
\score {
	\new Staff <<
	{ \clef "treble_8" \ModStyle \shiftDurations #2 #0 {\MusicOneOne}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
			} 
		}
	\header {
		title = "Music of the Gresley Manuscript (modern notation)"
		subtitle = "Accademia della Danza, Barony of Carolingia, AS LII"
		subsubtitle = "page 73"
		piece = \markup { \with-color #grey \italic "[Illegible]" " P[er]nes a g[ ]" }
		}
	}

\score {
	\new Staff <<
	{ \clef "treble_8" \ModStyle \shiftDurations #2 #0 {\MusicOneTwo}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
			} 
		}
	\header { 
		title = ##f
		subtitle = ##f
		piece = \markup { \with-color #grey \italic "B[re]stein is a mary town" } }
	}

\score {
	\new Staff <<
	{ \clef "treble_8" \ModStyle \shiftDurations #2 #0 {\MusicOneThree}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
			} 
		}
		\header { 
			title = ##f
			subtitle = ##f
			piece = \markup { "Eglamo[r]" }
		}
	}

\markup { 
	\column {
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0

	\wordwrap \small { \italic { Comment 1: } The first two staves of music have titles which are crossed out with horizontal strokes, which have been represented with greyed italic text. Brackets denote abbreviated text; empty brackets denote illegible text. } 

	\hspace #0

	\wordwrap \small { \italic { Comment 2: } This page is badly damaged; toward the right edge, the ink fades to a faint shadow.  On lines one and three, notes respresented in the palest shades of grey are increasingly conjectural.  These lines have no final bar, and the manuscript may originally have contained additional notes.}

	\hspace #0
} }
% -------- Page M2 modern -------------------------------------
\pageBreak

\score {
	\new Staff  <<
	{ \clef "treble_8" \once \override Staff.Clef.color = #(x11-color 'grey60) \ModStyle \shiftDurations #2 #0 {\MusicTwoOne}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
			} 
		}
	\header { 
			title = ##f
			subtitle = "page 74"
		}
	}

\score {
	\new Staff <<
	{ \clef "treble_8" \ModStyle \shiftDurations #2 #0 {\MusicTwoTwo}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
			} 
		}
		\header { 
			title = ##f
			subtitle = ##f
			piece = \markup { "P[er]nes i[n] gre | 2./" }
		}
	}


\score {
	\new Staff <<
	{ \clef "treble_8" \ModStyle \shiftDurations #2 #0 {\MusicTwoThreeModern}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
			} 
		}
	\header { 
			title = ##f
			subtitle = ##f
		}
	}

\markup { 
	\column{
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \small { \italic { Comment 1: } The first staff has no title.  The notes in the first half of the line, before the clef, have been crossed out with horizontal strokes; these notes are represented here with cross-shaped note heads. The notes fade away toward the right of the page, but this staff does end with definite final multiple bar lines.}  
	\hspace #0
	\wordwrap \small { \italic { Comment 2: } The manuscript has no clef at the beginning of the first staff.  The modern notes here are placed as if there had been a C-4 clef.}
	\hspace #0
	\wordwrap \small { \italic { Comment 3: } The third staff begins with a C-5 clef and changes to a C-4 clef.}
	\hspace #0

	}
}

% -------- Page M3 modern -------------------------------------
\pageBreak

\score {
	\new Staff <<
	{ \clef "treble_8" \override Staff.Clef.color = #(x11-color 'grey60)  \ModStyle \shiftDurations #2 #0 {\MusicThreeOne}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
			} 
		}
	\header { 
			title = ##f
			subtitle = "page 75"
		}
	}

\score {
	\new Staff <<
	{ \clef "treble_8" \ModStyle \shiftDurations #2 #0 {\MusicThreeTwo}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
			} 
		}
	\header { 
			title = ##f
			subtitle = ##f
		}
	}

\score {
	\new Staff <<
	{ \clef "treble_8" \override Staff.Clef.color = #(x11-color 'grey60) \ModStyle \shiftDurations #2 #0 {\MusicThreeThree}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
			} 
		}
	\header { 
			title = ##f
			subtitle = ##f
		}
	}

\markup { 
	\column {
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0	
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\hspace #0 

	\wordwrap \small { \italic { Comment 1: } This page is also badly damaged, especially toward the right edge, where the ink fades to a faint shadow.  Notes respresented in pale shades of grey are increasingly faded.  The staves on this page have no final bar lines, and the manuscript may originally have contained additional notes at the ends of the lines.}
\hspace #0
	\wordwrap \small { \italic { Comment 2: } The manuscript has no clef at the beginning of the first or third staff.  The modern notes here are placed as if the missing clefs had been C-4.}
	\hspace #0
} }

% -------- Page M4 modern -------------------------------------
\pageBreak

\score {
	\new Staff <<
	{ \ModStyle \clef "treble_8" \shiftDurations #2 #0 {\MusicFourOne}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = "page 76"
			piece = \markup { "Esp[er]ans/ 3" }
			}
	}

\score {
	\new Staff <<
	{ \clef "treble_8" \ModStyle \shiftDurations #2 #0 {\MusicFourTwo}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = ##f
			}
	}

\score {
	\new Staff <<
	{ \clef "treble_8" \ModStyle \shiftDurations #2 #0 {\MusicFourThree}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = ##f
			piece = \markup { "Bayon / 2." }
			}
	}

\markup { 
	\column {
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \small { \italic { Comment:} Some of the ink 
		at the far right margin of the page has been rubbed
		off.  Line 1 has a scratched area before an apparent final bar line which may have contained an additional note.
		The last C note in line 3 is very faint 	and could be just a smudge.}
	\hspace #0
} }

% -------- Page M5 modern -------------------------------------
\pageBreak

\score {
	\new Staff <<
	{ \clef "treble_8" \ModStyle \shiftDurations #2 #0 {\MusicFiveOne}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = "page 77"
			piece = \markup { "Northhu[m]bland/3" }
			}
	}

\score {
	\new Staff <<
	{ \clef "treble_8" \ModStyle \shiftDurations #2 #0 {\MusicFiveTwo}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = ##f
			}
	}

\score {
	\new Staff <<
	{ \clef "treble_8" \ModStyle \shiftDurations #2 #0 {\MusicFiveThree}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = ##f
			piece = \markup { "Attendans" }
			}
	}

\markup { 
	\column {
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \small { \italic { Comment 1:} Line 1 of the music
		on this page contains a semibreve rest after the seventh note.}
	\wordwrap \small { \italic { Comment 2:} The \italic{u} in the word over 
	the first line is written upside-down, but meaning is known.}
	\wordwrap \small { \italic { Comment 3:} There are several
	small dots and marks at the top of the bar line after the
	final note of line three.}
	\hspace #0
} }

% -------- Page M6 modern -------------------------------------
\pageBreak


\score {
	\new Staff <<
	{ \clef "treble_8" \ModStyle \shiftDurations #2 #0 {\MusicSixOne}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = "page 78"
			piece = \markup { "Talbott 2./" }
			}
	}

\score {
	\new Staff <<
	{ \clef "treble_8" \ModStyle \shiftDurations #2 #0 {\MusicSixTwo}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = ##f
			}
	}

\score {
	\new Staff <<
	{ \clef "treble_8" \ModStyle \shiftDurations #2 #0 {\MusicSixThree}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = ##f
			piece = \markup { "Lybens distonys/" }
			}
	}

\markup { 
	\column {
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
} }

% -------- Page M7 modern -------------------------------------
\pageBreak

\score {
	\new Staff <<
	{ \clef "treble_8" \ModStyle \shiftDurations #2 #0 {\MusicSevenOne}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = "page 79"
			piece = \markup { "Temp[er]ans 3/" }
			}
	}

\score {
	\new Staff <<
	{ \clef "treble_8" \ModStyle \shiftDurations #2 #0 {\MusicSevenTwo}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = ##f
			}
	}

\score {
	\new Staff <<
	{ \clef "treble_8" \ModStyle \shiftDurations #2 #0 {\MusicSevenThree}
		}
	>>
	\layout {
		\context { \Staff
		\remove "Time_signature_engraver"
				} 
			}
	\header { 
			title = ##f
			subtitle = ##f
			piece = \markup { "Laduches" }
			}
	}

\markup { 
	\column {
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \huge { \with-color #white "Spacer text" }
	\hspace #0
	\wordwrap \small { \italic { Comment 1: } The last note on the 3rd line of music is squeezed in at the edge of the page and partly scratched away.}  
	\hspace #0
	\wordwrap \small { \italic { Comment 2: }  The flat for the "key signature" on the 3rd staff is placed on F rather than B.}  
	\hspace #0
} }

%%% End of scores %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

