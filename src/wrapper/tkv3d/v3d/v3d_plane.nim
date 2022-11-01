import ../../tkernel/standard/standard_types
import ../graphic3d/graphic3d_types
import v3d_types
import ../../tkernel/quantity/[quantity_types, quantity_color]




##  Created by: GG
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2013 OPEN CASCADE SAS
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





proc newV3dPlane*(theA: cfloat = 0.0; theB: cfloat = 0.0; theC: cfloat = 1.0;
                 theD: cfloat = 0.0): V3dPlane {.cdecl, constructor,
    importcpp: "V3d_Plane(@)", header: "V3d_Plane.hxx".}
proc setPlane*(this: var V3dPlane; theA: cfloat; theB: cfloat; theC: cfloat; theD: cfloat) {.
    cdecl, importcpp: "SetPlane", header: "V3d_Plane.hxx".}
proc display*(this: var V3dPlane; theView: Handle[V3dView];
             theColor: QuantityColor = newQuantityColor(quantityNOC_GRAY)) {.cdecl,
    importcpp: "Display", header: "V3d_Plane.hxx".}
proc erase*(this: var V3dPlane) {.cdecl, importcpp: "Erase", header: "V3d_Plane.hxx".}
proc plane*(this: V3dPlane; theA: var cfloat; theB: var cfloat; theC: var cfloat;
           theD: var cfloat) {.noSideEffect, cdecl, importcpp: "Plane", header: "V3d_Plane.hxx".}
proc isDisplayed*(this: V3dPlane): bool {.noSideEffect, cdecl,
                                      importcpp: "IsDisplayed", header: "V3d_Plane.hxx".}
proc clipPlane*(this: V3dPlane): Handle[Graphic3dClipPlane] {.noSideEffect, cdecl,
    importcpp: "ClipPlane", header: "V3d_Plane.hxx".}


