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


proc constructIntSurfPathPoint*(): IntSurfPathPoint {.constructor,
    importcpp: "IntSurf_PathPoint(@)", header: "IntSurf_PathPoint.hxx".}
proc constructIntSurfPathPoint*(p: Pnt; u: cfloat; v: cfloat): IntSurfPathPoint {.
    constructor, importcpp: "IntSurf_PathPoint(@)", header: "IntSurf_PathPoint.hxx".}
proc setValue*(this: var IntSurfPathPoint; p: Pnt; u: cfloat; v: cfloat) {.
    importcpp: "SetValue", header: "IntSurf_PathPoint.hxx".}
proc addUV*(this: var IntSurfPathPoint; u: cfloat; v: cfloat) {.importcpp: "AddUV",
    header: "IntSurf_PathPoint.hxx".}
proc setDirections*(this: var IntSurfPathPoint; v: Vec; d: Dir2d) {.
    importcpp: "SetDirections", header: "IntSurf_PathPoint.hxx".}
proc setTangency*(this: var IntSurfPathPoint; tang: bool) {.importcpp: "SetTangency",
    header: "IntSurf_PathPoint.hxx".}
proc setPassing*(this: var IntSurfPathPoint; pass: bool) {.importcpp: "SetPassing",
    header: "IntSurf_PathPoint.hxx".}
proc value*(this: IntSurfPathPoint): Pnt {.noSideEffect, importcpp: "Value",
                                       header: "IntSurf_PathPoint.hxx".}
proc value2d*(this: IntSurfPathPoint; u: var cfloat; v: var cfloat) {.noSideEffect,
    importcpp: "Value2d", header: "IntSurf_PathPoint.hxx".}
proc isPassingPnt*(this: IntSurfPathPoint): bool {.noSideEffect,
    importcpp: "IsPassingPnt", header: "IntSurf_PathPoint.hxx".}
proc isTangent*(this: IntSurfPathPoint): bool {.noSideEffect, importcpp: "IsTangent",
    header: "IntSurf_PathPoint.hxx".}
proc direction3d*(this: IntSurfPathPoint): Vec {.noSideEffect,
    importcpp: "Direction3d", header: "IntSurf_PathPoint.hxx".}
proc direction2d*(this: IntSurfPathPoint): Dir2d {.noSideEffect,
    importcpp: "Direction2d", header: "IntSurf_PathPoint.hxx".}
proc multiplicity*(this: IntSurfPathPoint): cint {.noSideEffect,
    importcpp: "Multiplicity", header: "IntSurf_PathPoint.hxx".}
proc parameters*(this: IntSurfPathPoint; index: cint; u: var cfloat; v: var cfloat) {.
    noSideEffect, importcpp: "Parameters", header: "IntSurf_PathPoint.hxx".}

























