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

type
  BRepExtremaShapeProximity* {.importcpp: "BRepExtrema_ShapeProximity",
                              header: "BRepExtrema_ShapeProximity.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Creates
                                                                                     ## empty
                                                                                     ## proximity
                                                                                     ## tool.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## tolerance
                                                                                     ## value
                                                                                     ## for
                                                                                     ## overlap
                                                                                     ## test
                                                                                     ## (distance
                                                                                     ## between
                                                                                     ## shapes).
                                                                                     ##
                                                                                     ## !
                                                                                     ## Maximum
                                                                                     ## overlapping
                                                                                     ## distance.
    ## ! Is the 1st shape initialized?
    ## ! Is the 2nd shape initialized?
    ## ! List of faces of the 1st shape.
    ## ! List of faces of the 2nd shape.
    ## ! Set of all the face triangles of the 1st shape.
    ## ! Set of all the face triangles of the 2nd shape.
    ## ! Overlap tool used for intersection/overlap test.


proc constructBRepExtremaShapeProximity*(theTolerance: StandardReal = 0.0): BRepExtremaShapeProximity {.
    constructor, importcpp: "BRepExtrema_ShapeProximity(@)",
    header: "BRepExtrema_ShapeProximity.hxx".}
proc constructBRepExtremaShapeProximity*(theShape1: TopoDS_Shape;
                                        theShape2: TopoDS_Shape;
                                        theTolerance: StandardReal = 0.0): BRepExtremaShapeProximity {.
    constructor, importcpp: "BRepExtrema_ShapeProximity(@)",
    header: "BRepExtrema_ShapeProximity.hxx".}
proc tolerance*(this: BRepExtremaShapeProximity): StandardReal {.noSideEffect,
    importcpp: "Tolerance", header: "BRepExtrema_ShapeProximity.hxx".}
proc setTolerance*(this: var BRepExtremaShapeProximity; theTolerance: StandardReal) {.
    importcpp: "SetTolerance", header: "BRepExtrema_ShapeProximity.hxx".}
proc loadShape1*(this: var BRepExtremaShapeProximity; theShape1: TopoDS_Shape): StandardBoolean {.
    importcpp: "LoadShape1", header: "BRepExtrema_ShapeProximity.hxx".}
proc loadShape2*(this: var BRepExtremaShapeProximity; theShape2: TopoDS_Shape): StandardBoolean {.
    importcpp: "LoadShape2", header: "BRepExtrema_ShapeProximity.hxx".}
proc perform*(this: var BRepExtremaShapeProximity) {.importcpp: "Perform",
    header: "BRepExtrema_ShapeProximity.hxx".}
proc isDone*(this: BRepExtremaShapeProximity): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepExtrema_ShapeProximity.hxx".}
proc overlapSubShapes1*(this: BRepExtremaShapeProximity): BRepExtremaMapOfIntegerPackedMapOfInteger {.
    noSideEffect, importcpp: "OverlapSubShapes1",
    header: "BRepExtrema_ShapeProximity.hxx".}
proc overlapSubShapes2*(this: BRepExtremaShapeProximity): BRepExtremaMapOfIntegerPackedMapOfInteger {.
    noSideEffect, importcpp: "OverlapSubShapes2",
    header: "BRepExtrema_ShapeProximity.hxx".}
proc getSubShape1*(this: BRepExtremaShapeProximity; theID: int): TopoDS_Face {.
    noSideEffect, importcpp: "GetSubShape1",
    header: "BRepExtrema_ShapeProximity.hxx".}
proc getSubShape2*(this: BRepExtremaShapeProximity; theID: int): TopoDS_Face {.
    noSideEffect, importcpp: "GetSubShape2",
    header: "BRepExtrema_ShapeProximity.hxx".}
proc elementSet1*(this: BRepExtremaShapeProximity): Handle[BRepExtremaTriangleSet] {.
    noSideEffect, importcpp: "ElementSet1",
    header: "BRepExtrema_ShapeProximity.hxx".}
proc elementSet2*(this: BRepExtremaShapeProximity): Handle[BRepExtremaTriangleSet] {.
    noSideEffect, importcpp: "ElementSet2",
    header: "BRepExtrema_ShapeProximity.hxx".}