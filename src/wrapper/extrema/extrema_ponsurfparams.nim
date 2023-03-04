import extrema_types

##  Created on: 2012-12-06
##  Created by: Sergey KHROMOV
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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

discard "forward decl of gp_Pnt"


proc newExtrema_POnSurfParams*(): Extrema_POnSurfParams {.cdecl, constructor,
    importcpp: "Extrema_POnSurfParams(@)", header: "Extrema_POnSurfParams.hxx".}
proc newExtrema_POnSurfParams*(theU: cfloat; theV: cfloat; thePnt: gp_Pnt): Extrema_POnSurfParams {.
    cdecl, constructor, importcpp: "Extrema_POnSurfParams(@)",
    header: "Extrema_POnSurfParams.hxx".}
proc SetSqrDistance*(this: var Extrema_POnSurfParams; theSqrDistance: cfloat) {.cdecl,
    importcpp: "SetSqrDistance", header: "Extrema_POnSurfParams.hxx".}
proc GetSqrDistance*(this: Extrema_POnSurfParams): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSqrDistance", header: "Extrema_POnSurfParams.hxx".}
proc SetElementType*(this: var Extrema_POnSurfParams;
                    theElementType: Extrema_ElementType) {.cdecl,
    importcpp: "SetElementType", header: "Extrema_POnSurfParams.hxx".}
proc GetElementType*(this: Extrema_POnSurfParams): Extrema_ElementType {.
    noSideEffect, cdecl, importcpp: "GetElementType",
    header: "Extrema_POnSurfParams.hxx".}
proc SetIndices*(this: var Extrema_POnSurfParams; theIndexU: cint; theIndexV: cint) {.
    cdecl, importcpp: "SetIndices", header: "Extrema_POnSurfParams.hxx".}
proc GetIndices*(this: Extrema_POnSurfParams; theIndexU: var cint; theIndexV: var cint) {.
    noSideEffect, cdecl, importcpp: "GetIndices",
    header: "Extrema_POnSurfParams.hxx".}