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
discard "forward decl of GeomFill_GuideTrihedronPlan"
type
  HandleC1C1* = Handle[GeomFillGuideTrihedronPlan]

## ! Trihedron in  the case of sweeping along a guide curve defined
## ! by the orthogonal  plan on  the trajectory

type
  GeomFillGuideTrihedronPlan* {.importcpp: "GeomFill_GuideTrihedronPlan",
                               header: "GeomFill_GuideTrihedronPlan.hxx", bycopy.} = object of GeomFillTrihedronWithGuide


proc constructGeomFillGuideTrihedronPlan*(theGuide: Handle[Adaptor3dHCurve]): GeomFillGuideTrihedronPlan {.
    constructor, importcpp: "GeomFill_GuideTrihedronPlan(@)",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc setCurve*(this: var GeomFillGuideTrihedronPlan;
              thePath: Handle[Adaptor3dHCurve]) {.importcpp: "SetCurve",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc copy*(this: GeomFillGuideTrihedronPlan): Handle[GeomFillTrihedronLaw] {.
    noSideEffect, importcpp: "Copy", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc errorStatus*(this: GeomFillGuideTrihedronPlan): GeomFillPipeError {.
    noSideEffect, importcpp: "ErrorStatus",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc guide*(this: GeomFillGuideTrihedronPlan): Handle[Adaptor3dHCurve] {.
    noSideEffect, importcpp: "Guide", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc d0*(this: var GeomFillGuideTrihedronPlan; param: StandardReal; tangent: var Vec;
        normal: var Vec; biNormal: var Vec): StandardBoolean {.importcpp: "D0",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc d1*(this: var GeomFillGuideTrihedronPlan; param: StandardReal; tangent: var Vec;
        dTangent: var Vec; normal: var Vec; dNormal: var Vec; biNormal: var Vec;
        dBiNormal: var Vec): StandardBoolean {.importcpp: "D1",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc d2*(this: var GeomFillGuideTrihedronPlan; param: StandardReal; tangent: var Vec;
        dTangent: var Vec; d2Tangent: var Vec; normal: var Vec; dNormal: var Vec;
        d2Normal: var Vec; biNormal: var Vec; dBiNormal: var Vec; d2BiNormal: var Vec): StandardBoolean {.
    importcpp: "D2", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc setInterval*(this: var GeomFillGuideTrihedronPlan; first: StandardReal;
                 last: StandardReal) {.importcpp: "SetInterval",
                                     header: "GeomFill_GuideTrihedronPlan.hxx".}
proc nbIntervals*(this: GeomFillGuideTrihedronPlan; s: GeomAbsShape): int {.
    noSideEffect, importcpp: "NbIntervals",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc intervals*(this: GeomFillGuideTrihedronPlan; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "GeomFill_GuideTrihedronPlan.hxx".}
proc getAverageLaw*(this: var GeomFillGuideTrihedronPlan; aTangent: var Vec;
                   aNormal: var Vec; aBiNormal: var Vec) {.importcpp: "GetAverageLaw",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc isConstant*(this: GeomFillGuideTrihedronPlan): StandardBoolean {.noSideEffect,
    importcpp: "IsConstant", header: "GeomFill_GuideTrihedronPlan.hxx".}
proc isOnlyBy3dCurve*(this: GeomFillGuideTrihedronPlan): StandardBoolean {.
    noSideEffect, importcpp: "IsOnlyBy3dCurve",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc origine*(this: var GeomFillGuideTrihedronPlan; orACR1: StandardReal;
             orACR2: StandardReal) {.importcpp: "Origine",
                                   header: "GeomFill_GuideTrihedronPlan.hxx".}
type
  GeomFillGuideTrihedronPlanbaseType* = GeomFillTrihedronWithGuide

proc getTypeName*(): cstring {.importcpp: "GeomFill_GuideTrihedronPlan::get_type_name(@)",
                            header: "GeomFill_GuideTrihedronPlan.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_GuideTrihedronPlan::get_type_descriptor(@)",
    header: "GeomFill_GuideTrihedronPlan.hxx".}
proc dynamicType*(this: GeomFillGuideTrihedronPlan): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomFill_GuideTrihedronPlan.hxx".}