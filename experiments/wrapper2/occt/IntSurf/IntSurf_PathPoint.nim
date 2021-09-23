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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../Standard/Standard_Boolean,
  ../gp/gp_Vec, ../gp/gp_Dir2d, ../TColgp/TColgp_HSequenceOfXY,
  ../Standard/Standard_Real, ../Standard/Standard_Integer

discard "forward decl of StdFail_UndefinedDerivative"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir2d"
type
  IntSurf_PathPoint* {.importcpp: "IntSurf_PathPoint",
                      header: "IntSurf_PathPoint.hxx", bycopy.} = object


proc constructIntSurf_PathPoint*(): IntSurf_PathPoint {.constructor,
    importcpp: "IntSurf_PathPoint(@)", header: "IntSurf_PathPoint.hxx".}
proc constructIntSurf_PathPoint*(P: gp_Pnt; U: Standard_Real; V: Standard_Real): IntSurf_PathPoint {.
    constructor, importcpp: "IntSurf_PathPoint(@)", header: "IntSurf_PathPoint.hxx".}
proc SetValue*(this: var IntSurf_PathPoint; P: gp_Pnt; U: Standard_Real;
              V: Standard_Real) {.importcpp: "SetValue",
                                header: "IntSurf_PathPoint.hxx".}
proc AddUV*(this: var IntSurf_PathPoint; U: Standard_Real; V: Standard_Real) {.
    importcpp: "AddUV", header: "IntSurf_PathPoint.hxx".}
proc SetDirections*(this: var IntSurf_PathPoint; V: gp_Vec; D: gp_Dir2d) {.
    importcpp: "SetDirections", header: "IntSurf_PathPoint.hxx".}
proc SetTangency*(this: var IntSurf_PathPoint; Tang: Standard_Boolean) {.
    importcpp: "SetTangency", header: "IntSurf_PathPoint.hxx".}
proc SetPassing*(this: var IntSurf_PathPoint; Pass: Standard_Boolean) {.
    importcpp: "SetPassing", header: "IntSurf_PathPoint.hxx".}
proc Value*(this: IntSurf_PathPoint): gp_Pnt {.noSideEffect, importcpp: "Value",
    header: "IntSurf_PathPoint.hxx".}
proc Value2d*(this: IntSurf_PathPoint; U: var Standard_Real; V: var Standard_Real) {.
    noSideEffect, importcpp: "Value2d", header: "IntSurf_PathPoint.hxx".}
proc IsPassingPnt*(this: IntSurf_PathPoint): Standard_Boolean {.noSideEffect,
    importcpp: "IsPassingPnt", header: "IntSurf_PathPoint.hxx".}
proc IsTangent*(this: IntSurf_PathPoint): Standard_Boolean {.noSideEffect,
    importcpp: "IsTangent", header: "IntSurf_PathPoint.hxx".}
proc Direction3d*(this: IntSurf_PathPoint): gp_Vec {.noSideEffect,
    importcpp: "Direction3d", header: "IntSurf_PathPoint.hxx".}
proc Direction2d*(this: IntSurf_PathPoint): gp_Dir2d {.noSideEffect,
    importcpp: "Direction2d", header: "IntSurf_PathPoint.hxx".}
proc Multiplicity*(this: IntSurf_PathPoint): Standard_Integer {.noSideEffect,
    importcpp: "Multiplicity", header: "IntSurf_PathPoint.hxx".}
proc Parameters*(this: IntSurf_PathPoint; Index: Standard_Integer;
                U: var Standard_Real; V: var Standard_Real) {.noSideEffect,
    importcpp: "Parameters", header: "IntSurf_PathPoint.hxx".}