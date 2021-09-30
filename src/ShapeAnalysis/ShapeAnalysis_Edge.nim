##  Created on: 1998-06-08
##  Created by: data exchange team
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

discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Pnt"
discard "forward decl of Adaptor3d_Curve"
# when defined(Status):
#   discard
## ! Tool for analyzing the edge.
## ! Queries geometrical representations of the edge (3d curve, pcurve
## ! on the given face or surface) and topological sub-shapes (bounding
## ! vertices).
## ! Provides methods for analyzing geometry and topology consistency
## ! (3d and pcurve(s) consistency, their adjacency to the vertices).

type
  ShapeAnalysisEdge* {.importcpp: "ShapeAnalysis_Edge",
                      header: "ShapeAnalysis_Edge.hxx", bycopy.} = object ## ! Empty
                                                                     ## constructor; initialises Status to OK
                                                                     ## ! Check points by pairs (A and A, B and B) with precisions
                                                                     ## ! (preci1 and preci2).
                                                                     ## ! P1 are the points either from 3d curve or from vertices,
                                                                     ## ! P2 are the points from pcurve


proc constructShapeAnalysisEdge*(): ShapeAnalysisEdge {.constructor,
    importcpp: "ShapeAnalysis_Edge(@)", header: "ShapeAnalysis_Edge.hxx".}
proc hasCurve3d*(this: ShapeAnalysisEdge; edge: TopoDS_Edge): bool {.noSideEffect,
    importcpp: "HasCurve3d", header: "ShapeAnalysis_Edge.hxx".}
proc curve3d*(this: ShapeAnalysisEdge; edge: TopoDS_Edge; c3d: var Handle[GeomCurve];
             cf: var cfloat; cl: var cfloat; orient: bool = true): bool {.noSideEffect,
    importcpp: "Curve3d", header: "ShapeAnalysis_Edge.hxx".}
proc isClosed3d*(this: ShapeAnalysisEdge; edge: TopoDS_Edge): bool {.noSideEffect,
    importcpp: "IsClosed3d", header: "ShapeAnalysis_Edge.hxx".}
proc hasPCurve*(this: ShapeAnalysisEdge; edge: TopoDS_Edge; face: TopoDS_Face): bool {.
    noSideEffect, importcpp: "HasPCurve", header: "ShapeAnalysis_Edge.hxx".}
proc hasPCurve*(this: ShapeAnalysisEdge; edge: TopoDS_Edge;
               surface: Handle[GeomSurface]; location: TopLocLocation): bool {.
    noSideEffect, importcpp: "HasPCurve", header: "ShapeAnalysis_Edge.hxx".}
proc pCurve*(this: ShapeAnalysisEdge; edge: TopoDS_Edge; face: TopoDS_Face;
            c2d: var Handle[Geom2dCurve]; cf: var cfloat; cl: var cfloat;
            orient: bool = true): bool {.noSideEffect, importcpp: "PCurve",
                                    header: "ShapeAnalysis_Edge.hxx".}
proc pCurve*(this: ShapeAnalysisEdge; edge: TopoDS_Edge;
            surface: Handle[GeomSurface]; location: TopLocLocation;
            c2d: var Handle[Geom2dCurve]; cf: var cfloat; cl: var cfloat;
            orient: bool = true): bool {.noSideEffect, importcpp: "PCurve",
                                    header: "ShapeAnalysis_Edge.hxx".}
proc boundUV*(this: ShapeAnalysisEdge; edge: TopoDS_Edge; face: TopoDS_Face;
             first: var Pnt2d; last: var Pnt2d): bool {.noSideEffect,
    importcpp: "BoundUV", header: "ShapeAnalysis_Edge.hxx".}
proc boundUV*(this: ShapeAnalysisEdge; edge: TopoDS_Edge;
             surface: Handle[GeomSurface]; location: TopLocLocation;
             first: var Pnt2d; last: var Pnt2d): bool {.noSideEffect,
    importcpp: "BoundUV", header: "ShapeAnalysis_Edge.hxx".}
proc isSeam*(this: ShapeAnalysisEdge; edge: TopoDS_Edge; face: TopoDS_Face): bool {.
    noSideEffect, importcpp: "IsSeam", header: "ShapeAnalysis_Edge.hxx".}
proc isSeam*(this: ShapeAnalysisEdge; edge: TopoDS_Edge;
            surface: Handle[GeomSurface]; location: TopLocLocation): bool {.
    noSideEffect, importcpp: "IsSeam", header: "ShapeAnalysis_Edge.hxx".}
proc firstVertex*(this: ShapeAnalysisEdge; edge: TopoDS_Edge): TopoDS_Vertex {.
    noSideEffect, importcpp: "FirstVertex", header: "ShapeAnalysis_Edge.hxx".}
