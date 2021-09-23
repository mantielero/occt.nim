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
  ../Bnd/Bnd_SeqOfBox, BRepExtrema_SeqOfSolution, BRepExtrema_SolutionElem,
  BRepExtrema_SupportType, ../Extrema/Extrema_ExtAlgo, ../Extrema/Extrema_ExtFlag,
  ../gp/gp_Pnt, ../TopoDS/TopoDS_Shape, ../TopTools/TopTools_IndexedMapOfShape,
  ../Standard/Standard_OStream, ../Standard/Standard_DefineAlloc,
  ../TopTools/TopTools_IndexedMapOfShape

## ! This class  provides tools to compute minimum distance <br>
## ! between two Shapes (Compound,CompSolid, Solid, Shell, Face, Wire, Edge, Vertex). <br>

type
  BRepExtrema_DistShapeShape* {.importcpp: "BRepExtrema_DistShapeShape",
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


proc constructBRepExtrema_DistShapeShape*(): BRepExtrema_DistShapeShape {.
    constructor, importcpp: "BRepExtrema_DistShapeShape(@)",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc constructBRepExtrema_DistShapeShape*(Shape1: TopoDS_Shape;
    Shape2: TopoDS_Shape; F: Extrema_ExtFlag = Extrema_ExtFlag_MINMAX;
    A: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): BRepExtrema_DistShapeShape {.
    constructor, importcpp: "BRepExtrema_DistShapeShape(@)",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc constructBRepExtrema_DistShapeShape*(Shape1: TopoDS_Shape;
    Shape2: TopoDS_Shape; theDeflection: Standard_Real;
    F: Extrema_ExtFlag = Extrema_ExtFlag_MINMAX;
    A: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): BRepExtrema_DistShapeShape {.
    constructor, importcpp: "BRepExtrema_DistShapeShape(@)",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc SetDeflection*(this: var BRepExtrema_DistShapeShape;
                   theDeflection: Standard_Real) {.importcpp: "SetDeflection",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc LoadS1*(this: var BRepExtrema_DistShapeShape; Shape1: TopoDS_Shape) {.
    importcpp: "LoadS1", header: "BRepExtrema_DistShapeShape.hxx".}
proc LoadS2*(this: var BRepExtrema_DistShapeShape; Shape1: TopoDS_Shape) {.
    importcpp: "LoadS2", header: "BRepExtrema_DistShapeShape.hxx".}
proc Perform*(this: var BRepExtrema_DistShapeShape): Standard_Boolean {.
    importcpp: "Perform", header: "BRepExtrema_DistShapeShape.hxx".}
proc IsDone*(this: BRepExtrema_DistShapeShape): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepExtrema_DistShapeShape.hxx".}
proc NbSolution*(this: BRepExtrema_DistShapeShape): Standard_Integer {.noSideEffect,
    importcpp: "NbSolution", header: "BRepExtrema_DistShapeShape.hxx".}
proc Value*(this: BRepExtrema_DistShapeShape): Standard_Real {.noSideEffect,
    importcpp: "Value", header: "BRepExtrema_DistShapeShape.hxx".}
proc InnerSolution*(this: BRepExtrema_DistShapeShape): Standard_Boolean {.
    noSideEffect, importcpp: "InnerSolution",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc PointOnShape1*(this: BRepExtrema_DistShapeShape; N: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "PointOnShape1",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc PointOnShape2*(this: BRepExtrema_DistShapeShape; N: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "PointOnShape2",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc SupportTypeShape1*(this: BRepExtrema_DistShapeShape; N: Standard_Integer): BRepExtrema_SupportType {.
    noSideEffect, importcpp: "SupportTypeShape1",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc SupportTypeShape2*(this: BRepExtrema_DistShapeShape; N: Standard_Integer): BRepExtrema_SupportType {.
    noSideEffect, importcpp: "SupportTypeShape2",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc SupportOnShape1*(this: BRepExtrema_DistShapeShape; N: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "SupportOnShape1",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc SupportOnShape2*(this: BRepExtrema_DistShapeShape; N: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "SupportOnShape2",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc ParOnEdgeS1*(this: BRepExtrema_DistShapeShape; N: Standard_Integer;
                 t: var Standard_Real) {.noSideEffect, importcpp: "ParOnEdgeS1",
                                      header: "BRepExtrema_DistShapeShape.hxx".}
proc ParOnEdgeS2*(this: BRepExtrema_DistShapeShape; N: Standard_Integer;
                 t: var Standard_Real) {.noSideEffect, importcpp: "ParOnEdgeS2",
                                      header: "BRepExtrema_DistShapeShape.hxx".}
proc ParOnFaceS1*(this: BRepExtrema_DistShapeShape; N: Standard_Integer;
                 u: var Standard_Real; v: var Standard_Real) {.noSideEffect,
    importcpp: "ParOnFaceS1", header: "BRepExtrema_DistShapeShape.hxx".}
proc ParOnFaceS2*(this: BRepExtrema_DistShapeShape; N: Standard_Integer;
                 u: var Standard_Real; v: var Standard_Real) {.noSideEffect,
    importcpp: "ParOnFaceS2", header: "BRepExtrema_DistShapeShape.hxx".}
proc Dump*(this: BRepExtrema_DistShapeShape; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "BRepExtrema_DistShapeShape.hxx".}
proc SetFlag*(this: var BRepExtrema_DistShapeShape; F: Extrema_ExtFlag) {.
    importcpp: "SetFlag", header: "BRepExtrema_DistShapeShape.hxx".}
proc SetAlgo*(this: var BRepExtrema_DistShapeShape; A: Extrema_ExtAlgo) {.
    importcpp: "SetAlgo", header: "BRepExtrema_DistShapeShape.hxx".}