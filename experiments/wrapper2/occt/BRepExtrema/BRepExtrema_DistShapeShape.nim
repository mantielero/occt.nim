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

## ! This class  provides tools to compute minimum distance <br>
## ! between two Shapes (Compound,CompSolid, Solid, Shell, Face, Wire, Edge, Vertex). <br>

type
  BRepExtremaDistShapeShape* {.importcpp: "BRepExtrema_DistShapeShape",
                              header: "BRepExtrema_DistShapeShape.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## create
                                                                                     ## empty
                                                                                     ## tool
                                                                                     ## <br>
                                                                                     ##
                                                                                     ## !
                                                                                     ## computes
                                                                                     ## the
                                                                                     ## minimum
                                                                                     ## distance
                                                                                     ## between
                                                                                     ## two
                                                                                     ## maps
                                                                                     ## of
                                                                                     ## shapes
                                                                                     ## (Face,Edge,Vertex)
                                                                                     ## <br>


proc constructBRepExtremaDistShapeShape*(): BRepExtremaDistShapeShape {.
    constructor, importcpp: "BRepExtrema_DistShapeShape(@)",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc constructBRepExtremaDistShapeShape*(shape1: TopoDS_Shape;
                                        shape2: TopoDS_Shape; f: ExtremaExtFlag = extremaExtFlagMINMAX;
                                        a: ExtremaExtAlgo = extremaExtAlgoGrad): BRepExtremaDistShapeShape {.
    constructor, importcpp: "BRepExtrema_DistShapeShape(@)",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc constructBRepExtremaDistShapeShape*(shape1: TopoDS_Shape;
                                        shape2: TopoDS_Shape;
                                        theDeflection: float; f: ExtremaExtFlag = extremaExtFlagMINMAX;
                                        a: ExtremaExtAlgo = extremaExtAlgoGrad): BRepExtremaDistShapeShape {.
    constructor, importcpp: "BRepExtrema_DistShapeShape(@)",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc setDeflection*(this: var BRepExtremaDistShapeShape; theDeflection: float) {.
    importcpp: "SetDeflection", header: "BRepExtrema_DistShapeShape.hxx".}
proc loadS1*(this: var BRepExtremaDistShapeShape; shape1: TopoDS_Shape) {.
    importcpp: "LoadS1", header: "BRepExtrema_DistShapeShape.hxx".}
proc loadS2*(this: var BRepExtremaDistShapeShape; shape1: TopoDS_Shape) {.
    importcpp: "LoadS2", header: "BRepExtrema_DistShapeShape.hxx".}
proc perform*(this: var BRepExtremaDistShapeShape): bool {.importcpp: "Perform",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc isDone*(this: BRepExtremaDistShapeShape): bool {.noSideEffect,
    importcpp: "IsDone", header: "BRepExtrema_DistShapeShape.hxx".}
proc nbSolution*(this: BRepExtremaDistShapeShape): int {.noSideEffect,
    importcpp: "NbSolution", header: "BRepExtrema_DistShapeShape.hxx".}
proc value*(this: BRepExtremaDistShapeShape): float {.noSideEffect,
    importcpp: "Value", header: "BRepExtrema_DistShapeShape.hxx".}
proc innerSolution*(this: BRepExtremaDistShapeShape): bool {.noSideEffect,
    importcpp: "InnerSolution", header: "BRepExtrema_DistShapeShape.hxx".}
proc pointOnShape1*(this: BRepExtremaDistShapeShape; n: int): Pnt {.noSideEffect,
    importcpp: "PointOnShape1", header: "BRepExtrema_DistShapeShape.hxx".}
proc pointOnShape2*(this: BRepExtremaDistShapeShape; n: int): Pnt {.noSideEffect,
    importcpp: "PointOnShape2", header: "BRepExtrema_DistShapeShape.hxx".}
proc supportTypeShape1*(this: BRepExtremaDistShapeShape; n: int): BRepExtremaSupportType {.
    noSideEffect, importcpp: "SupportTypeShape1",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc supportTypeShape2*(this: BRepExtremaDistShapeShape; n: int): BRepExtremaSupportType {.
    noSideEffect, importcpp: "SupportTypeShape2",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc supportOnShape1*(this: BRepExtremaDistShapeShape; n: int): TopoDS_Shape {.
    noSideEffect, importcpp: "SupportOnShape1",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc supportOnShape2*(this: BRepExtremaDistShapeShape; n: int): TopoDS_Shape {.
    noSideEffect, importcpp: "SupportOnShape2",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc parOnEdgeS1*(this: BRepExtremaDistShapeShape; n: int; t: var float) {.noSideEffect,
    importcpp: "ParOnEdgeS1", header: "BRepExtrema_DistShapeShape.hxx".}
proc parOnEdgeS2*(this: BRepExtremaDistShapeShape; n: int; t: var float) {.noSideEffect,
    importcpp: "ParOnEdgeS2", header: "BRepExtrema_DistShapeShape.hxx".}
proc parOnFaceS1*(this: BRepExtremaDistShapeShape; n: int; u: var float; v: var float) {.
    noSideEffect, importcpp: "ParOnFaceS1",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc parOnFaceS2*(this: BRepExtremaDistShapeShape; n: int; u: var float; v: var float) {.
    noSideEffect, importcpp: "ParOnFaceS2",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc dump*(this: BRepExtremaDistShapeShape; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "BRepExtrema_DistShapeShape.hxx".}
proc setFlag*(this: var BRepExtremaDistShapeShape; f: ExtremaExtFlag) {.
    importcpp: "SetFlag", header: "BRepExtrema_DistShapeShape.hxx".}
proc setAlgo*(this: var BRepExtremaDistShapeShape; a: ExtremaExtAlgo) {.
    importcpp: "SetAlgo", header: "BRepExtrema_DistShapeShape.hxx".}
