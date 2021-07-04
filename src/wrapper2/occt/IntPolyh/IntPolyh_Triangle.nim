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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Bnd/Bnd_Box, IntPolyh_ArrayOfPoints,
  IntPolyh_ArrayOfTriangles, IntPolyh_ArrayOfEdges

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of IntPolyh_StartPoint"
type
  IntPolyh_Triangle* {.importcpp: "IntPolyh_Triangle",
                      header: "IntPolyh_Triangle.hxx", bycopy.} = object ## ! Constructor


proc constructIntPolyh_Triangle*(): IntPolyh_Triangle {.constructor,
    importcpp: "IntPolyh_Triangle(@)", header: "IntPolyh_Triangle.hxx".}
proc constructIntPolyh_Triangle*(thePoint1: Standard_Integer;
                                thePoint2: Standard_Integer;
                                thePoint3: Standard_Integer): IntPolyh_Triangle {.
    constructor, importcpp: "IntPolyh_Triangle(@)", header: "IntPolyh_Triangle.hxx".}
proc FirstPoint*(this: IntPolyh_Triangle): Standard_Integer {.noSideEffect,
    importcpp: "FirstPoint", header: "IntPolyh_Triangle.hxx".}
proc SecondPoint*(this: IntPolyh_Triangle): Standard_Integer {.noSideEffect,
    importcpp: "SecondPoint", header: "IntPolyh_Triangle.hxx".}
proc ThirdPoint*(this: IntPolyh_Triangle): Standard_Integer {.noSideEffect,
    importcpp: "ThirdPoint", header: "IntPolyh_Triangle.hxx".}
proc FirstEdge*(this: IntPolyh_Triangle): Standard_Integer {.noSideEffect,
    importcpp: "FirstEdge", header: "IntPolyh_Triangle.hxx".}
proc FirstEdgeOrientation*(this: IntPolyh_Triangle): Standard_Integer {.
    noSideEffect, importcpp: "FirstEdgeOrientation",
    header: "IntPolyh_Triangle.hxx".}
proc SecondEdge*(this: IntPolyh_Triangle): Standard_Integer {.noSideEffect,
    importcpp: "SecondEdge", header: "IntPolyh_Triangle.hxx".}
proc SecondEdgeOrientation*(this: IntPolyh_Triangle): Standard_Integer {.
    noSideEffect, importcpp: "SecondEdgeOrientation",
    header: "IntPolyh_Triangle.hxx".}
proc ThirdEdge*(this: IntPolyh_Triangle): Standard_Integer {.noSideEffect,
    importcpp: "ThirdEdge", header: "IntPolyh_Triangle.hxx".}
proc ThirdEdgeOrientation*(this: IntPolyh_Triangle): Standard_Integer {.
    noSideEffect, importcpp: "ThirdEdgeOrientation",
    header: "IntPolyh_Triangle.hxx".}
proc Deflection*(this: IntPolyh_Triangle): Standard_Real {.noSideEffect,
    importcpp: "Deflection", header: "IntPolyh_Triangle.hxx".}
proc IsIntersectionPossible*(this: IntPolyh_Triangle): Standard_Boolean {.
    noSideEffect, importcpp: "IsIntersectionPossible",
    header: "IntPolyh_Triangle.hxx".}
proc HasIntersection*(this: IntPolyh_Triangle): Standard_Boolean {.noSideEffect,
    importcpp: "HasIntersection", header: "IntPolyh_Triangle.hxx".}
proc IsDegenerated*(this: IntPolyh_Triangle): Standard_Boolean {.noSideEffect,
    importcpp: "IsDegenerated", header: "IntPolyh_Triangle.hxx".}
proc SetFirstPoint*(this: var IntPolyh_Triangle; thePoint: Standard_Integer) {.
    importcpp: "SetFirstPoint", header: "IntPolyh_Triangle.hxx".}
proc SetSecondPoint*(this: var IntPolyh_Triangle; thePoint: Standard_Integer) {.
    importcpp: "SetSecondPoint", header: "IntPolyh_Triangle.hxx".}
proc SetThirdPoint*(this: var IntPolyh_Triangle; thePoint: Standard_Integer) {.
    importcpp: "SetThirdPoint", header: "IntPolyh_Triangle.hxx".}
proc SetFirstEdge*(this: var IntPolyh_Triangle; theEdge: Standard_Integer;
                  theEdgeOrientation: Standard_Integer) {.
    importcpp: "SetFirstEdge", header: "IntPolyh_Triangle.hxx".}
proc SetSecondEdge*(this: var IntPolyh_Triangle; theEdge: Standard_Integer;
                   theEdgeOrientation: Standard_Integer) {.
    importcpp: "SetSecondEdge", header: "IntPolyh_Triangle.hxx".}
