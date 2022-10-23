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
    constructor, importcpp: "GeomFill_DiscreteTrihedron(@)", header: "GeomFill_DiscreteTrihedron.hxx".}
proc copy*(this: GeomFillDiscreteTrihedron): Handle[GeomFillTrihedronLaw] {.
    noSideEffect, cdecl, importcpp: "Copy", header: "GeomFill_DiscreteTrihedron.hxx".}
proc init*(this: var GeomFillDiscreteTrihedron) {.cdecl, importcpp: "Init",
    header: "GeomFill_DiscreteTrihedron.hxx".}
proc setCurve*(this: var GeomFillDiscreteTrihedron; c: Handle[Adaptor3dHCurve]) {.
    cdecl, importcpp: "SetCurve", header: "GeomFill_DiscreteTrihedron.hxx".}
proc d0*(this: var GeomFillDiscreteTrihedron; param: cfloat; tangent: var VecObj;
        normal: var VecObj; biNormal: var VecObj): bool {.cdecl, importcpp: "D0",
    header: "GeomFill_DiscreteTrihedron.hxx".}
proc d1*(this: var GeomFillDiscreteTrihedron; param: cfloat; tangent: var VecObj;
        dTangent: var VecObj; normal: var VecObj; dNormal: var VecObj; biNormal: var VecObj;
        dBiNormal: var VecObj): bool {.cdecl, importcpp: "D1", header: "GeomFill_DiscreteTrihedron.hxx".}
proc d2*(this: var GeomFillDiscreteTrihedron; param: cfloat; tangent: var VecObj;
        dTangent: var VecObj; d2Tangent: var VecObj; normal: var VecObj; dNormal: var VecObj;
        d2Normal: var VecObj; biNormal: var VecObj; dBiNormal: var VecObj; d2BiNormal: var VecObj): bool {.
    cdecl, importcpp: "D2", header: "GeomFill_DiscreteTrihedron.hxx".}
proc nbIntervals*(this: GeomFillDiscreteTrihedron; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbIntervals", header: "GeomFill_DiscreteTrihedron.hxx".}
proc intervals*(this: GeomFillDiscreteTrihedron; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "GeomFill_DiscreteTrihedron.hxx".}
proc getAverageLaw*(this: var GeomFillDiscreteTrihedron; aTangent: var VecObj;
                   aNormal: var VecObj; aBiNormal: var VecObj) {.cdecl,
    importcpp: "GetAverageLaw", header: "GeomFill_DiscreteTrihedron.hxx".}
proc isConstant*(this: GeomFillDiscreteTrihedron): bool {.noSideEffect, cdecl,
    importcpp: "IsConstant", header: "GeomFill_DiscreteTrihedron.hxx".}
proc isOnlyBy3dCurve*(this: GeomFillDiscreteTrihedron): bool {.noSideEffect, cdecl,
    importcpp: "IsOnlyBy3dCurve", header: "GeomFill_DiscreteTrihedron.hxx".}