##  Created on: 1999-03-05
##  Created by: Fabrice SERVANT
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of IntPolyh_StartPoint"
type
  IntPolyhTriangle* {.importcpp: "IntPolyh_Triangle",
                     header: "IntPolyh_Triangle.hxx", bycopy.} = object ## ! Constructor


proc constructIntPolyhTriangle*(): IntPolyhTriangle {.constructor,
    importcpp: "IntPolyh_Triangle(@)", header: "IntPolyh_Triangle.hxx".}
proc constructIntPolyhTriangle*(thePoint1: int; thePoint2: int; thePoint3: int): IntPolyhTriangle {.
    constructor, importcpp: "IntPolyh_Triangle(@)", header: "IntPolyh_Triangle.hxx".}
proc firstPoint*(this: IntPolyhTriangle): int {.noSideEffect,
    importcpp: "FirstPoint", header: "IntPolyh_Triangle.hxx".}
proc secondPoint*(this: IntPolyhTriangle): int {.noSideEffect,
    importcpp: "SecondPoint", header: "IntPolyh_Triangle.hxx".}
proc thirdPoint*(this: IntPolyhTriangle): int {.noSideEffect,
    importcpp: "ThirdPoint", header: "IntPolyh_Triangle.hxx".}
proc firstEdge*(this: IntPolyhTriangle): int {.noSideEffect, importcpp: "FirstEdge",
    header: "IntPolyh_Triangle.hxx".}
proc firstEdgeOrientation*(this: IntPolyhTriangle): int {.noSideEffect,
    importcpp: "FirstEdgeOrientation", header: "IntPolyh_Triangle.hxx".}
proc secondEdge*(this: IntPolyhTriangle): int {.noSideEffect,
    importcpp: "SecondEdge", header: "IntPolyh_Triangle.hxx".}
proc secondEdgeOrientation*(this: IntPolyhTriangle): int {.noSideEffect,
    importcpp: "SecondEdgeOrientation", header: "IntPolyh_Triangle.hxx".}
proc thirdEdge*(this: IntPolyhTriangle): int {.noSideEffect, importcpp: "ThirdEdge",
    header: "IntPolyh_Triangle.hxx".}
proc thirdEdgeOrientation*(this: IntPolyhTriangle): int {.noSideEffect,
    importcpp: "ThirdEdgeOrientation", header: "IntPolyh_Triangle.hxx".}
proc deflection*(this: IntPolyhTriangle): float {.noSideEffect,
    importcpp: "Deflection", header: "IntPolyh_Triangle.hxx".}
proc isIntersectionPossible*(this: IntPolyhTriangle): bool {.noSideEffect,
    importcpp: "IsIntersectionPossible", header: "IntPolyh_Triangle.hxx".}
proc hasIntersection*(this: IntPolyhTriangle): bool {.noSideEffect,
    importcpp: "HasIntersection", header: "IntPolyh_Triangle.hxx".}
proc isDegenerated*(this: IntPolyhTriangle): bool {.noSideEffect,
    importcpp: "IsDegenerated", header: "IntPolyh_Triangle.hxx".}
proc setFirstPoint*(this: var IntPolyhTriangle; thePoint: int) {.
    importcpp: "SetFirstPoint", header: "IntPolyh_Triangle.hxx".}
proc setSecondPoint*(this: var IntPolyhTriangle; thePoint: int) {.
    importcpp: "SetSecondPoint", header: "IntPolyh_Triangle.hxx".}
proc setThirdPoint*(this: var IntPolyhTriangle; thePoint: int) {.
    importcpp: "SetThirdPoint", header: "IntPolyh_Triangle.hxx".}
proc setFirstEdge*(this: var IntPolyhTriangle; theEdge: int; theEdgeOrientation: int) {.
    importcpp: "SetFirstEdge", header: "IntPolyh_Triangle.hxx".}
proc setSecondEdge*(this: var IntPolyhTriangle; theEdge: int; theEdgeOrientation: int) {.
    importcpp: "SetSecondEdge", header: "IntPolyh_Triangle.hxx".}
proc setThirdEdge*(this: var IntPolyhTriangle; theEdge: int; theEdgeOrientation: int) {.
    importcpp: "SetThirdEdge", header: "IntPolyh_Triangle.hxx".}
