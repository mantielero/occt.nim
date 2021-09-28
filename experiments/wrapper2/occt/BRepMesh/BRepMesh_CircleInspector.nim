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

## ! Auxilary class to find circles shot by the given point.

type
  BRepMeshCircleInspector* {.importcpp: "BRepMesh_CircleInspector",
                            header: "BRepMesh_CircleInspector.hxx", bycopy.} = object of NCollectionCellFilterInspectorXY

  BRepMeshCircleInspectorTarget* = cint

proc constructBRepMeshCircleInspector*(theTolerance: cfloat; theReservedSize: cint;
    theAllocator: Handle[NCollectionIncAllocator]): BRepMeshCircleInspector {.
    constructor, importcpp: "BRepMesh_CircleInspector(@)",
    header: "BRepMesh_CircleInspector.hxx".}
proc `bind`*(this: var BRepMeshCircleInspector; theIndex: cint;
            theCircle: BRepMeshCircle) {.importcpp: "Bind",
                                       header: "BRepMesh_CircleInspector.hxx".}
proc circles*(this: BRepMeshCircleInspector): VectorOfCircle {.noSideEffect,
    importcpp: "Circles", header: "BRepMesh_CircleInspector.hxx".}
proc circle*(this: var BRepMeshCircleInspector; theIndex: cint): var BRepMeshCircle {.
    importcpp: "Circle", header: "BRepMesh_CircleInspector.hxx".}
proc setPoint*(this: var BRepMeshCircleInspector; thePoint: Xy) {.
    importcpp: "SetPoint", header: "BRepMesh_CircleInspector.hxx".}
proc getShotCircles*(this: var BRepMeshCircleInspector): var ListOfInteger {.
    importcpp: "GetShotCircles", header: "BRepMesh_CircleInspector.hxx".}
proc inspect*(this: var BRepMeshCircleInspector; theTargetIndex: cint): NCollectionCellFilterAction {.
    importcpp: "Inspect", header: "BRepMesh_CircleInspector.hxx".}
proc isEqual*(theIndex: cint; theTargetIndex: cint): bool {.
    importcpp: "BRepMesh_CircleInspector::IsEqual(@)",
    header: "BRepMesh_CircleInspector.hxx".}

























