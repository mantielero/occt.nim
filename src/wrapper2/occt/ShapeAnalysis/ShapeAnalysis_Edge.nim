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
proc hasCurve3d*(this: ShapeAnalysisEdge; edge: TopoDS_Edge): StandardBoolean {.
    noSideEffect, importcpp: "HasCurve3d", header: "ShapeAnalysis_Edge.hxx".}
proc curve3d*(this: ShapeAnalysisEdge; edge: TopoDS_Edge; c3d: var Handle[GeomCurve];
             cf: var StandardReal; cl: var StandardReal;
             orient: StandardBoolean = standardTrue): StandardBoolean {.noSideEffect,
    importcpp: "Curve3d", header: "ShapeAnalysis_Edge.hxx".}
proc isClosed3d*(this: ShapeAnalysisEdge; edge: TopoDS_Edge): StandardBoolean {.
    noSideEffect, importcpp: "IsClosed3d", header: "ShapeAnalysis_Edge.hxx".}
proc hasPCurve*(this: ShapeAnalysisEdge; edge: TopoDS_Edge; face: TopoDS_Face): StandardBoolean {.
    noSideEffect, importcpp: "HasPCurve", header: "ShapeAnalysis_Edge.hxx".}
proc hasPCurve*(this: ShapeAnalysisEdge; edge: TopoDS_Edge;
               surface: Handle[GeomSurface]; location: TopLocLocation): StandardBoolean {.
    noSideEffect, importcpp: "HasPCurve", header: "ShapeAnalysis_Edge.hxx".}
proc pCurve*(this: ShapeAnalysisEdge; edge: TopoDS_Edge; face: TopoDS_Face;
            c2d: var Handle[Geom2dCurve]; cf: var StandardReal; cl: var StandardReal;
            orient: StandardBoolean = standardTrue): StandardBoolean {.noSideEffect,
    importcpp: "PCurve", header: "ShapeAnalysis_Edge.hxx".}
proc pCurve*(this: ShapeAnalysisEdge; edge: TopoDS_Edge;
            surface: Handle[GeomSurface]; location: TopLocLocation;
            c2d: var Handle[Geom2dCurve]; cf: var StandardReal; cl: var StandardReal;
            orient: StandardBoolean = standardTrue): StandardBoolean {.noSideEffect,
    importcpp: "PCurve", header: "ShapeAnalysis_Edge.hxx".}
proc boundUV*(this: ShapeAnalysisEdge; edge: TopoDS_Edge; face: TopoDS_Face;
             first: var GpPnt2d; last: var GpPnt2d): StandardBoolean {.noSideEffect,
    importcpp: "BoundUV", header: "ShapeAnalysis_Edge.hxx".}
proc boundUV*(this: ShapeAnalysisEdge; edge: TopoDS_Edge;
             surface: Handle[GeomSurface]; location: TopLocLocation;
             first: var GpPnt2d; last: var GpPnt2d): StandardBoolean {.noSideEffect,
    importcpp: "BoundUV", header: "ShapeAnalysis_Edge.hxx".}
proc isSeam*(this: ShapeAnalysisEdge; edge: TopoDS_Edge; face: TopoDS_Face): StandardBoolean {.
    noSideEffect, importcpp: "IsSeam", header: "ShapeAnalysis_Edge.hxx".}
proc isSeam*(this: ShapeAnalysisEdge; edge: TopoDS_Edge;
            surface: Handle[GeomSurface]; location: TopLocLocation): StandardBoolean {.
    noSideEffect, importcpp: "IsSeam", header: "ShapeAnalysis_Edge.hxx".}
proc firstVertex*(this: ShapeAnalysisEdge; edge: TopoDS_Edge): TopoDS_Vertex {.
    noSideEffect, importcpp: "FirstVertex", header: "ShapeAnalysis_Edge.hxx".}
proc lastVertex*(this: ShapeAnalysisEdge; edge: TopoDS_Edge): TopoDS_Vertex {.
    noSideEffect, importcpp: "LastVertex", header: "ShapeAnalysis_Edge.hxx".}
proc getEndTangent2d*(this: ShapeAnalysisEdge; edge: TopoDS_Edge; face: TopoDS_Face;
                     atEnd: StandardBoolean; pos: var GpPnt2d; tang: var GpVec2d;
                     dparam: StandardReal = 0.0): StandardBoolean {.noSideEffect,
    importcpp: "GetEndTangent2d", header: "ShapeAnalysis_Edge.hxx".}
