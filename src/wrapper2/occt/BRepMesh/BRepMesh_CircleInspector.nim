##  Created on: 2008-05-26
##  Created by: Ekaterina SMIRNOVA
##  Copyright (c) 2008-2014 OPEN CASCADE SAS
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
  ../IMeshData/IMeshData_Types, BRepMesh_Circle, ../Precision/Precision,
  ../gp/gp_XY, ../gp/gp_XYZ, ../NCollection/NCollection_CellFilter

## ! Auxilary class to find circles shot by the given point.

type
  BRepMesh_CircleInspector* {.importcpp: "BRepMesh_CircleInspector",
                             header: "BRepMesh_CircleInspector.hxx", bycopy.} = object of NCollection_CellFilter_InspectorXY

  BRepMesh_CircleInspectorTarget* = Standard_Integer

proc constructBRepMesh_CircleInspector*(theTolerance: Standard_Real;
                                       theReservedSize: Standard_Integer;
    theAllocator: handle[NCollection_IncAllocator]): BRepMesh_CircleInspector {.
    constructor, importcpp: "BRepMesh_CircleInspector(@)",
    header: "BRepMesh_CircleInspector.hxx".}
proc Bind*(this: var BRepMesh_CircleInspector; theIndex: Standard_Integer;
          theCircle: BRepMesh_Circle) {.importcpp: "Bind",
                                      header: "BRepMesh_CircleInspector.hxx".}
proc Circles*(this: BRepMesh_CircleInspector): VectorOfCircle {.noSideEffect,
    importcpp: "Circles", header: "BRepMesh_CircleInspector.hxx".}
proc Circle*(this: var BRepMesh_CircleInspector; theIndex: Standard_Integer): var BRepMesh_Circle {.
    importcpp: "Circle", header: "BRepMesh_CircleInspector.hxx".}
proc SetPoint*(this: var BRepMesh_CircleInspector; thePoint: gp_XY) {.
    importcpp: "SetPoint", header: "BRepMesh_CircleInspector.hxx".}
proc GetShotCircles*(this: var BRepMesh_CircleInspector): var ListOfInteger {.
    importcpp: "GetShotCircles", header: "BRepMesh_CircleInspector.hxx".}
proc Inspect*(this: var BRepMesh_CircleInspector; theTargetIndex: Standard_Integer): NCollection_CellFilter_Action {.
    importcpp: "Inspect", header: "BRepMesh_CircleInspector.hxx".}
proc IsEqual*(theIndex: Standard_Integer; theTargetIndex: Standard_Integer): Standard_Boolean {.
    importcpp: "BRepMesh_CircleInspector::IsEqual(@)",
    header: "BRepMesh_CircleInspector.hxx".}