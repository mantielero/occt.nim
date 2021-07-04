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

import
  ../Prs3d/Prs3d_Root, ../Prs3d/Prs3d_Drawer, ../TColgp/TColgp_SequenceOfPnt

discard "forward decl of Adaptor3d_Curve"
type
  StdPrs_DeflectionCurve* {.importcpp: "StdPrs_DeflectionCurve",
                           header: "StdPrs_DeflectionCurve.hxx", bycopy.} = object of Prs3d_Root ##
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


proc Add*(aPresentation: handle[Prs3d_Presentation]; aCurve: var Adaptor3d_Curve;
         aDrawer: handle[Prs3d_Drawer];
         drawCurve: Standard_Boolean = Standard_True) {.
    importcpp: "StdPrs_DeflectionCurve::Add(@)",
    header: "StdPrs_DeflectionCurve.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aCurve: var Adaptor3d_Curve;
         U1: Standard_Real; U2: Standard_Real; aDrawer: handle[Prs3d_Drawer];
         drawCurve: Standard_Boolean = Standard_True) {.
    importcpp: "StdPrs_DeflectionCurve::Add(@)",
    header: "StdPrs_DeflectionCurve.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aCurve: var Adaptor3d_Curve;
         aDeflection: Standard_Real; aLimit: Standard_Real;
         anAngle: Standard_Real = 0.2; drawCurve: Standard_Boolean = Standard_True) {.
    importcpp: "StdPrs_DeflectionCurve::Add(@)",
    header: "StdPrs_DeflectionCurve.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aCurve: var Adaptor3d_Curve;
         aDeflection: Standard_Real; aDrawer: handle[Prs3d_Drawer];
         Points: var TColgp_SequenceOfPnt;
         drawCurve: Standard_Boolean = Standard_True) {.
    importcpp: "StdPrs_DeflectionCurve::Add(@)",
    header: "StdPrs_DeflectionCurve.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aCurve: var Adaptor3d_Curve;
         U1: Standard_Real; U2: Standard_Real; aDeflection: Standard_Real;
         Points: var TColgp_SequenceOfPnt; anAngle: Standard_Real = 0.2;
         drawCurve: Standard_Boolean = Standard_True) {.
    importcpp: "StdPrs_DeflectionCurve::Add(@)",
    header: "StdPrs_DeflectionCurve.hxx".}
proc Match*(X: Standard_Real; Y: Standard_Real; Z: Standard_Real;
           aDistance: Standard_Real; aCurve: Adaptor3d_Curve;
           aDrawer: handle[Prs3d_Drawer]): Standard_Boolean {.
    importcpp: "StdPrs_DeflectionCurve::Match(@)",
    header: "StdPrs_DeflectionCurve.hxx".}
proc Match*(X: Standard_Real; Y: Standard_Real; Z: Standard_Real;
           aDistance: Standard_Real; aCurve: Adaptor3d_Curve; U1: Standard_Real;
           U2: Standard_Real; aDrawer: handle[Prs3d_Drawer]): Standard_Boolean {.
    importcpp: "StdPrs_DeflectionCurve::Match(@)",
    header: "StdPrs_DeflectionCurve.hxx".}
proc Match*(theX: Standard_Real; theY: Standard_Real; theZ: Standard_Real;
           theDistance: Standard_Real; theCurve: Adaptor3d_Curve;
           theDeflection: Standard_Real; theLimit: Standard_Real;
           theAngle: Standard_Real): Standard_Boolean {.
    importcpp: "StdPrs_DeflectionCurve::Match(@)",
    header: "StdPrs_DeflectionCurve.hxx".}
proc Match*(theX: Standard_Real; theY: Standard_Real; theZ: Standard_Real;
           theDistance: Standard_Real; theCurve: Adaptor3d_Curve;
           theU1: Standard_Real; theU2: Standard_Real; theDeflection: Standard_Real;
           theAngle: Standard_Real): Standard_Boolean {.
    importcpp: "StdPrs_DeflectionCurve::Match(@)",
    header: "StdPrs_DeflectionCurve.hxx".}