proc getEndTangent2d*(this: ShapeAnalysisEdge; edge: TopoDS_Edge;
                     surface: Handle[GeomSurface]; location: TopLocLocation;
                     atEnd: StandardBoolean; pos: var GpPnt2d; tang: var GpVec2d;
                     dparam: StandardReal = 0.0): StandardBoolean {.noSideEffect,
    importcpp: "GetEndTangent2d", header: "ShapeAnalysis_Edge.hxx".}
proc checkVerticesWithCurve3d*(this: var ShapeAnalysisEdge; edge: TopoDS_Edge;
                              preci: StandardReal = -1; vtx: StandardInteger = 0): StandardBoolean {.
    importcpp: "CheckVerticesWithCurve3d", header: "ShapeAnalysis_Edge.hxx".}
proc checkVerticesWithPCurve*(this: var ShapeAnalysisEdge; edge: TopoDS_Edge;
                             face: TopoDS_Face; preci: StandardReal = -1;
                             vtx: StandardInteger = 0): StandardBoolean {.
    importcpp: "CheckVerticesWithPCurve", header: "ShapeAnalysis_Edge.hxx".}
proc checkVerticesWithPCurve*(this: var ShapeAnalysisEdge; edge: TopoDS_Edge;
                             surface: Handle[GeomSurface];
                             location: TopLocLocation; preci: StandardReal = -1;
                             vtx: StandardInteger = 0): StandardBoolean {.
    importcpp: "CheckVerticesWithPCurve", header: "ShapeAnalysis_Edge.hxx".}
proc checkVertexTolerance*(this: var ShapeAnalysisEdge; edge: TopoDS_Edge;
                          face: TopoDS_Face; toler1: var StandardReal;
                          toler2: var StandardReal): StandardBoolean {.
    importcpp: "CheckVertexTolerance", header: "ShapeAnalysis_Edge.hxx".}
proc checkVertexTolerance*(this: var ShapeAnalysisEdge; edge: TopoDS_Edge;
                          toler1: var StandardReal; toler2: var StandardReal): StandardBoolean {.
    importcpp: "CheckVertexTolerance", header: "ShapeAnalysis_Edge.hxx".}
proc checkCurve3dWithPCurve*(this: var ShapeAnalysisEdge; edge: TopoDS_Edge;
                            face: TopoDS_Face): StandardBoolean {.
    importcpp: "CheckCurve3dWithPCurve", header: "ShapeAnalysis_Edge.hxx".}
proc checkCurve3dWithPCurve*(this: var ShapeAnalysisEdge; edge: TopoDS_Edge;
                            surface: Handle[GeomSurface]; location: TopLocLocation): StandardBoolean {.
    importcpp: "CheckCurve3dWithPCurve", header: "ShapeAnalysis_Edge.hxx".}
proc status*(this: ShapeAnalysisEdge; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "Status", header: "ShapeAnalysis_Edge.hxx".}
proc checkSameParameter*(this: var ShapeAnalysisEdge; edge: TopoDS_Edge;
                        maxdev: var StandardReal; nbControl: StandardInteger = 23): StandardBoolean {.
    importcpp: "CheckSameParameter", header: "ShapeAnalysis_Edge.hxx".}
proc checkSameParameter*(this: var ShapeAnalysisEdge; theEdge: TopoDS_Edge;
                        theFace: TopoDS_Face; theMaxdev: var StandardReal;
                        theNbControl: StandardInteger = 23): StandardBoolean {.
    importcpp: "CheckSameParameter", header: "ShapeAnalysis_Edge.hxx".}
proc checkPCurveRange*(this: var ShapeAnalysisEdge; theFirst: StandardReal;
                      theLast: StandardReal; thePC: Handle[Geom2dCurve]): StandardBoolean {.
    importcpp: "CheckPCurveRange", header: "ShapeAnalysis_Edge.hxx".}
proc computeDeviation*(cRef: Adaptor3dCurve; other: Adaptor3dCurve;
                      sameParameter: StandardBoolean; dev: var StandardReal;
                      ncontrol: StandardInteger): StandardBoolean {.
    importcpp: "ShapeAnalysis_Edge::ComputeDeviation(@)",
    header: "ShapeAnalysis_Edge.hxx".}
proc checkOverlapping*(this: var ShapeAnalysisEdge; theEdge1: TopoDS_Edge;
                      theEdge2: TopoDS_Edge; theTolOverlap: var StandardReal;
                      theDomainDist: StandardReal = 0.0): StandardBoolean {.
    importcpp: "CheckOverlapping", header: "ShapeAnalysis_Edge.hxx".}

