import brepextrema_types

##  Created on: 2014-10-20
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2014 OPEN CASCADE SAS
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

## ! Tool class for shape proximity detection.
## ! For two given shapes and given tolerance (offset from the mesh) the algorithm allows
## ! to determine whether or not they are overlapped. The algorithm input consists of any
## ! shapes which can be decomposed into individual faces (used as basic shape elements).
## ! High performance is achieved through the use of existing triangulation of faces. So
## ! poly triangulation (with the desired deflection) should already be built. Note that
## ! solution is approximate (and corresponds to the deflection used for triangulation).
## !
## ! The algorithm can be run in two modes. If tolerance is set to zero, the algorithm
## ! will detect only intersecting faces (containing triangles with common points). If
## ! tolerance is set to positive value, the algorithm will also detect faces located
## ! on distance less than the given tolerance from each other.

proc newBRepExtrema_ShapeProximity*(theTolerance: cfloat = 0.0): BRepExtrema_ShapeProximity {.
    cdecl, constructor, importcpp: "BRepExtrema_ShapeProximity(@)",
    header: "BRepExtrema_ShapeProximity.hxx".}
proc newBRepExtrema_ShapeProximity*(theShape1: TopoDS_Shape;
                                   theShape2: TopoDS_Shape;
                                   theTolerance: cfloat = 0.0): BRepExtrema_ShapeProximity {.
    cdecl, constructor, importcpp: "BRepExtrema_ShapeProximity(@)",
    header: "BRepExtrema_ShapeProximity.hxx".}
proc Tolerance*(this: BRepExtrema_ShapeProximity): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", header: "BRepExtrema_ShapeProximity.hxx".}
proc SetTolerance*(this: var BRepExtrema_ShapeProximity; theTolerance: cfloat) {.
    cdecl, importcpp: "SetTolerance", header: "BRepExtrema_ShapeProximity.hxx".}
proc LoadShape1*(this: var BRepExtrema_ShapeProximity; theShape1: TopoDS_Shape): bool {.
    cdecl, importcpp: "LoadShape1", header: "BRepExtrema_ShapeProximity.hxx".}
proc LoadShape2*(this: var BRepExtrema_ShapeProximity; theShape2: TopoDS_Shape): bool {.
    cdecl, importcpp: "LoadShape2", header: "BRepExtrema_ShapeProximity.hxx".}
proc Perform*(this: var BRepExtrema_ShapeProximity) {.cdecl, importcpp: "Perform",
    header: "BRepExtrema_ShapeProximity.hxx".}
proc IsDone*(this: BRepExtrema_ShapeProximity): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepExtrema_ShapeProximity.hxx".}
proc OverlapSubShapes1*(this: BRepExtrema_ShapeProximity): BRepExtrema_MapOfIntegerPackedMapOfInteger {.
    noSideEffect, cdecl, importcpp: "OverlapSubShapes1",
    header: "BRepExtrema_ShapeProximity.hxx".}
proc OverlapSubShapes2*(this: BRepExtrema_ShapeProximity): BRepExtrema_MapOfIntegerPackedMapOfInteger {.
    noSideEffect, cdecl, importcpp: "OverlapSubShapes2",
    header: "BRepExtrema_ShapeProximity.hxx".}
proc GetSubShape1*(this: BRepExtrema_ShapeProximity; theID: cint): TopoDS_Face {.
    noSideEffect, cdecl, importcpp: "GetSubShape1",
    header: "BRepExtrema_ShapeProximity.hxx".}
proc GetSubShape2*(this: BRepExtrema_ShapeProximity; theID: cint): TopoDS_Face {.
    noSideEffect, cdecl, importcpp: "GetSubShape2",
    header: "BRepExtrema_ShapeProximity.hxx".}
proc ElementSet1*(this: BRepExtrema_ShapeProximity): handle[BRepExtrema_TriangleSet] {.
    noSideEffect, cdecl, importcpp: "ElementSet1",
    header: "BRepExtrema_ShapeProximity.hxx".}
proc ElementSet2*(this: BRepExtrema_ShapeProximity): handle[BRepExtrema_TriangleSet] {.
    noSideEffect, cdecl, importcpp: "ElementSet2",
    header: "BRepExtrema_ShapeProximity.hxx".}