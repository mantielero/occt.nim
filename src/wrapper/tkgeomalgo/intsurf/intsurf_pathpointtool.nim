##  Created on: 1992-09-25
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_UndefinedDerivative"
discard "forward decl of IntSurf_PathPoint"
type
  IntSurfPathPointTool* {.importcpp: "IntSurf_PathPointTool",
                         header: "IntSurf_PathPointTool.hxx", bycopy.} = object ## !
                                                                           ## Returns the 3d
                                                                           ## coordinates of the
                                                                           ## starting
                                                                           ## point.


proc value3d*(pStart: IntSurfPathPoint): PntObj {.cdecl,
    importcpp: "IntSurf_PathPointTool::Value3d(@)", header: "IntSurf_PathPointTool.hxx".}
proc value2d*(pStart: IntSurfPathPoint; u: var cfloat; v: var cfloat) {.cdecl,
    importcpp: "IntSurf_PathPointTool::Value2d(@)", header: "IntSurf_PathPointTool.hxx".}
proc isPassingPnt*(pStart: IntSurfPathPoint): bool {.cdecl,
    importcpp: "IntSurf_PathPointTool::IsPassingPnt(@)", header: "IntSurf_PathPointTool.hxx".}
proc isTangent*(pStart: IntSurfPathPoint): bool {.cdecl,
    importcpp: "IntSurf_PathPointTool::IsTangent(@)", header: "IntSurf_PathPointTool.hxx".}
proc direction3d*(pStart: IntSurfPathPoint): VecObj {.cdecl,
    importcpp: "IntSurf_PathPointTool::Direction3d(@)", header: "IntSurf_PathPointTool.hxx".}
proc direction2d*(pStart: IntSurfPathPoint): Dir2dObj {.cdecl,
    importcpp: "IntSurf_PathPointTool::Direction2d(@)", header: "IntSurf_PathPointTool.hxx".}
proc multiplicity*(pStart: IntSurfPathPoint): cint {.cdecl,
    importcpp: "IntSurf_PathPointTool::Multiplicity(@)", header: "IntSurf_PathPointTool.hxx".}
proc parameters*(pStart: IntSurfPathPoint; mult: cint; u: var cfloat; v: var cfloat) {.
    cdecl, importcpp: "IntSurf_PathPointTool::Parameters(@)", header: "IntSurf_PathPointTool.hxx".}