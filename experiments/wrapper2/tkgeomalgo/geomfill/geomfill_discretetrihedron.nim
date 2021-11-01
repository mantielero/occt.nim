##  Created on: 2013-02-05
##  Created by: Julia GERASIMOVA
##  Copyright (c) 2001-2013 OPEN CASCADE SAS
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

discard "forward decl of GeomFill_Frenet"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_DiscreteTrihedron"
type
  HandleGeomFillDiscreteTrihedron* = Handle[GeomFillDiscreteTrihedron]

## ! Defined Discrete Trihedron Law.
## ! The requirement for path curve is only G1.
## ! The result is C0-continuous surface
## ! that can be later approximated to C1.

type
  GeomFillDiscreteTrihedron* {.importcpp: "GeomFill_DiscreteTrihedron",
                              header: "GeomFill_DiscreteTrihedron.hxx", bycopy.} = object of GeomFillTrihedronLaw


proc newGeomFillDiscreteTrihedron*(): GeomFillDiscreteTrihedron {.cdecl,
    constructor, importcpp: "GeomFill_DiscreteTrihedron(@)", dynlib: tkgeomalgo.}
proc copy*(this: GeomFillDiscreteTrihedron): Handle[GeomFillTrihedronLaw] {.
    noSideEffect, cdecl, importcpp: "Copy", dynlib: tkgeomalgo.}
proc init*(this: var GeomFillDiscreteTrihedron) {.cdecl, importcpp: "Init",
    dynlib: tkgeomalgo.}
proc setCurve*(this: var GeomFillDiscreteTrihedron; c: Handle[Adaptor3dHCurve]) {.
    cdecl, importcpp: "SetCurve", dynlib: tkgeomalgo.}
proc d0*(this: var GeomFillDiscreteTrihedron; param: cfloat; tangent: var Vec;
        normal: var Vec; biNormal: var Vec): bool {.cdecl, importcpp: "D0",
    dynlib: tkgeomalgo.}
proc d1*(this: var GeomFillDiscreteTrihedron; param: cfloat; tangent: var Vec;
        dTangent: var Vec; normal: var Vec; dNormal: var Vec; biNormal: var Vec;
        dBiNormal: var Vec): bool {.cdecl, importcpp: "D1", dynlib: tkgeomalgo.}
proc d2*(this: var GeomFillDiscreteTrihedron; param: cfloat; tangent: var Vec;
        dTangent: var Vec; d2Tangent: var Vec; normal: var Vec; dNormal: var Vec;
        d2Normal: var Vec; biNormal: var Vec; dBiNormal: var Vec; d2BiNormal: var Vec): bool {.
    cdecl, importcpp: "D2", dynlib: tkgeomalgo.}
proc nbIntervals*(this: GeomFillDiscreteTrihedron; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbIntervals", dynlib: tkgeomalgo.}
proc intervals*(this: GeomFillDiscreteTrihedron; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                dynlib: tkgeomalgo.}
proc getAverageLaw*(this: var GeomFillDiscreteTrihedron; aTangent: var Vec;
                   aNormal: var Vec; aBiNormal: var Vec) {.cdecl,
    importcpp: "GetAverageLaw", dynlib: tkgeomalgo.}
proc isConstant*(this: GeomFillDiscreteTrihedron): bool {.noSideEffect, cdecl,
    importcpp: "IsConstant", dynlib: tkgeomalgo.}
proc isOnlyBy3dCurve*(this: GeomFillDiscreteTrihedron): bool {.noSideEffect, cdecl,
    importcpp: "IsOnlyBy3dCurve", dynlib: tkgeomalgo.}