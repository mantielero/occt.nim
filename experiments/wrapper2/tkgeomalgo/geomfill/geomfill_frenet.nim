##  Created on: 1997-12-19
##  Created by: Philippe MANGIN
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_Frenet"
type
  HandleGeomFillFrenet* = Handle[GeomFillFrenet]

## ! Defined Frenet Trihedron  Law

type
  GeomFillFrenet* {.importcpp: "GeomFill_Frenet", header: "GeomFill_Frenet.hxx",
                   bycopy.} = object of GeomFillTrihedronLaw


proc newGeomFillFrenet*(): GeomFillFrenet {.cdecl, constructor,
    importcpp: "GeomFill_Frenet(@)", dynlib: tkgeomalgo.}
proc copy*(this: GeomFillFrenet): Handle[GeomFillTrihedronLaw] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkgeomalgo.}
proc init*(this: var GeomFillFrenet) {.cdecl, importcpp: "Init", dynlib: tkgeomalgo.}
proc setCurve*(this: var GeomFillFrenet; c: Handle[Adaptor3dHCurve]) {.cdecl,
    importcpp: "SetCurve", dynlib: tkgeomalgo.}
proc d0*(this: var GeomFillFrenet; param: cfloat; tangent: var Vec; normal: var Vec;
        biNormal: var Vec): bool {.cdecl, importcpp: "D0", dynlib: tkgeomalgo.}
proc d1*(this: var GeomFillFrenet; param: cfloat; tangent: var Vec; dTangent: var Vec;
        normal: var Vec; dNormal: var Vec; biNormal: var Vec; dBiNormal: var Vec): bool {.
    cdecl, importcpp: "D1", dynlib: tkgeomalgo.}
proc d2*(this: var GeomFillFrenet; param: cfloat; tangent: var Vec; dTangent: var Vec;
        d2Tangent: var Vec; normal: var Vec; dNormal: var Vec; d2Normal: var Vec;
        biNormal: var Vec; dBiNormal: var Vec; d2BiNormal: var Vec): bool {.cdecl,
    importcpp: "D2", dynlib: tkgeomalgo.}
proc nbIntervals*(this: GeomFillFrenet; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", dynlib: tkgeomalgo.}
proc intervals*(this: GeomFillFrenet; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", dynlib: tkgeomalgo.}
proc getAverageLaw*(this: var GeomFillFrenet; aTangent: var Vec; aNormal: var Vec;
                   aBiNormal: var Vec) {.cdecl, importcpp: "GetAverageLaw",
                                      dynlib: tkgeomalgo.}
proc isConstant*(this: GeomFillFrenet): bool {.noSideEffect, cdecl,
    importcpp: "IsConstant", dynlib: tkgeomalgo.}
proc isOnlyBy3dCurve*(this: GeomFillFrenet): bool {.noSideEffect, cdecl,
    importcpp: "IsOnlyBy3dCurve", dynlib: tkgeomalgo.}