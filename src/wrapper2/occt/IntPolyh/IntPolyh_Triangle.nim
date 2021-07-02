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
proc constructIntPolyhTriangle*(thePoint1: StandardInteger;
                               thePoint2: StandardInteger;
                               thePoint3: StandardInteger): IntPolyhTriangle {.
    constructor, importcpp: "IntPolyh_Triangle(@)", header: "IntPolyh_Triangle.hxx".}
proc firstPoint*(this: IntPolyhTriangle): StandardInteger {.noSideEffect,
    importcpp: "FirstPoint", header: "IntPolyh_Triangle.hxx".}
proc secondPoint*(this: IntPolyhTriangle): StandardInteger {.noSideEffect,
    importcpp: "SecondPoint", header: "IntPolyh_Triangle.hxx".}
proc thirdPoint*(this: IntPolyhTriangle): StandardInteger {.noSideEffect,
    importcpp: "ThirdPoint", header: "IntPolyh_Triangle.hxx".}
proc firstEdge*(this: IntPolyhTriangle): StandardInteger {.noSideEffect,
    importcpp: "FirstEdge", header: "IntPolyh_Triangle.hxx".}
proc firstEdgeOrientation*(this: IntPolyhTriangle): StandardInteger {.noSideEffect,
    importcpp: "FirstEdgeOrientation", header: "IntPolyh_Triangle.hxx".}
proc secondEdge*(this: IntPolyhTriangle): StandardInteger {.noSideEffect,
    importcpp: "SecondEdge", header: "IntPolyh_Triangle.hxx".}
proc secondEdgeOrientation*(this: IntPolyhTriangle): StandardInteger {.noSideEffect,
    importcpp: "SecondEdgeOrientation", header: "IntPolyh_Triangle.hxx".}
proc thirdEdge*(this: IntPolyhTriangle): StandardInteger {.noSideEffect,
    importcpp: "ThirdEdge", header: "IntPolyh_Triangle.hxx".}
proc thirdEdgeOrientation*(this: IntPolyhTriangle): StandardInteger {.noSideEffect,
    importcpp: "ThirdEdgeOrientation", header: "IntPolyh_Triangle.hxx".}
proc deflection*(this: IntPolyhTriangle): StandardReal {.noSideEffect,
    importcpp: "Deflection", header: "IntPolyh_Triangle.hxx".}
proc isIntersectionPossible*(this: IntPolyhTriangle): StandardBoolean {.
    noSideEffect, importcpp: "IsIntersectionPossible",
    header: "IntPolyh_Triangle.hxx".}
proc hasIntersection*(this: IntPolyhTriangle): StandardBoolean {.noSideEffect,
    importcpp: "HasIntersection", header: "IntPolyh_Triangle.hxx".}
proc isDegenerated*(this: IntPolyhTriangle): StandardBoolean {.noSideEffect,
    importcpp: "IsDegenerated", header: "IntPolyh_Triangle.hxx".}
proc setFirstPoint*(this: var IntPolyhTriangle; thePoint: StandardInteger) {.
    importcpp: "SetFirstPoint", header: "IntPolyh_Triangle.hxx".}
proc setSecondPoint*(this: var IntPolyhTriangle; thePoint: StandardInteger) {.
    importcpp: "SetSecondPoint", header: "IntPolyh_Triangle.hxx".}
proc setThirdPoint*(this: var IntPolyhTriangle; thePoint: StandardInteger) {.
    importcpp: "SetThirdPoint", header: "IntPolyh_Triangle.hxx".}
proc setFirstEdge*(this: var IntPolyhTriangle; theEdge: StandardInteger;
                  theEdgeOrientation: StandardInteger) {.
    importcpp: "SetFirstEdge", header: "IntPolyh_Triangle.hxx".}
proc setSecondEdge*(this: var IntPolyhTriangle; theEdge: StandardInteger;
                   theEdgeOrientation: StandardInteger) {.
    importcpp: "SetSecondEdge", header: "IntPolyh_Triangle.hxx".}
proc setThirdEdge*(this: var IntPolyhTriangle; theEdge: StandardInteger;
                  theEdgeOrientation: StandardInteger) {.
    importcpp: "SetThirdEdge", header: "IntPolyh_Triangle.hxx".}
