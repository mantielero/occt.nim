##  Created on: 1993-11-29
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  ChFiDS_CommonPoint* {.importcpp: "ChFiDS_CommonPoint",
                       header: "ChFiDS_CommonPoint.hxx", bycopy.} = object ## ! Empty
                                                                      ## constructor.


proc constructChFiDS_CommonPoint*(): ChFiDS_CommonPoint {.constructor,
    importcpp: "ChFiDS_CommonPoint(@)", header: "ChFiDS_CommonPoint.hxx".}
proc reset*(this: var ChFiDS_CommonPoint) {.importcpp: "Reset",
                                        header: "ChFiDS_CommonPoint.hxx".}
proc setVertex*(this: var ChFiDS_CommonPoint; theVertex: TopoDS_Vertex) {.
    importcpp: "SetVertex", header: "ChFiDS_CommonPoint.hxx".}
proc setArc*(this: var ChFiDS_CommonPoint; tol: cfloat; a: TopoDS_Edge; param: cfloat;
            tArc: TopAbsOrientation) {.importcpp: "SetArc",
                                     header: "ChFiDS_CommonPoint.hxx".}
proc setParameter*(this: var ChFiDS_CommonPoint; param: cfloat) {.
    importcpp: "SetParameter", header: "ChFiDS_CommonPoint.hxx".}
proc setPoint*(this: var ChFiDS_CommonPoint; thePoint: Pnt) {.importcpp: "SetPoint",
    header: "ChFiDS_CommonPoint.hxx".}
proc setVector*(this: var ChFiDS_CommonPoint; theVector: Vec) {.
    importcpp: "SetVector", header: "ChFiDS_CommonPoint.hxx".}
proc setTolerance*(this: var ChFiDS_CommonPoint; tol: cfloat) {.
    importcpp: "SetTolerance", header: "ChFiDS_CommonPoint.hxx".}
proc tolerance*(this: ChFiDS_CommonPoint): cfloat {.noSideEffect,
    importcpp: "Tolerance", header: "ChFiDS_CommonPoint.hxx".}
proc isVertex*(this: ChFiDS_CommonPoint): bool {.noSideEffect, importcpp: "IsVertex",
    header: "ChFiDS_CommonPoint.hxx".}
proc vertex*(this: ChFiDS_CommonPoint): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "ChFiDS_CommonPoint.hxx".}
proc isOnArc*(this: ChFiDS_CommonPoint): bool {.noSideEffect, importcpp: "IsOnArc",
    header: "ChFiDS_CommonPoint.hxx".}
proc arc*(this: ChFiDS_CommonPoint): TopoDS_Edge {.noSideEffect, importcpp: "Arc",
    header: "ChFiDS_CommonPoint.hxx".}
proc transitionOnArc*(this: ChFiDS_CommonPoint): TopAbsOrientation {.noSideEffect,
    importcpp: "TransitionOnArc", header: "ChFiDS_CommonPoint.hxx".}
proc parameterOnArc*(this: ChFiDS_CommonPoint): cfloat {.noSideEffect,
    importcpp: "ParameterOnArc", header: "ChFiDS_CommonPoint.hxx".}
proc parameter*(this: ChFiDS_CommonPoint): cfloat {.noSideEffect,
    importcpp: "Parameter", header: "ChFiDS_CommonPoint.hxx".}
proc point*(this: ChFiDS_CommonPoint): Pnt {.noSideEffect, importcpp: "Point",
    header: "ChFiDS_CommonPoint.hxx".}
proc hasVector*(this: ChFiDS_CommonPoint): bool {.noSideEffect,
    importcpp: "HasVector", header: "ChFiDS_CommonPoint.hxx".}
proc vector*(this: ChFiDS_CommonPoint): Vec {.noSideEffect, importcpp: "Vector",
    header: "ChFiDS_CommonPoint.hxx".}

























