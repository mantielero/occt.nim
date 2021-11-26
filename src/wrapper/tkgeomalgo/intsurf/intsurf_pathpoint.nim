##  Created on: 1992-11-10
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of StdFail_UndefinedDerivative"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir2d"
type
  IntSurfPathPoint* {.importcpp: "IntSurf_PathPoint",
                     header: "IntSurf_PathPoint.hxx", bycopy.} = object


proc newIntSurfPathPoint*(): IntSurfPathPoint {.cdecl, constructor,
    importcpp: "IntSurf_PathPoint(@)", dynlib: tkgeomalgo.}
proc newIntSurfPathPoint*(p: Pnt; u: cfloat; v: cfloat): IntSurfPathPoint {.cdecl,
    constructor, importcpp: "IntSurf_PathPoint(@)", dynlib: tkgeomalgo.}
proc setValue*(this: var IntSurfPathPoint; p: Pnt; u: cfloat; v: cfloat) {.cdecl,
    importcpp: "SetValue", dynlib: tkgeomalgo.}
proc addUV*(this: var IntSurfPathPoint; u: cfloat; v: cfloat) {.cdecl,
    importcpp: "AddUV", dynlib: tkgeomalgo.}
proc setDirections*(this: var IntSurfPathPoint; v: Vec; d: Dir2d) {.cdecl,
    importcpp: "SetDirections", dynlib: tkgeomalgo.}
proc setTangency*(this: var IntSurfPathPoint; tang: bool) {.cdecl,
    importcpp: "SetTangency", dynlib: tkgeomalgo.}
proc setPassing*(this: var IntSurfPathPoint; pass: bool) {.cdecl,
    importcpp: "SetPassing", dynlib: tkgeomalgo.}
proc value*(this: IntSurfPathPoint): Pnt {.noSideEffect, cdecl, importcpp: "Value",
                                       dynlib: tkgeomalgo.}
proc value2d*(this: IntSurfPathPoint; u: var cfloat; v: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Value2d", dynlib: tkgeomalgo.}
proc isPassingPnt*(this: IntSurfPathPoint): bool {.noSideEffect, cdecl,
    importcpp: "IsPassingPnt", dynlib: tkgeomalgo.}
proc isTangent*(this: IntSurfPathPoint): bool {.noSideEffect, cdecl,
    importcpp: "IsTangent", dynlib: tkgeomalgo.}
proc direction3d*(this: IntSurfPathPoint): Vec {.noSideEffect, cdecl,
    importcpp: "Direction3d", dynlib: tkgeomalgo.}
proc direction2d*(this: IntSurfPathPoint): Dir2d {.noSideEffect, cdecl,
    importcpp: "Direction2d", dynlib: tkgeomalgo.}
proc multiplicity*(this: IntSurfPathPoint): cint {.noSideEffect, cdecl,
    importcpp: "Multiplicity", dynlib: tkgeomalgo.}
proc parameters*(this: IntSurfPathPoint; index: cint; u: var cfloat; v: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Parameters", dynlib: tkgeomalgo.}