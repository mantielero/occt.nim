##  Created on: 1998-01-29
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../BRepBuilderAPI/BRepBuilderAPI_MakeShape,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../ChFiDS/ChFiDS_SecHArray1

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
type
  BRepFilletAPI_LocalOperation* {.importcpp: "BRepFilletAPI_LocalOperation",
                                 header: "BRepFilletAPI_LocalOperation.hxx",
                                 bycopy.} = object of BRepBuilderAPI_MakeShape ## ! Adds a
                                                                          ## contour in  the
                                                                          ## builder
                                                                          ## (builds a
                                                                          ## !
                                                                          ## contour  of
                                                                          ## tangent
                                                                          ## edges).


proc Add*(this: var BRepFilletAPI_LocalOperation; E: TopoDS_Edge) {.importcpp: "Add",
    header: "BRepFilletAPI_LocalOperation.hxx".}
proc ResetContour*(this: var BRepFilletAPI_LocalOperation; IC: Standard_Integer) {.
    importcpp: "ResetContour", header: "BRepFilletAPI_LocalOperation.hxx".}
proc NbContours*(this: BRepFilletAPI_LocalOperation): Standard_Integer {.
    noSideEffect, importcpp: "NbContours",
    header: "BRepFilletAPI_LocalOperation.hxx".}
proc Contour*(this: BRepFilletAPI_LocalOperation; E: TopoDS_Edge): Standard_Integer {.
    noSideEffect, importcpp: "Contour", header: "BRepFilletAPI_LocalOperation.hxx".}
proc NbEdges*(this: BRepFilletAPI_LocalOperation; I: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbEdges", header: "BRepFilletAPI_LocalOperation.hxx".}
proc Edge*(this: BRepFilletAPI_LocalOperation; I: Standard_Integer;
          J: Standard_Integer): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "BRepFilletAPI_LocalOperation.hxx".}
proc Remove*(this: var BRepFilletAPI_LocalOperation; E: TopoDS_Edge) {.
    importcpp: "Remove", header: "BRepFilletAPI_LocalOperation.hxx".}
proc Length*(this: BRepFilletAPI_LocalOperation; IC: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Length", header: "BRepFilletAPI_LocalOperation.hxx".}
proc FirstVertex*(this: BRepFilletAPI_LocalOperation; IC: Standard_Integer): TopoDS_Vertex {.
    noSideEffect, importcpp: "FirstVertex",
    header: "BRepFilletAPI_LocalOperation.hxx".}
proc LastVertex*(this: BRepFilletAPI_LocalOperation; IC: Standard_Integer): TopoDS_Vertex {.
    noSideEffect, importcpp: "LastVertex",
    header: "BRepFilletAPI_LocalOperation.hxx".}
proc Abscissa*(this: BRepFilletAPI_LocalOperation; IC: Standard_Integer;
              V: TopoDS_Vertex): Standard_Real {.noSideEffect,
    importcpp: "Abscissa", header: "BRepFilletAPI_LocalOperation.hxx".}
proc RelativeAbscissa*(this: BRepFilletAPI_LocalOperation; IC: Standard_Integer;
                      V: TopoDS_Vertex): Standard_Real {.noSideEffect,
    importcpp: "RelativeAbscissa", header: "BRepFilletAPI_LocalOperation.hxx".}
proc ClosedAndTangent*(this: BRepFilletAPI_LocalOperation; IC: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "ClosedAndTangent",
    header: "BRepFilletAPI_LocalOperation.hxx".}
proc Closed*(this: BRepFilletAPI_LocalOperation; IC: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Closed", header: "BRepFilletAPI_LocalOperation.hxx".}
proc Reset*(this: var BRepFilletAPI_LocalOperation) {.importcpp: "Reset",
    header: "BRepFilletAPI_LocalOperation.hxx".}
proc Simulate*(this: var BRepFilletAPI_LocalOperation; IC: Standard_Integer) {.
    importcpp: "Simulate", header: "BRepFilletAPI_LocalOperation.hxx".}
proc NbSurf*(this: BRepFilletAPI_LocalOperation; IC: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbSurf", header: "BRepFilletAPI_LocalOperation.hxx".}
proc Sect*(this: BRepFilletAPI_LocalOperation; IC: Standard_Integer;
          IS: Standard_Integer): handle[ChFiDS_SecHArray1] {.noSideEffect,
    importcpp: "Sect", header: "BRepFilletAPI_LocalOperation.hxx".}