proc lastVertex*(this: ShapeAnalysisEdge; edge: TopoDS_Edge): TopoDS_Vertex {.
    noSideEffect, importcpp: "LastVertex", header: "ShapeAnalysis_Edge.hxx".}
proc getEndTangent2d*(this: ShapeAnalysisEdge; edge: TopoDS_Edge; face: TopoDS_Face;
                     atEnd: bool; pos: var Pnt2d; tang: var Vec2d; dparam: cfloat = 0.0): bool {.
    noSideEffect, importcpp: "GetEndTangent2d", header: "ShapeAnalysis_Edge.hxx".}
proc getEndTangent2d*(this: ShapeAnalysisEdge; edge: TopoDS_Edge;
                     surface: Handle[GeomSurface]; location: TopLocLocation;
                     atEnd: bool; pos: var Pnt2d; tang: var Vec2d; dparam: cfloat = 0.0): bool {.
    noSideEffect, importcpp: "GetEndTangent2d", header: "ShapeAnalysis_Edge.hxx".}
proc checkVerticesWithCurve3d*(this: var ShapeAnalysisEdge; edge: TopoDS_Edge;
                              preci: cfloat = -1; vtx: cint = 0): bool {.
    importcpp: "CheckVerticesWithCurve3d", header: "ShapeAnalysis_Edge.hxx".}
proc checkVerticesWithPCurve*(this: var ShapeAnalysisEdge; edge: TopoDS_Edge;
                             face: TopoDS_Face; preci: cfloat = -1; vtx: cint = 0): bool {.
    importcpp: "CheckVerticesWithPCurve", header: "ShapeAnalysis_Edge.hxx".}
proc checkVerticesWithPCurve*(this: var ShapeAnalysisEdge; edge: TopoDS_Edge;
                             surface: Handle[GeomSurface];
                             location: TopLocLocation; preci: cfloat = -1;
                             vtx: cint = 0): bool {.
    importcpp: "CheckVerticesWithPCurve", header: "ShapeAnalysis_Edge.hxx".}
proc checkVertexTolerance*(this: var ShapeAnalysisEdge; edge: TopoDS_Edge;
                          face: TopoDS_Face; toler1: var cfloat; toler2: var cfloat): bool {.
    importcpp: "CheckVertexTolerance", header: "ShapeAnalysis_Edge.hxx".}
proc checkVertexTolerance*(this: var ShapeAnalysisEdge; edge: TopoDS_Edge;
                          toler1: var cfloat; toler2: var cfloat): bool {.
    importcpp: "CheckVertexTolerance", header: "ShapeAnalysis_Edge.hxx".}
proc checkCurve3dWithPCurve*(this: var ShapeAnalysisEdge; edge: TopoDS_Edge;
                            face: TopoDS_Face): bool {.
    importcpp: "CheckCurve3dWithPCurve", header: "ShapeAnalysis_Edge.hxx".}
proc checkCurve3dWithPCurve*(this: var ShapeAnalysisEdge; edge: TopoDS_Edge;
                            surface: Handle[GeomSurface]; location: TopLocLocation): bool {.
    importcpp: "CheckCurve3dWithPCurve", header: "ShapeAnalysis_Edge.hxx".}
proc status*(this: ShapeAnalysisEdge; status: ShapeExtendStatus): bool {.noSideEffect,
    importcpp: "Status", header: "ShapeAnalysis_Edge.hxx".}
proc checkSameParameter*(this: var ShapeAnalysisEdge; edge: TopoDS_Edge;
                        maxdev: var cfloat; nbControl: cint = 23): bool {.
    importcpp: "CheckSameParameter", header: "ShapeAnalysis_Edge.hxx".}
proc checkSameParameter*(this: var ShapeAnalysisEdge; theEdge: TopoDS_Edge;
                        theFace: TopoDS_Face; theMaxdev: var cfloat;
                        theNbControl: cint = 23): bool {.
    importcpp: "CheckSameParameter", header: "ShapeAnalysis_Edge.hxx".}
proc checkPCurveRange*(this: var ShapeAnalysisEdge; theFirst: cfloat; theLast: cfloat;
                      thePC: Handle[Geom2dCurve]): bool {.
    importcpp: "CheckPCurveRange", header: "ShapeAnalysis_Edge.hxx".}
proc computeDeviation*(cRef: Adaptor3dCurve; other: Adaptor3dCurve;
                      sameParameter: bool; dev: var cfloat; ncontrol: cint): bool {.
    importcpp: "ShapeAnalysis_Edge::ComputeDeviation(@)",
    header: "ShapeAnalysis_Edge.hxx".}
proc checkOverlapping*(this: var ShapeAnalysisEdge; theEdge1: TopoDS_Edge;
                      theEdge2: TopoDS_Edge; theTolOverlap: var cfloat;
                      theDomainDist: cfloat = 0.0): bool {.
    importcpp: "CheckOverlapping", header: "ShapeAnalysis_Edge.hxx".}

























