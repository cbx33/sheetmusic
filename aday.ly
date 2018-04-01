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
          This piece centres around the life of a child. It should be
          played carefully, but playfully. Bars 1-4 depict the child waking,
          slightly drowsily with little ramps in speed.
          Bars 5-14 represent the brightness of a child's morning. Full of promise
          and energy. It should be played legato with careful attention to speed.
          At bars 15-23 the child is upset and we throw to a slightly minor and discordant
          section. Some staccato helps emphasise a relatively grumpy section.
        }
      }
    }
    \column{
      \override #'(line-width . 50)
      \fill-line{
        \justify \small \italic {
          The parent responds throughout bars 24-31. The left hand representing the lower tone
          of the parent, whilst the right represents the wistful thoughts of the child.
          Bars 32-38 bring the child's day to a triumph, loud and again playful.
          Bars 39-52 take us through bath and bedtime
          with all the joys of unexpected moments, reaching a loud crescendo at the end.
          Bars 53-61 watch the child as their eyes start to
          droop. This part should be played almost lazily, hence the grace notes, almost slipping
          through.
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
      \huge \smallCaps "Un Jour"
      \line \italic {(pour en enfant)}
    }
    \line { Peter Savage }
  }
}

%\markup {
%  \fill-line { 2018 }
%}

global = {
  \key g \major
  \numericTimeSignature
  \time 6/8
}

