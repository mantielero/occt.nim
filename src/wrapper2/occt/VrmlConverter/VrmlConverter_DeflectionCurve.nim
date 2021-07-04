##  Created on: 1997-04-29
##  Created by: Alexander BRIVIN
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_OStream,
  ../Standard/Standard_Real, ../TColStd/TColStd_HArray1OfReal,
  ../Standard/Standard_Integer

discard "forward decl of Adaptor3d_Curve"
discard "forward decl of VrmlConverter_Drawer"
type
  VrmlConverter_DeflectionCurve* {.importcpp: "VrmlConverter_DeflectionCurve",
                                  header: "VrmlConverter_DeflectionCurve.hxx",
                                  bycopy.} = object ## ! adds to the OStream the drawing of the curve aCurve with
                                                 ## ! respect to the maximal chordial deviation defined
                                                 ## ! by the drawer aDrawer.
                                                 ## ! The aspect is defined by LineAspect in aDrawer.


proc Add*(anOStream: var Standard_OStream; aCurve: var Adaptor3d_Curve;
         aDrawer: handle[VrmlConverter_Drawer]) {.
    importcpp: "VrmlConverter_DeflectionCurve::Add(@)",
    header: "VrmlConverter_DeflectionCurve.hxx".}
proc Add*(anOStream: var Standard_OStream; aCurve: var Adaptor3d_Curve;
         U1: Standard_Real; U2: Standard_Real; aDrawer: handle[VrmlConverter_Drawer]) {.
    importcpp: "VrmlConverter_DeflectionCurve::Add(@)",
    header: "VrmlConverter_DeflectionCurve.hxx".}
proc Add*(anOStream: var Standard_OStream; aCurve: var Adaptor3d_Curve;
         aDeflection: Standard_Real; aLimit: Standard_Real) {.
    importcpp: "VrmlConverter_DeflectionCurve::Add(@)",
    header: "VrmlConverter_DeflectionCurve.hxx".}
proc Add*(anOStream: var Standard_OStream; aCurve: var Adaptor3d_Curve;
         aDeflection: Standard_Real; aDrawer: handle[VrmlConverter_Drawer]) {.
    importcpp: "VrmlConverter_DeflectionCurve::Add(@)",
    header: "VrmlConverter_DeflectionCurve.hxx".}
proc Add*(anOStream: var Standard_OStream; aCurve: var Adaptor3d_Curve;
         U1: Standard_Real; U2: Standard_Real; aDeflection: Standard_Real) {.
    importcpp: "VrmlConverter_DeflectionCurve::Add(@)",
    header: "VrmlConverter_DeflectionCurve.hxx".}
proc Add*(anOStream: var Standard_OStream; aCurve: Adaptor3d_Curve;
         aParams: handle[TColStd_HArray1OfReal]; aNbNodes: Standard_Integer;
         aDrawer: handle[VrmlConverter_Drawer]) {.
    importcpp: "VrmlConverter_DeflectionCurve::Add(@)",
    header: "VrmlConverter_DeflectionCurve.hxx".}