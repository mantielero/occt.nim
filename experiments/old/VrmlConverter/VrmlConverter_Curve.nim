##  Created on: 1997-04-23
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

discard "forward decl of Adaptor3d_Curve"
discard "forward decl of VrmlConverter_Drawer"
type
  VrmlConverterCurve* {.importcpp: "VrmlConverter_Curve",
                       header: "VrmlConverter_Curve.hxx", bycopy.} = object ## ! adds to the OStream the drawing of the curve aCurve.
                                                                       ## ! The aspect is defined by
                                                                       ## LineAspect in aDrawer.


proc add*(aCurve: Adaptor3dCurve; aDrawer: Handle[VrmlConverterDrawer];
         anOStream: var StandardOStream) {.importcpp: "VrmlConverter_Curve::Add(@)",
                                        header: "VrmlConverter_Curve.hxx".}
proc add*(aCurve: Adaptor3dCurve; u1: cfloat; u2: cfloat;
         aDrawer: Handle[VrmlConverterDrawer]; anOStream: var StandardOStream) {.
    importcpp: "VrmlConverter_Curve::Add(@)", header: "VrmlConverter_Curve.hxx".}
proc add*(aCurve: Adaptor3dCurve; u1: cfloat; u2: cfloat;
         anOStream: var StandardOStream; aNbPoints: cint) {.
    importcpp: "VrmlConverter_Curve::Add(@)", header: "VrmlConverter_Curve.hxx".}

























