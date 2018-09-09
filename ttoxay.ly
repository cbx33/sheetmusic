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
          This piece is intended to be the theme for the Audio book version of The Tale of X and Y.
          It is a bleak piece, with some unexpected bass lines creating a tension that resolves
          almost longingly at the end.
        }
      }
    }
    \column{
      \override #'(line-width . 50)
      \fill-line{
        \justify \small \italic {
          It should be played slowly and carefully. Slowing down slightly at the end with a small
          crescendo.
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
    \line { 2018 }
    \center-column {
      \huge \smallCaps "The Tale of X and Y"
      \line \italic {(Audiobook Theme)}
    }
    \line { Peter Savage }
  }
}

%\markup {
%  \fill-line { 2018 }
%}

global = {
  \key c \minor
  \numericTimeSignature
  \time 4/4
}

right =  {
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \global
  \tempo "Carefully" 4 = 50
  %\mark \markup { \small Playfully }

  c'8 \p d' ees' f' g' c'' bes' g' g'  f' f' ees' f'2 
  c'8 d' ees' f' g' c'' bes' g' g'  f' f' ees' f'4
  f'8 g' aes' g' g'  f' d'4 f'8 aes' g' f' f' ees' ees' 4
  ees'8 \< f' g' f' f' ees' ees' d' \!d'\>\f ees' c' 1\!\p


}

left = {
  \global
  <c c,>-\markup \smaller \italic {Pedal ad lib. throughout}
  <f, f,,> <c c,> <f, f,,> <d d,> <des des,> <b, b,,> 2 <g, g,,>4
  ^\markup \small \italic {poco rit. }<f, f,,> <c, c,,>1
}


\score {
  \new PianoStaff \with{ 
  }<<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}