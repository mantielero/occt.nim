##  Created on: 1998-06-23
##  Created by: Stephanie HUMEAU
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of GeomFill_Frenet"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_GuideTrihedronPlan"
type
  HandleGeomFillGuideTrihedronPlan* = Handle[GeomFillGuideTrihedronPlan]

## ! Trihedron in  the case of sweeping along a guide curve defined
## ! by the orthogonal  plan on  the trajectory

type
  GeomFillGuideTrihedronPlan* {.importcpp: "GeomFill_GuideTrihedronPlan",
                               header: "GeomFill_GuideTrihedronPlan.hxx", bycopy.} = object of GeomFillTrihedronWithGuide


proc newGeomFillGuideTrihedronPlan*(theGuide: Handle[Adaptor3dHCurve]): GeomFillGuideTrihedronPlan {.
    cdecl, constructor, importcpp: "GeomFill_GuideTrihedronPlan(@)",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc setCurve*(this: var GeomFillGuideTrihedronPlan;
              thePath: Handle[Adaptor3dHCurve]) {.cdecl, importcpp: "SetCurve",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc copy*(this: GeomFillGuideTrihedronPlan): Handle[GeomFillTrihedronLaw] {.
    noSideEffect, cdecl, importcpp: "Copy", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc errorStatus*(this: GeomFillGuideTrihedronPlan): GeomFillPipeError {.
    noSideEffect, cdecl, importcpp: "ErrorStatus", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc guide*(this: GeomFillGuideTrihedronPlan): Handle[Adaptor3dHCurve] {.
    noSideEffect, cdecl, importcpp: "Guide", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc d0*(this: var GeomFillGuideTrihedronPlan; param: cfloat; tangent: var Vec;
        normal: var Vec; biNormal: var Vec): bool {.cdecl, importcpp: "D0",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc d1*(this: var GeomFillGuideTrihedronPlan; param: cfloat; tangent: var Vec;
        dTangent: var Vec; normal: var Vec; dNormal: var Vec; biNormal: var Vec;
        dBiNormal: var Vec): bool {.cdecl, importcpp: "D1", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc d2*(this: var GeomFillGuideTrihedronPlan; param: cfloat; tangent: var Vec;
        dTangent: var Vec; d2Tangent: var Vec; normal: var Vec; dNormal: var Vec;
        d2Normal: var Vec; biNormal: var Vec; dBiNormal: var Vec; d2BiNormal: var Vec): bool {.
    cdecl, importcpp: "D2", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc setInterval*(this: var GeomFillGuideTrihedronPlan; first: cfloat; last: cfloat) {.
    cdecl, importcpp: "SetInterval", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc nbIntervals*(this: GeomFillGuideTrihedronPlan; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbIntervals", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc intervals*(this: GeomFillGuideTrihedronPlan; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "GeomFill_GuideTrihedronPlan.hxx".}
proc getAverageLaw*(this: var GeomFillGuideTrihedronPlan; aTangent: var Vec;
                   aNormal: var Vec; aBiNormal: var Vec) {.cdecl,
    importcpp: "GetAverageLaw", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc isConstant*(this: GeomFillGuideTrihedronPlan): bool {.noSideEffect, cdecl,
    importcpp: "IsConstant", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc isOnlyBy3dCurve*(this: GeomFillGuideTrihedronPlan): bool {.noSideEffect, cdecl,
    importcpp: "IsOnlyBy3dCurve", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc origine*(this: var GeomFillGuideTrihedronPlan; orACR1: cfloat; orACR2: cfloat) {.
    cdecl, importcpp: "Origine", header: "GeomFill_GuideTrihedronPlan.hxx".}