proc setDeflection*(this: var IntPolyhTriangle; theDeflection: float) {.
    importcpp: "SetDeflection", header: "IntPolyh_Triangle.hxx".}
proc setIntersectionPossible*(this: var IntPolyhTriangle; theIP: bool) {.
    importcpp: "SetIntersectionPossible", header: "IntPolyh_Triangle.hxx".}
proc setIntersection*(this: var IntPolyhTriangle; theInt: bool) {.
    importcpp: "SetIntersection", header: "IntPolyh_Triangle.hxx".}
proc setDegenerated*(this: var IntPolyhTriangle; theDegFlag: bool) {.
    importcpp: "SetDegenerated", header: "IntPolyh_Triangle.hxx".}
proc getEdgeNumber*(this: IntPolyhTriangle; theEdgeIndex: int): int {.noSideEffect,
    importcpp: "GetEdgeNumber", header: "IntPolyh_Triangle.hxx".}
proc setEdge*(this: var IntPolyhTriangle; theEdgeIndex: int; theEdgeNumber: int) {.
    importcpp: "SetEdge", header: "IntPolyh_Triangle.hxx".}
proc getEdgeOrientation*(this: IntPolyhTriangle; theEdgeIndex: int): int {.
    noSideEffect, importcpp: "GetEdgeOrientation", header: "IntPolyh_Triangle.hxx".}
proc setEdgeOrientation*(this: var IntPolyhTriangle; theEdgeIndex: int;
                        theEdgeOrientation: int) {.
    importcpp: "SetEdgeOrientation", header: "IntPolyh_Triangle.hxx".}
proc computeDeflection*(this: var IntPolyhTriangle;
                       theSurface: Handle[Adaptor3dHSurface];
                       thePoints: IntPolyhArrayOfPoints): float {.
    importcpp: "ComputeDeflection", header: "IntPolyh_Triangle.hxx".}
proc getNextTriangle*(this: IntPolyhTriangle; theTriangle: int; theEdgeNum: int;
                     tEdges: IntPolyhArrayOfEdges): int {.noSideEffect,
    importcpp: "GetNextTriangle", header: "IntPolyh_Triangle.hxx".}
proc middleRefinement*(this: var IntPolyhTriangle; theTriangleNumber: int;
                      theSurface: Handle[Adaptor3dHSurface];
                      tPoints: var IntPolyhArrayOfPoints;
                      tTriangles: var IntPolyhArrayOfTriangles;
                      tEdges: var IntPolyhArrayOfEdges) {.
    importcpp: "MiddleRefinement", header: "IntPolyh_Triangle.hxx".}
proc multipleMiddleRefinement*(this: var IntPolyhTriangle;
                              theRefineCriterion: float; theBox: BndBox;
                              theTriangleNumber: int;
                              theSurface: Handle[Adaptor3dHSurface];
                              tPoints: var IntPolyhArrayOfPoints;
                              tTriangles: var IntPolyhArrayOfTriangles;
                              tEdges: var IntPolyhArrayOfEdges) {.
    importcpp: "MultipleMiddleRefinement", header: "IntPolyh_Triangle.hxx".}
proc linkEdges2Triangle*(this: var IntPolyhTriangle; tEdges: IntPolyhArrayOfEdges;
                        theEdge1: int; theEdge2: int; theEdge3: int) {.
    importcpp: "LinkEdges2Triangle", header: "IntPolyh_Triangle.hxx".}
proc setEdgeAndOrientation*(this: var IntPolyhTriangle; theEdge: IntPolyhEdge;
                           theEdgeIndex: int) {.
    importcpp: "SetEdgeAndOrientation", header: "IntPolyh_Triangle.hxx".}
proc boundingBox*(this: var IntPolyhTriangle; thePoints: IntPolyhArrayOfPoints): BndBox {.
    importcpp: "BoundingBox", header: "IntPolyh_Triangle.hxx".}
proc dump*(this: IntPolyhTriangle; v: int) {.noSideEffect, importcpp: "Dump",
                                        header: "IntPolyh_Triangle.hxx".}
