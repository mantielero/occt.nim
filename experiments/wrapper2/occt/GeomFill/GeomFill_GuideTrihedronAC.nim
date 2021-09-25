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

discard "forward decl of Approx_CurvlinFunc"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_GuideTrihedronAC"
discard "forward decl of GeomFill_GuideTrihedronAC"
type
  HandleGeomFillGuideTrihedronAC* = Handle[GeomFillGuideTrihedronAC]

## ! Trihedron in  the  case of a sweeping along a guide  curve.
## ! defined by curviline  absciss

type
  GeomFillGuideTrihedronAC* {.importcpp: "GeomFill_GuideTrihedronAC",
                             header: "GeomFill_GuideTrihedronAC.hxx", bycopy.} = object of GeomFillTrihedronWithGuide


proc constructGeomFillGuideTrihedronAC*(guide: Handle[Adaptor3dHCurve]): GeomFillGuideTrihedronAC {.
    constructor, importcpp: "GeomFill_GuideTrihedronAC(@)",
    header: "GeomFill_GuideTrihedronAC.hxx".}
proc setCurve*(this: var GeomFillGuideTrihedronAC; c: Handle[Adaptor3dHCurve]) {.
    importcpp: "SetCurve", header: "GeomFill_GuideTrihedronAC.hxx".}
proc copy*(this: GeomFillGuideTrihedronAC): Handle[GeomFillTrihedronLaw] {.
    noSideEffect, importcpp: "Copy", header: "GeomFill_GuideTrihedronAC.hxx".}
proc guide*(this: GeomFillGuideTrihedronAC): Handle[Adaptor3dHCurve] {.noSideEffect,
    importcpp: "Guide", header: "GeomFill_GuideTrihedronAC.hxx".}
proc d0*(this: var GeomFillGuideTrihedronAC; param: float; tangent: var Vec;
        normal: var Vec; biNormal: var Vec): bool {.importcpp: "D0",
    header: "GeomFill_GuideTrihedronAC.hxx".}
proc d1*(this: var GeomFillGuideTrihedronAC; param: float; tangent: var Vec;
        dTangent: var Vec; normal: var Vec; dNormal: var Vec; biNormal: var Vec;
        dBiNormal: var Vec): bool {.importcpp: "D1",
                                header: "GeomFill_GuideTrihedronAC.hxx".}
proc d2*(this: var GeomFillGuideTrihedronAC; param: float; tangent: var Vec;
        dTangent: var Vec; d2Tangent: var Vec; normal: var Vec; dNormal: var Vec;
        d2Normal: var Vec; biNormal: var Vec; dBiNormal: var Vec; d2BiNormal: var Vec): bool {.
    importcpp: "D2", header: "GeomFill_GuideTrihedronAC.hxx".}
proc nbIntervals*(this: GeomFillGuideTrihedronAC; s: GeomAbsShape): int {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_GuideTrihedronAC.hxx".}
proc intervals*(this: GeomFillGuideTrihedronAC; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "GeomFill_GuideTrihedronAC.hxx".}
proc setInterval*(this: var GeomFillGuideTrihedronAC; first: float; last: float) {.
    importcpp: "SetInterval", header: "GeomFill_GuideTrihedronAC.hxx".}
proc getAverageLaw*(this: var GeomFillGuideTrihedronAC; aTangent: var Vec;
                   aNormal: var Vec; aBiNormal: var Vec) {.importcpp: "GetAverageLaw",
    header: "GeomFill_GuideTrihedronAC.hxx".}
proc isConstant*(this: GeomFillGuideTrihedronAC): bool {.noSideEffect,
    importcpp: "IsConstant", header: "GeomFill_GuideTrihedronAC.hxx".}
proc isOnlyBy3dCurve*(this: GeomFillGuideTrihedronAC): bool {.noSideEffect,
    importcpp: "IsOnlyBy3dCurve", header: "GeomFill_GuideTrihedronAC.hxx".}
proc origine*(this: var GeomFillGuideTrihedronAC; orACR1: float; orACR2: float) {.
    importcpp: "Origine", header: "GeomFill_GuideTrihedronAC.hxx".}
type
  GeomFillGuideTrihedronACbaseType* = GeomFillTrihedronWithGuide

proc getTypeName*(): cstring {.importcpp: "GeomFill_GuideTrihedronAC::get_type_name(@)",
                            header: "GeomFill_GuideTrihedronAC.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_GuideTrihedronAC::get_type_descriptor(@)",
    header: "GeomFill_GuideTrihedronAC.hxx".}
proc dynamicType*(this: GeomFillGuideTrihedronAC): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomFill_GuideTrihedronAC.hxx".}
