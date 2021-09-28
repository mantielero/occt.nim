##  Created on: 1992-12-15
##  Created by: Jean Louis FRENKEL
##  Copyright (c) 1992-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of Adaptor3d_Curve"
type
  StdPrsDeflectionCurve* {.importcpp: "StdPrs_DeflectionCurve",
                          header: "StdPrs_DeflectionCurve.hxx", bycopy.} = object of Prs3dRoot ##
                                                                                        ## !
                                                                                        ## adds
                                                                                        ## to
                                                                                        ## the
                                                                                        ## presentation
                                                                                        ## aPresentation
                                                                                        ## the
                                                                                        ## drawing
                                                                                        ## of
                                                                                        ## the
                                                                                        ## curve
                                                                                        ##
                                                                                        ## !
                                                                                        ## aCurve
                                                                                        ## with
                                                                                        ## respect
                                                                                        ## to
                                                                                        ## the
                                                                                        ## maximal
                                                                                        ## chordial
                                                                                        ## deviation
                                                                                        ## defined
                                                                                        ##
                                                                                        ## !
                                                                                        ## by
                                                                                        ## the
                                                                                        ## drawer
                                                                                        ## aDrawer.
                                                                                        ##
                                                                                        ## !
                                                                                        ## The
                                                                                        ## aspect
                                                                                        ## is
                                                                                        ## defined
                                                                                        ## by
                                                                                        ## LineAspect
                                                                                        ## in
                                                                                        ## aDrawer.
                                                                                        ##
                                                                                        ## !
                                                                                        ## If
                                                                                        ## drawCurve
                                                                                        ## equals
                                                                                        ## Standard_False
                                                                                        ## the
                                                                                        ## curve
                                                                                        ## will
                                                                                        ## not
                                                                                        ## be
                                                                                        ## displayed,
                                                                                        ##
                                                                                        ## !
                                                                                        ## it
                                                                                        ## is
                                                                                        ## used
                                                                                        ## if
                                                                                        ## the
                                                                                        ## curve
                                                                                        ## is
                                                                                        ## a
                                                                                        ## part
                                                                                        ## of
                                                                                        ## some
                                                                                        ## shape
                                                                                        ## and
                                                                                        ## PrimitiveArray
                                                                                        ##
                                                                                        ## !
                                                                                        ## visualization
                                                                                        ## approach
                                                                                        ## is
                                                                                        ## activated
                                                                                        ## (it
                                                                                        ## is
                                                                                        ## activated
                                                                                        ## by
                                                                                        ## default).


proc add*(aPresentation: Handle[Prs3dPresentation]; aCurve: var Adaptor3dCurve;
         aDrawer: Handle[Prs3dDrawer]; drawCurve: bool = true) {.
    importcpp: "StdPrs_DeflectionCurve::Add(@)",
    header: "StdPrs_DeflectionCurve.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aCurve: var Adaptor3dCurve;
         u1: cfloat; u2: cfloat; aDrawer: Handle[Prs3dDrawer]; drawCurve: bool = true) {.
    importcpp: "StdPrs_DeflectionCurve::Add(@)",
    header: "StdPrs_DeflectionCurve.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aCurve: var Adaptor3dCurve;
         aDeflection: cfloat; aLimit: cfloat; anAngle: cfloat = 0.2;
         drawCurve: bool = true) {.importcpp: "StdPrs_DeflectionCurve::Add(@)",
                               header: "StdPrs_DeflectionCurve.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aCurve: var Adaptor3dCurve;
         aDeflection: cfloat; aDrawer: Handle[Prs3dDrawer];
         points: var TColgpSequenceOfPnt; drawCurve: bool = true) {.
    importcpp: "StdPrs_DeflectionCurve::Add(@)",
    header: "StdPrs_DeflectionCurve.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aCurve: var Adaptor3dCurve;
         u1: cfloat; u2: cfloat; aDeflection: cfloat; points: var TColgpSequenceOfPnt;
         anAngle: cfloat = 0.2; drawCurve: bool = true) {.
    importcpp: "StdPrs_DeflectionCurve::Add(@)",
    header: "StdPrs_DeflectionCurve.hxx".}
proc match*(x: cfloat; y: cfloat; z: cfloat; aDistance: cfloat; aCurve: Adaptor3dCurve;
           aDrawer: Handle[Prs3dDrawer]): bool {.
    importcpp: "StdPrs_DeflectionCurve::Match(@)",
    header: "StdPrs_DeflectionCurve.hxx".}
proc match*(x: cfloat; y: cfloat; z: cfloat; aDistance: cfloat; aCurve: Adaptor3dCurve;
           u1: cfloat; u2: cfloat; aDrawer: Handle[Prs3dDrawer]): bool {.
    importcpp: "StdPrs_DeflectionCurve::Match(@)",
    header: "StdPrs_DeflectionCurve.hxx".}
proc match*(theX: cfloat; theY: cfloat; theZ: cfloat; theDistance: cfloat;
           theCurve: Adaptor3dCurve; theDeflection: cfloat; theLimit: cfloat;
           theAngle: cfloat): bool {.importcpp: "StdPrs_DeflectionCurve::Match(@)",
                                  header: "StdPrs_DeflectionCurve.hxx".}
proc match*(theX: cfloat; theY: cfloat; theZ: cfloat; theDistance: cfloat;
           theCurve: Adaptor3dCurve; theU1: cfloat; theU2: cfloat;
           theDeflection: cfloat; theAngle: cfloat): bool {.
    importcpp: "StdPrs_DeflectionCurve::Match(@)",
    header: "StdPrs_DeflectionCurve.hxx".}

























