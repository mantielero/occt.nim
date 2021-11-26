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


proc newChFiDS_CommonPoint*(): ChFiDS_CommonPoint {.cdecl, constructor,
    importcpp: "ChFiDS_CommonPoint(@)", dynlib: tkfillet.}
proc reset*(this: var ChFiDS_CommonPoint) {.cdecl, importcpp: "Reset", dynlib: tkfillet.}
proc setVertex*(this: var ChFiDS_CommonPoint; theVertex: TopoDS_Vertex) {.cdecl,
    importcpp: "SetVertex", dynlib: tkfillet.}
proc setArc*(this: var ChFiDS_CommonPoint; tol: cfloat; a: TopoDS_Edge; param: cfloat;
            tArc: TopAbsOrientation) {.cdecl, importcpp: "SetArc", dynlib: tkfillet.}
proc setParameter*(this: var ChFiDS_CommonPoint; param: cfloat) {.cdecl,
    importcpp: "SetParameter", dynlib: tkfillet.}
proc setPoint*(this: var ChFiDS_CommonPoint; thePoint: Pnt) {.cdecl,
    importcpp: "SetPoint", dynlib: tkfillet.}
proc setVector*(this: var ChFiDS_CommonPoint; theVector: Vec) {.cdecl,
    importcpp: "SetVector", dynlib: tkfillet.}
proc setTolerance*(this: var ChFiDS_CommonPoint; tol: cfloat) {.cdecl,
    importcpp: "SetTolerance", dynlib: tkfillet.}
proc tolerance*(this: ChFiDS_CommonPoint): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", dynlib: tkfillet.}
proc isVertex*(this: ChFiDS_CommonPoint): bool {.noSideEffect, cdecl,
    importcpp: "IsVertex", dynlib: tkfillet.}
proc vertex*(this: ChFiDS_CommonPoint): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex", dynlib: tkfillet.}
proc isOnArc*(this: ChFiDS_CommonPoint): bool {.noSideEffect, cdecl,
    importcpp: "IsOnArc", dynlib: tkfillet.}
proc arc*(this: ChFiDS_CommonPoint): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "Arc", dynlib: tkfillet.}
proc transitionOnArc*(this: ChFiDS_CommonPoint): TopAbsOrientation {.noSideEffect,
    cdecl, importcpp: "TransitionOnArc", dynlib: tkfillet.}
proc parameterOnArc*(this: ChFiDS_CommonPoint): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnArc", dynlib: tkfillet.}
proc parameter*(this: ChFiDS_CommonPoint): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", dynlib: tkfillet.}
proc point*(this: ChFiDS_CommonPoint): Pnt {.noSideEffect, cdecl, importcpp: "Point",
    dynlib: tkfillet.}
proc hasVector*(this: ChFiDS_CommonPoint): bool {.noSideEffect, cdecl,
    importcpp: "HasVector", dynlib: tkfillet.}
proc vector*(this: ChFiDS_CommonPoint): Vec {.noSideEffect, cdecl,
    importcpp: "Vector", dynlib: tkfillet.}