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

import
  ../Prs3d/Prs3d_Root, ../Prs3d/Prs3d_Drawer, ../TColgp/TColgp_SequenceOfPnt

discard "forward decl of Adaptor3d_Curve"
type
  StdPrs_Curve* {.importcpp: "StdPrs_Curve", header: "StdPrs_Curve.hxx", bycopy.} = object of Prs3d_Root ##
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


proc Add*(aPresentation: handle[Prs3d_Presentation]; aCurve: Adaptor3d_Curve;
         aDrawer: handle[Prs3d_Drawer];
         drawCurve: Standard_Boolean = Standard_True) {.
    importcpp: "StdPrs_Curve::Add(@)", header: "StdPrs_Curve.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aCurve: Adaptor3d_Curve;
         U1: Standard_Real; U2: Standard_Real; aDrawer: handle[Prs3d_Drawer];
         drawCurve: Standard_Boolean = Standard_True) {.
    importcpp: "StdPrs_Curve::Add(@)", header: "StdPrs_Curve.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aCurve: Adaptor3d_Curve;
         aDrawer: handle[Prs3d_Drawer]; Points: var TColgp_SequenceOfPnt;
         drawCurve: Standard_Boolean = Standard_True) {.
    importcpp: "StdPrs_Curve::Add(@)", header: "StdPrs_Curve.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aCurve: Adaptor3d_Curve;
         U1: Standard_Real; U2: Standard_Real; Points: var TColgp_SequenceOfPnt;
         aNbPoints: Standard_Integer = 30;
         drawCurve: Standard_Boolean = Standard_True) {.
    importcpp: "StdPrs_Curve::Add(@)", header: "StdPrs_Curve.hxx".}
proc Match*(X: Standard_Real; Y: Standard_Real; Z: Standard_Real;
           aDistance: Standard_Real; aCurve: Adaptor3d_Curve;
           aDrawer: handle[Prs3d_Drawer]): Standard_Boolean {.
    importcpp: "StdPrs_Curve::Match(@)", header: "StdPrs_Curve.hxx".}
proc Match*(X: Standard_Real; Y: Standard_Real; Z: Standard_Real;
           aDistance: Standard_Real; aCurve: Adaptor3d_Curve;
           aDeflection: Standard_Real; aLimit: Standard_Real;
           aNbPoints: Standard_Integer): Standard_Boolean {.
    importcpp: "StdPrs_Curve::Match(@)", header: "StdPrs_Curve.hxx".}
proc Match*(X: Standard_Real; Y: Standard_Real; Z: Standard_Real;
           aDistance: Standard_Real; aCurve: Adaptor3d_Curve; U1: Standard_Real;
           U2: Standard_Real; aDrawer: handle[Prs3d_Drawer]): Standard_Boolean {.
    importcpp: "StdPrs_Curve::Match(@)", header: "StdPrs_Curve.hxx".}
proc Match*(X: Standard_Real; Y: Standard_Real; Z: Standard_Real;
           aDistance: Standard_Real; aCurve: Adaptor3d_Curve; U1: Standard_Real;
           U2: Standard_Real; aDeflection: Standard_Real;
           aNbPoints: Standard_Integer): Standard_Boolean {.
    importcpp: "StdPrs_Curve::Match(@)", header: "StdPrs_Curve.hxx".}