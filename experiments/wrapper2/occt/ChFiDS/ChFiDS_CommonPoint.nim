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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Vertex,
  ../gp/gp_Pnt, ../gp/gp_Vec, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_Orientation

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
proc Reset*(this: var ChFiDS_CommonPoint) {.importcpp: "Reset",
                                        header: "ChFiDS_CommonPoint.hxx".}
proc SetVertex*(this: var ChFiDS_CommonPoint; theVertex: TopoDS_Vertex) {.
    importcpp: "SetVertex", header: "ChFiDS_CommonPoint.hxx".}
proc SetArc*(this: var ChFiDS_CommonPoint; Tol: Standard_Real; A: TopoDS_Edge;
            Param: Standard_Real; TArc: TopAbs_Orientation) {.importcpp: "SetArc",
    header: "ChFiDS_CommonPoint.hxx".}
proc SetParameter*(this: var ChFiDS_CommonPoint; Param: Standard_Real) {.
    importcpp: "SetParameter", header: "ChFiDS_CommonPoint.hxx".}
proc SetPoint*(this: var ChFiDS_CommonPoint; thePoint: gp_Pnt) {.
    importcpp: "SetPoint", header: "ChFiDS_CommonPoint.hxx".}
proc SetVector*(this: var ChFiDS_CommonPoint; theVector: gp_Vec) {.
    importcpp: "SetVector", header: "ChFiDS_CommonPoint.hxx".}
proc SetTolerance*(this: var ChFiDS_CommonPoint; Tol: Standard_Real) {.
    importcpp: "SetTolerance", header: "ChFiDS_CommonPoint.hxx".}
proc Tolerance*(this: ChFiDS_CommonPoint): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "ChFiDS_CommonPoint.hxx".}
proc IsVertex*(this: ChFiDS_CommonPoint): Standard_Boolean {.noSideEffect,
    importcpp: "IsVertex", header: "ChFiDS_CommonPoint.hxx".}
proc Vertex*(this: ChFiDS_CommonPoint): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "ChFiDS_CommonPoint.hxx".}
proc IsOnArc*(this: ChFiDS_CommonPoint): Standard_Boolean {.noSideEffect,
    importcpp: "IsOnArc", header: "ChFiDS_CommonPoint.hxx".}
proc Arc*(this: ChFiDS_CommonPoint): TopoDS_Edge {.noSideEffect, importcpp: "Arc",
    header: "ChFiDS_CommonPoint.hxx".}
proc TransitionOnArc*(this: ChFiDS_CommonPoint): TopAbs_Orientation {.noSideEffect,
    importcpp: "TransitionOnArc", header: "ChFiDS_CommonPoint.hxx".}
proc ParameterOnArc*(this: ChFiDS_CommonPoint): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnArc", header: "ChFiDS_CommonPoint.hxx".}
proc Parameter*(this: ChFiDS_CommonPoint): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "ChFiDS_CommonPoint.hxx".}
proc Point*(this: ChFiDS_CommonPoint): gp_Pnt {.noSideEffect, importcpp: "Point",
    header: "ChFiDS_CommonPoint.hxx".}
proc HasVector*(this: ChFiDS_CommonPoint): Standard_Boolean {.noSideEffect,
    importcpp: "HasVector", header: "ChFiDS_CommonPoint.hxx".}
proc Vector*(this: ChFiDS_CommonPoint): gp_Vec {.noSideEffect, importcpp: "Vector",
    header: "ChFiDS_CommonPoint.hxx".}