proc setDeflection*(this: var IntPolyhTriangle; theDeflection: StandardReal) {.
    importcpp: "SetDeflection", header: "IntPolyh_Triangle.hxx".}
proc setIntersectionPossible*(this: var IntPolyhTriangle; theIP: StandardBoolean) {.
    importcpp: "SetIntersectionPossible", header: "IntPolyh_Triangle.hxx".}
proc setIntersection*(this: var IntPolyhTriangle; theInt: StandardBoolean) {.
    importcpp: "SetIntersection", header: "IntPolyh_Triangle.hxx".}
proc setDegenerated*(this: var IntPolyhTriangle; theDegFlag: StandardBoolean) {.
    importcpp: "SetDegenerated", header: "IntPolyh_Triangle.hxx".}
proc getEdgeNumber*(this: IntPolyhTriangle; theEdgeIndex: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "GetEdgeNumber", header: "IntPolyh_Triangle.hxx".}
proc setEdge*(this: var IntPolyhTriangle; theEdgeIndex: StandardInteger;
             theEdgeNumber: StandardInteger) {.importcpp: "SetEdge",
    header: "IntPolyh_Triangle.hxx".}
proc getEdgeOrientation*(this: IntPolyhTriangle; theEdgeIndex: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "GetEdgeOrientation", header: "IntPolyh_Triangle.hxx".}
proc setEdgeOrientation*(this: var IntPolyhTriangle; theEdgeIndex: StandardInteger;
                        theEdgeOrientation: StandardInteger) {.
    importcpp: "SetEdgeOrientation", header: "IntPolyh_Triangle.hxx".}
proc computeDeflection*(this: var IntPolyhTriangle;
                       theSurface: Handle[Adaptor3dHSurface];
                       thePoints: IntPolyhArrayOfPoints): StandardReal {.
    importcpp: "ComputeDeflection", header: "IntPolyh_Triangle.hxx".}
proc getNextTriangle*(this: IntPolyhTriangle; theTriangle: StandardInteger;
                     theEdgeNum: StandardInteger; tEdges: IntPolyhArrayOfEdges): StandardInteger {.
    noSideEffect, importcpp: "GetNextTriangle", header: "IntPolyh_Triangle.hxx".}
proc middleRefinement*(this: var IntPolyhTriangle;
                      theTriangleNumber: StandardInteger;
                      theSurface: Handle[Adaptor3dHSurface];
                      tPoints: var IntPolyhArrayOfPoints;
                      tTriangles: var IntPolyhArrayOfTriangles;
                      tEdges: var IntPolyhArrayOfEdges) {.
    importcpp: "MiddleRefinement", header: "IntPolyh_Triangle.hxx".}
proc multipleMiddleRefinement*(this: var IntPolyhTriangle;
                              theRefineCriterion: StandardReal; theBox: BndBox;
                              theTriangleNumber: StandardInteger;
                              theSurface: Handle[Adaptor3dHSurface];
                              tPoints: var IntPolyhArrayOfPoints;
                              tTriangles: var IntPolyhArrayOfTriangles;
                              tEdges: var IntPolyhArrayOfEdges) {.
    importcpp: "MultipleMiddleRefinement", header: "IntPolyh_Triangle.hxx".}
proc linkEdges2Triangle*(this: var IntPolyhTriangle; tEdges: IntPolyhArrayOfEdges;
                        theEdge1: StandardInteger; theEdge2: StandardInteger;
                        theEdge3: StandardInteger) {.
    importcpp: "LinkEdges2Triangle", header: "IntPolyh_Triangle.hxx".}
proc setEdgeAndOrientation*(this: var IntPolyhTriangle; theEdge: IntPolyhEdge;
                           theEdgeIndex: StandardInteger) {.
    importcpp: "SetEdgeAndOrientation", header: "IntPolyh_Triangle.hxx".}
proc boundingBox*(this: var IntPolyhTriangle; thePoints: IntPolyhArrayOfPoints): BndBox {.
    importcpp: "BoundingBox", header: "IntPolyh_Triangle.hxx".}
proc dump*(this: IntPolyhTriangle; v: StandardInteger) {.noSideEffect,
    importcpp: "Dump", header: "IntPolyh_Triangle.hxx".}

