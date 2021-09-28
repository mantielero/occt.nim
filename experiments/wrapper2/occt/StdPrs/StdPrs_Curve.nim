##  Created on: 1995-08-04
##  Created by: Modelistation
##  Copyright (c) 1995-1999 Matra Datavision
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
  StdPrsCurve* {.importcpp: "StdPrs_Curve", header: "StdPrs_Curve.hxx", bycopy.} = object of Prs3dRoot ##
                                                                                             ## !
                                                                                             ## Adds
                                                                                             ## to
                                                                                             ## the
                                                                                             ## presentation
                                                                                             ## aPresentation
                                                                                             ## the
                                                                                             ## drawing
                                                                                             ## of
                                                                                             ## the
                                                                                             ## curve
                                                                                             ## aCurve.
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


proc add*(aPresentation: Handle[Prs3dPresentation]; aCurve: Adaptor3dCurve;
         aDrawer: Handle[Prs3dDrawer]; drawCurve: bool = true) {.
    importcpp: "StdPrs_Curve::Add(@)", header: "StdPrs_Curve.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aCurve: Adaptor3dCurve;
         u1: cfloat; u2: cfloat; aDrawer: Handle[Prs3dDrawer]; drawCurve: bool = true) {.
    importcpp: "StdPrs_Curve::Add(@)", header: "StdPrs_Curve.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aCurve: Adaptor3dCurve;
         aDrawer: Handle[Prs3dDrawer]; points: var TColgpSequenceOfPnt;
         drawCurve: bool = true) {.importcpp: "StdPrs_Curve::Add(@)",
                               header: "StdPrs_Curve.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aCurve: Adaptor3dCurve;
         u1: cfloat; u2: cfloat; points: var TColgpSequenceOfPnt; aNbPoints: cint = 30;
         drawCurve: bool = true) {.importcpp: "StdPrs_Curve::Add(@)",
                               header: "StdPrs_Curve.hxx".}
proc match*(x: cfloat; y: cfloat; z: cfloat; aDistance: cfloat; aCurve: Adaptor3dCurve;
           aDrawer: Handle[Prs3dDrawer]): bool {.
    importcpp: "StdPrs_Curve::Match(@)", header: "StdPrs_Curve.hxx".}
proc match*(x: cfloat; y: cfloat; z: cfloat; aDistance: cfloat; aCurve: Adaptor3dCurve;
           aDeflection: cfloat; aLimit: cfloat; aNbPoints: cint): bool {.
    importcpp: "StdPrs_Curve::Match(@)", header: "StdPrs_Curve.hxx".}
proc match*(x: cfloat; y: cfloat; z: cfloat; aDistance: cfloat; aCurve: Adaptor3dCurve;
           u1: cfloat; u2: cfloat; aDrawer: Handle[Prs3dDrawer]): bool {.
    importcpp: "StdPrs_Curve::Match(@)", header: "StdPrs_Curve.hxx".}
proc match*(x: cfloat; y: cfloat; z: cfloat; aDistance: cfloat; aCurve: Adaptor3dCurve;
           u1: cfloat; u2: cfloat; aDeflection: cfloat; aNbPoints: cint): bool {.
    importcpp: "StdPrs_Curve::Match(@)", header: "StdPrs_Curve.hxx".}

























