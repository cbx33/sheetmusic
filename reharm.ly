% TODO
% pedal marking

\version "2.18.2"

\paper {
  max-systems-per-page = 6
}

%\header {
%  title = "Un Jour"
%  subtitle = "(pour un enfant)"
%  composer = "Peter Savage"
%  copyright = "CC-NC"
%}
\header {
  tagline = \markup \small \italic{"CC-NC 2018"}  % removed
} 

\markup {
  \fill-line {
    \column {
      \override #'(line-width . 50)
      \fill-line {
        \justify \small \italic {
          A reharmonization of a popular Birthday song
        }
      }
    }
    \column{
      \override #'(line-width . 50)
      \fill-line{
        \justify \small \italic {
          Just a little experiment on colour.
        }
      }
    }
  }
}

\markup {
  \vspace #2
}

\markup {
  \fill-line {
    \line { 2019 }
    \center-column {
      \huge \smallCaps "Reharmonization Exercise 1"
      \line \italic {(First reharmonization)}
    }
    \line { Peter Savage }
  }
}

%\markup {
%  \fill-line { 2019 }
%}

global = {
  \key f \major
  \numericTimeSignature
  \time 3/4
}

chExceptionMusic = {
  <c d e g>1-\markup { \super "add2" }
  <f g a c>1-\markup { \super "add2" }
}

chExceptions = #( append
  ( sequential-music-to-chord-exceptions chExceptionMusic #t)
  ignatzekExceptions)

right =  {
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \global
  \tempo "Joyfully" 4 = 90
  %\mark \markup { \small Playfully }

  r2 < e' g' bes' c''>8. <e' g' bes' c''> 16 <f' g' a' c''>2.  \tuplet 3/2{ < e' g' d' c'>8 e' d'} c' r4.
<e' c' g' bes'>2. <a' c'' f'> \break
<d' f' a' c''> <g bes d' f'>2 <g b d' f'>4 <b d' f' a'>2. <e' g' bes' c''>2 <e' g' bes' c''>8.
<e' g' bes' c''>16
<f' g' a' c''>2. <c' d' e' g'>2. <c' e' g' bes'>2. <f' a' c''>2. <d' f' a' c''>2. <g bes d' f'>2 <bes d' f' bes'>4 <e' f' a' c''>2 <c' e' g' bes'>4 <gis c' dis' f'>2. <g c' d' f'>2. <fis bes cis' f'>2. <f a c' e'>2.~ <f a c' d'>2.
% <fis a cis' e'> <a cis' e' gis'> <fis bes c' e'>
}

left = {
  \global
  r2 <c, c>4 <f, f>2. <c, c>2. <c, c>2. <f, f>2.\break <d, d>2. <g,, g,>2 <a,, a,>4 <b,, b,>2. <c, c>2. <f, f>2. <c, c> <bes,, bes,> <a,, a,> <d, d> <g,, g,>2 <c, c>4 <d, d>2 <e, e>4 <gis,, gis,>2. <g,, g,>2. <fis,, fis,>2. <f,, f,>2.~ <f,, f,>2.
}

chordmusic =   \chordmode { \set chordNameExceptions = #chExceptions
    r2 c4:7/e <f g a c'>2. <c d e g>2. c2.:7 f2. d2.:min7 g2:m7 g4:7 <b d f a>2. c2:7 c4:7/e <f g a c'>2. <c d e g>2. c2.:7/bes f2.:/a d2.:min7 g2:m7 bes4:/c f2:maj7/d c4:7/e <gis c' dis' f'>2. g2.:7sus4 fis2.:maj7 f2.:maj7 f2.:6
    
  }

\score {
  \new PianoStaff \with{ 
  }<<
      \new ChordNames {
    \chordmusic
  }
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout {
  }
  \midi {
    \tempo 4=100
  }
}
