type
  TopAbs* {.importcpp: "TopAbs", header: "TopAbs.hxx", bycopy.} = object ## ! Compose  the Orientation    <Or1>  and  <Or2>.    This
                                                                 ## ! composition is not symmetric (if  you switch <Or1> and
                                                                 ## ! <Or2> the result  is different). It assumes that <Or1>
                                                                 ## ! is the Orientation of a Shape S1 containing a Shape S2
                                                                 ## ! of Orientation   Or2.  The result    is the  cumulated
                                                                 ## ! orientation of S2 in S1.  The composition law is :
                                                                 ## !
                                                                 ## ! \ Or2     FORWARD  REVERSED INTERNAL EXTERNAL
                                                                 ## ! Or1
                                                                 ## -------------------------------------
                                                                 ## ! FORWARD   | FORWARD  REVERSED INTERNAL EXTERNAL
                                                                 ## ! |
                                                                 ## ! REVERSED  | REVERSED FORWARD  INTERNAL EXTERNAL
                                                                 ## ! |
                                                                 ## ! INTERNAL  | INTERNAL INTERNAL INTERNAL INTERNAL
                                                                 ## ! |
                                                                 ## ! EXTERNAL  | EXTERNAL EXTERNAL EXTERNAL EXTERNAL
                                                                 ## ! Note: The top corner in the table is the most important
                                                                 ## ! for the purposes of Open CASCADE topology and shape sharing.