right =  {
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \global
  \tempo "Adagio" 4. = 50
  %\mark \markup { \small Playfully }

  r2.\<\pp r\!\> r\!\< r2 \!\>r8 \!d''8\p(  |
  g''4-> d'' 16 g'' a'' 4-> d'' 16 a''  |
  b'' 8. c''' 16 d''' g'' a''4) d''8(  |
  g'' 4-> d'' 16 g'' a'' 4-> d'' 16 a''  |
  e''' 8 \grace e'''16 d'''8 cis''' d'''4) e'''16( fis'''  |
  g''' 4-> fis''' 8 e''' 4 b'' 8  |

  c''' 2) r8 e'''16( g'''  |
  fis''' 4-> e''' 8 d''' 4 a'' 8  |
  b'' 8. c''' 16 d''' 8 b'' 4) b'' 16( b''  |
  a''8 b'' c''' cis''' d''' e'''  |
  d''' 16 d''' d''' 8. fis'' 16 g'' 4.)  |
                
  \time 3/8
  r8\< r fis'-.\!  |
  \time 6/8
                
  %% Section 2 Slow RH
  fis' 4\f fis'8-. fis'( e' fis'  |
  g' 4 fis' 8 e' 4) fis' 8-.  |
  
  \pageBreak
  
  fis' 4 fis' 8-. fis'( e' fis'  |
  g' 2) r8 g'-.  |
  g' 4 g' 8-. g'( fis' g'  |
  b' 4 a' 8 e' 4) g' 8  |  
  g' 8 g' g' g' \grace g'16 fis'8 g'  |
  a' 2 r8 fis'  |
  
  %% Section 2 Fast RH
  fis' 16 bes' cis'' e'' cis'' bes' fis' bes' cis'' e'' cis'' bes'  |
  fis' 16 b' d'' fis'' d'' b' fis' b' d'' fis'' d'' b'  |
  fis' 16 bes' cis'' e'' cis'' bes' fis' bes' cis'' e'' cis'' bes'  |
  fis' 16 b' d'' fis'' d'' b' fis' b' es'' fis'' es'' b'  |
  d' 16 g' b' d'' b' g' d' g' b' d'' b' g'  |
  e' 16 g' b' e'' b' g' e' g' b' e'' b' g'  |
  e' 16 a' c'' e'' c'' a' e' a' c'' e'' c'' a'  |
  a 2.\ff  |
  
  %% Section 3 RH
  d''' 4.\mf( ees'''  |
  e''' 8) c'''^. c'''^. c'''^. r4 |
  a'' 4.( b'' 4 c''' 8  |
  d''' 8 b'' a'' g'') r r  |
  g'' 4.( a'' 4 b'' 8  |
  c''' 8) a''^. a''^. a''^. g''( e''  |
  d'' 4 fis''16 a'' c'''8 b'' a''  |
  g'' 2) r8 d''(\p  |

  g'' 4 d'' 16 g'' a'' 4 d'' 16 a''  |
  b'' 8. b'' 16 c''' d''' c''' 4) a'' 8(  |
  c'''8 b'' a'' g'' fis'' g'' b''4 a''8 d''8\cresc) r8 d''(|
  g'' 4 d'' 16 g'' a'' 4 d'' 16 a''  |
  b'' 4 d''16 b'' c'''4) e''8( |

  a''4\< e''16 a''b''4 e''16 b''|
  c'''4 e''16 c''' d'''4) e'''8(\! |
  d'''16)\ff r d''16( e''fis''d''g''d''g''a''b''g''b''g''b''c'''d'''e'''d'''8)  r8 e'''8(
  d'''16) r d''16( e''fis''d''g''d''g''a''b''g'' |
  \grace b''16 c'''8 \grace c'''16 d'''8 \grace e'''16 dis'''8 d'''4) e'''8-.(
  d'''8-.) r8 fis''-.( g''8-.) r4

  \time 3/8
  r4  d''8\pp(
  \time 6/8

  \tempo 4.=40
  %% Final Slowdown RH
  g''4 d'' 16 g'' a'' 4 d'' 16 a''  |
  b'' 8. c''' 16 d''' g'' a'' 4) d'' 8(  |
  g'' 4 d'' 16 g'' a'' 4 d'' 16 a''  |
  b'' 8. c''' 16 d''' g'' a'' 4) d'' 8(  |
  g'' 4) r8 r \grace g''16^( a''8. fis''16  |
  g'' 2) \grace g''16^( a''8. fis''16  |
  g'' 4.\p) < d'' b'' g'' >\mp  |
  < b g d' > 2.\pp  \bar "|."
}

left = {
  \global
  g8-\markup \smaller \italic {Pedal ad lib. throughout} ^\markup \small \italic {poco accel. } <b d'> <b d'> g <b d'> <b d'>|
  g^\markup \small \italic {poco rit. }  <c' ees'> <c' ees'> g <d' f'>-> <c' ees'>-> |
  g8^\markup \small \italic {poco accel. } <b d'> <b d'> g <b d'> <b d'> |
  g^\markup \small \italic {poco rit. } <c' ees'> <c' ees'> g <d' f'>-> <c' ees'>-> |
  \break
  g 8 < b d' > < b d' > fis < a d' > < d' a >  |
  g 8 < b d' > < d' b > fis < d' a > < a d' >  |
  g 8 < b d' > < b d' > fis < d' a > < a d' >  |
  e 8 < g b > < g bes > d < fis a > < fis a >  |
  e 8 < g b > < g b > e < g b > < g b >  |

  c 8 < g e > < e g > c < e g > < e b g >  |
  d 8 < fis a > < fis a > d < fis c' a > < fis c' a >  |
  g 8 < d' b > < d' b > g < f' d' b > < f' d' b >  |
  a 8 < c' e' > < c' e' > g < ees' c' > < ees' c' >  |
  fis 8 < a d' > < a d' > g < b d' > < b d' >  |
  g <d' b> <b d'>
  fis 8 < bes cis' > < cis' bes > fis < bes cis' > < bes cis' >  |
  fis 8 < b d' > < b d' > fis < d' b > < b d' >  |
  \break
  fis 8 < bes cis' > < bes cis' > fis < bes cis' > < bes cis' >  |
  fis 8 < d' b > < b d' > fis < b ees' > < ees' b >  |
  g 8 < d' b > < b d' > g < b d' > < b d' >  |
  e 8 < g b > < g b > e < g b > < g b >  |
  \break
  a 8 < c' e' > < c' e' > a < e' c' > < c' e' >  |
  fis 8 < d' a > < d' a > fis < bes d' > < bes d' >  |
  
  fis 4(^\markup \italic{legato} fis 8 fis e fis  |
  g 4 fis 8 e 4) fis 8(  |
  fis 4 fis 8 fis e fis  |
  g 2) r8 g(  |
  g 4 g 8 g fis g  |
  b 4 a 8 e 4 g 8  |
  g 8 g g g fis g)  |
                
  d 8 < a fis > < a fis > d < fis bes > < fis bes >  |
  g 8 < b d' > < b d' > g < ees' b > < b ees' >  |
  g 8 < c' e' > < c' e' > g < c' e' > < c' e' >  |
  fis 8 < a c' > < c' a > fis < a d' > < a d' >  |
  g 8 < b d' > < b d' > g < b d' > < d' b >  |
  e 8 < g b > < g b > e < g b > < b g >  |
  e 8 < c' g > < g c' > e < g c' > < g c' >  |
  d 8 < fis a > < fis a > d < fis a > < fis a >  |
  g 8 < d' b > < b d' > g < b d' > < b d' >  |

  %% Melody Twist
  g8<d' b><d' b> fis8 <b d'><b d'>
  f 8 < d' b > < b d' > e < a c' > < a c' >  |
  dis 8 < a c' > < a c' > d < g b > < g b >  |
  cis 8 < g b > < g b > d < fis a > < fis a >  |
                
  g8 <d' b><d' b> fis<a d'><a d'> |
  f <a d'><a d'> e <a c'><a c'> |
  a <c' e'><c' e'> g<c' e'><c' e'>|
  fis <c' e'><c' e'> fis <c' dis'><c' dis'>
  <fis a d'>1.
  <fis a d'>
  <fis a d'>8-. r4 % add 7th?
  <g b d>8-. r4
  r4.

  %% Final Slowdown
  g 8^\markup \small \italic {molto rit. } < b d' > < b d' > fis < d' a > < a d' >  |
  e 8 < g b > < g b > ees < g c' > < g c' >  |
  g 8 < b d' > < b d' > fis < a d' > < d' a >  |
  e 8 < g b > < g b > ees < g c' > < g c' >  |
  g 8 < b d' > < b d' > g < ees' c' > < ees' c' >  |
  g 8 < b d' > < b d' > g < ees' c' > < ees' c' >  |
  < d' g b > 4. < d' b g >  |
  g,, 2.
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