proc SetThirdEdge*(this: var IntPolyh_Triangle; theEdge: Standard_Integer;
                  theEdgeOrientation: Standard_Integer) {.
    importcpp: "SetThirdEdge", header: "IntPolyh_Triangle.hxx".}
proc SetDeflection*(this: var IntPolyh_Triangle; theDeflection: Standard_Real) {.
    importcpp: "SetDeflection", header: "IntPolyh_Triangle.hxx".}
proc SetIntersectionPossible*(this: var IntPolyh_Triangle; theIP: Standard_Boolean) {.
    importcpp: "SetIntersectionPossible", header: "IntPolyh_Triangle.hxx".}
proc SetIntersection*(this: var IntPolyh_Triangle; theInt: Standard_Boolean) {.
    importcpp: "SetIntersection", header: "IntPolyh_Triangle.hxx".}
proc SetDegenerated*(this: var IntPolyh_Triangle; theDegFlag: Standard_Boolean) {.
    importcpp: "SetDegenerated", header: "IntPolyh_Triangle.hxx".}
proc GetEdgeNumber*(this: IntPolyh_Triangle; theEdgeIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "GetEdgeNumber", header: "IntPolyh_Triangle.hxx".}
proc SetEdge*(this: var IntPolyh_Triangle; theEdgeIndex: Standard_Integer;
             theEdgeNumber: Standard_Integer) {.importcpp: "SetEdge",
    header: "IntPolyh_Triangle.hxx".}
proc GetEdgeOrientation*(this: IntPolyh_Triangle; theEdgeIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "GetEdgeOrientation", header: "IntPolyh_Triangle.hxx".}
proc SetEdgeOrientation*(this: var IntPolyh_Triangle;
                        theEdgeIndex: Standard_Integer;
                        theEdgeOrientation: Standard_Integer) {.
    importcpp: "SetEdgeOrientation", header: "IntPolyh_Triangle.hxx".}
proc ComputeDeflection*(this: var IntPolyh_Triangle;
                       theSurface: handle[Adaptor3d_HSurface];
                       thePoints: IntPolyh_ArrayOfPoints): Standard_Real {.
    importcpp: "ComputeDeflection", header: "IntPolyh_Triangle.hxx".}
proc GetNextTriangle*(this: IntPolyh_Triangle; theTriangle: Standard_Integer;
                     theEdgeNum: Standard_Integer; TEdges: IntPolyh_ArrayOfEdges): Standard_Integer {.
    noSideEffect, importcpp: "GetNextTriangle", header: "IntPolyh_Triangle.hxx".}
proc MiddleRefinement*(this: var IntPolyh_Triangle;
                      theTriangleNumber: Standard_Integer;
                      theSurface: handle[Adaptor3d_HSurface];
                      TPoints: var IntPolyh_ArrayOfPoints;
                      TTriangles: var IntPolyh_ArrayOfTriangles;
                      TEdges: var IntPolyh_ArrayOfEdges) {.
    importcpp: "MiddleRefinement", header: "IntPolyh_Triangle.hxx".}
proc MultipleMiddleRefinement*(this: var IntPolyh_Triangle;
                              theRefineCriterion: Standard_Real; theBox: Bnd_Box;
                              theTriangleNumber: Standard_Integer;
                              theSurface: handle[Adaptor3d_HSurface];
                              TPoints: var IntPolyh_ArrayOfPoints;
                              TTriangles: var IntPolyh_ArrayOfTriangles;
                              TEdges: var IntPolyh_ArrayOfEdges) {.
    importcpp: "MultipleMiddleRefinement", header: "IntPolyh_Triangle.hxx".}
proc LinkEdges2Triangle*(this: var IntPolyh_Triangle; TEdges: IntPolyh_ArrayOfEdges;
                        theEdge1: Standard_Integer; theEdge2: Standard_Integer;
                        theEdge3: Standard_Integer) {.
    importcpp: "LinkEdges2Triangle", header: "IntPolyh_Triangle.hxx".}
proc SetEdgeAndOrientation*(this: var IntPolyh_Triangle; theEdge: IntPolyh_Edge;
                           theEdgeIndex: Standard_Integer) {.
    importcpp: "SetEdgeAndOrientation", header: "IntPolyh_Triangle.hxx".}
proc BoundingBox*(this: var IntPolyh_Triangle; thePoints: IntPolyh_ArrayOfPoints): Bnd_Box {.
    importcpp: "BoundingBox", header: "IntPolyh_Triangle.hxx".}
proc Dump*(this: IntPolyh_Triangle; v: Standard_Integer) {.noSideEffect,
    importcpp: "Dump", header: "IntPolyh_Triangle.hxx".}