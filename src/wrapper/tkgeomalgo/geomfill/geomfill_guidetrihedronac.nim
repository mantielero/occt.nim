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
type
  HandleGeomFillGuideTrihedronAC* = Handle[GeomFillGuideTrihedronAC]

## ! Trihedron in  the  case of a sweeping along a guide  curve.
## ! defined by curviline  absciss

type
  GeomFillGuideTrihedronAC* {.importcpp: "GeomFill_GuideTrihedronAC",
                             header: "GeomFill_GuideTrihedronAC.hxx", bycopy.} = object of GeomFillTrihedronWithGuide


proc newGeomFillGuideTrihedronAC*(guide: Handle[Adaptor3dHCurve]): GeomFillGuideTrihedronAC {.
    cdecl, constructor, importcpp: "GeomFill_GuideTrihedronAC(@)",
    dynlib: tkgeomalgo.}
proc setCurve*(this: var GeomFillGuideTrihedronAC; c: Handle[Adaptor3dHCurve]) {.
    cdecl, importcpp: "SetCurve", dynlib: tkgeomalgo.}
proc copy*(this: GeomFillGuideTrihedronAC): Handle[GeomFillTrihedronLaw] {.
    noSideEffect, cdecl, importcpp: "Copy", dynlib: tkgeomalgo.}
proc guide*(this: GeomFillGuideTrihedronAC): Handle[Adaptor3dHCurve] {.noSideEffect,
    cdecl, importcpp: "Guide", dynlib: tkgeomalgo.}
proc d0*(this: var GeomFillGuideTrihedronAC; param: cfloat; tangent: var Vec;
        normal: var Vec; biNormal: var Vec): bool {.cdecl, importcpp: "D0",
    dynlib: tkgeomalgo.}
proc d1*(this: var GeomFillGuideTrihedronAC; param: cfloat; tangent: var Vec;
        dTangent: var Vec; normal: var Vec; dNormal: var Vec; biNormal: var Vec;
        dBiNormal: var Vec): bool {.cdecl, importcpp: "D1", dynlib: tkgeomalgo.}
proc d2*(this: var GeomFillGuideTrihedronAC; param: cfloat; tangent: var Vec;
        dTangent: var Vec; d2Tangent: var Vec; normal: var Vec; dNormal: var Vec;
        d2Normal: var Vec; biNormal: var Vec; dBiNormal: var Vec; d2BiNormal: var Vec): bool {.
    cdecl, importcpp: "D2", dynlib: tkgeomalgo.}
proc nbIntervals*(this: GeomFillGuideTrihedronAC; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbIntervals", dynlib: tkgeomalgo.}
proc intervals*(this: GeomFillGuideTrihedronAC; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                dynlib: tkgeomalgo.}
proc setInterval*(this: var GeomFillGuideTrihedronAC; first: cfloat; last: cfloat) {.
    cdecl, importcpp: "SetInterval", dynlib: tkgeomalgo.}
proc getAverageLaw*(this: var GeomFillGuideTrihedronAC; aTangent: var Vec;
                   aNormal: var Vec; aBiNormal: var Vec) {.cdecl,
    importcpp: "GetAverageLaw", dynlib: tkgeomalgo.}
proc isConstant*(this: GeomFillGuideTrihedronAC): bool {.noSideEffect, cdecl,
    importcpp: "IsConstant", dynlib: tkgeomalgo.}
proc isOnlyBy3dCurve*(this: GeomFillGuideTrihedronAC): bool {.noSideEffect, cdecl,
    importcpp: "IsOnlyBy3dCurve", dynlib: tkgeomalgo.}
proc origine*(this: var GeomFillGuideTrihedronAC; orACR1: cfloat; orACR2: cfloat) {.
    cdecl, importcpp: "Origine", dynlib: tkgeomalgo.}