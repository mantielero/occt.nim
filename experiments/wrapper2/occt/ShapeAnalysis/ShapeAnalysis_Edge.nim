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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../ShapeExtend/ShapeExtend_Status

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
when defined(Status):
  discard
## ! Tool for analyzing the edge.
## ! Queries geometrical representations of the edge (3d curve, pcurve
## ! on the given face or surface) and topological sub-shapes (bounding
## ! vertices).
## ! Provides methods for analyzing geometry and topology consistency
## ! (3d and pcurve(s) consistency, their adjacency to the vertices).

type
  ShapeAnalysis_Edge* {.importcpp: "ShapeAnalysis_Edge",
                       header: "ShapeAnalysis_Edge.hxx", bycopy.} = object ## ! Empty
                                                                      ## constructor;
                                                                      ## initialises Status to OK
                                                                      ## ! Check points by pairs (A and A, B and B) with precisions
                                                                      ## ! (preci1 and preci2).
                                                                      ## ! P1 are the points either from 3d curve or from vertices,
                                                                      ## ! P2 are the points from pcurve


proc constructShapeAnalysis_Edge*(): ShapeAnalysis_Edge {.constructor,
    importcpp: "ShapeAnalysis_Edge(@)", header: "ShapeAnalysis_Edge.hxx".}
proc HasCurve3d*(this: ShapeAnalysis_Edge; edge: TopoDS_Edge): Standard_Boolean {.
    noSideEffect, importcpp: "HasCurve3d", header: "ShapeAnalysis_Edge.hxx".}
proc Curve3d*(this: ShapeAnalysis_Edge; edge: TopoDS_Edge;
             C3d: var handle[Geom_Curve]; cf: var Standard_Real;
             cl: var Standard_Real; orient: Standard_Boolean = Standard_True): Standard_Boolean {.
    noSideEffect, importcpp: "Curve3d", header: "ShapeAnalysis_Edge.hxx".}
proc IsClosed3d*(this: ShapeAnalysis_Edge; edge: TopoDS_Edge): Standard_Boolean {.
    noSideEffect, importcpp: "IsClosed3d", header: "ShapeAnalysis_Edge.hxx".}
proc HasPCurve*(this: ShapeAnalysis_Edge; edge: TopoDS_Edge; face: TopoDS_Face): Standard_Boolean {.
    noSideEffect, importcpp: "HasPCurve", header: "ShapeAnalysis_Edge.hxx".}
proc HasPCurve*(this: ShapeAnalysis_Edge; edge: TopoDS_Edge;
               surface: handle[Geom_Surface]; location: TopLoc_Location): Standard_Boolean {.
    noSideEffect, importcpp: "HasPCurve", header: "ShapeAnalysis_Edge.hxx".}
proc PCurve*(this: ShapeAnalysis_Edge; edge: TopoDS_Edge; face: TopoDS_Face;
            C2d: var handle[Geom2d_Curve]; cf: var Standard_Real;
            cl: var Standard_Real; orient: Standard_Boolean = Standard_True): Standard_Boolean {.
    noSideEffect, importcpp: "PCurve", header: "ShapeAnalysis_Edge.hxx".}
proc PCurve*(this: ShapeAnalysis_Edge; edge: TopoDS_Edge;
            surface: handle[Geom_Surface]; location: TopLoc_Location;
            C2d: var handle[Geom2d_Curve]; cf: var Standard_Real;
            cl: var Standard_Real; orient: Standard_Boolean = Standard_True): Standard_Boolean {.
    noSideEffect, importcpp: "PCurve", header: "ShapeAnalysis_Edge.hxx".}
proc BoundUV*(this: ShapeAnalysis_Edge; edge: TopoDS_Edge; face: TopoDS_Face;
             first: var gp_Pnt2d; last: var gp_Pnt2d): Standard_Boolean {.noSideEffect,
    importcpp: "BoundUV", header: "ShapeAnalysis_Edge.hxx".}
proc BoundUV*(this: ShapeAnalysis_Edge; edge: TopoDS_Edge;
             surface: handle[Geom_Surface]; location: TopLoc_Location;
             first: var gp_Pnt2d; last: var gp_Pnt2d): Standard_Boolean {.noSideEffect,
    importcpp: "BoundUV", header: "ShapeAnalysis_Edge.hxx".}
proc IsSeam*(this: ShapeAnalysis_Edge; edge: TopoDS_Edge; face: TopoDS_Face): Standard_Boolean {.
    noSideEffect, importcpp: "IsSeam", header: "ShapeAnalysis_Edge.hxx".}
proc IsSeam*(this: ShapeAnalysis_Edge; edge: TopoDS_Edge;
            surface: handle[Geom_Surface]; location: TopLoc_Location): Standard_Boolean {.
    noSideEffect, importcpp: "IsSeam", header: "ShapeAnalysis_Edge.hxx".}
proc FirstVertex*(this: ShapeAnalysis_Edge; edge: TopoDS_Edge): TopoDS_Vertex {.
    noSideEffect, importcpp: "FirstVertex", header: "ShapeAnalysis_Edge.hxx".}
proc LastVertex*(this: ShapeAnalysis_Edge; edge: TopoDS_Edge): TopoDS_Vertex {.
    noSideEffect, importcpp: "LastVertex", header: "ShapeAnalysis_Edge.hxx".}
proc GetEndTangent2d*(this: ShapeAnalysis_Edge; edge: TopoDS_Edge; face: TopoDS_Face;
                     atEnd: Standard_Boolean; pos: var gp_Pnt2d; tang: var gp_Vec2d;
                     dparam: Standard_Real = 0.0): Standard_Boolean {.noSideEffect,
    importcpp: "GetEndTangent2d", header: "ShapeAnalysis_Edge.hxx".}
proc GetEndTangent2d*(this: ShapeAnalysis_Edge; edge: TopoDS_Edge;
                     surface: handle[Geom_Surface]; location: TopLoc_Location;
                     atEnd: Standard_Boolean; pos: var gp_Pnt2d; tang: var gp_Vec2d;
                     dparam: Standard_Real = 0.0): Standard_Boolean {.noSideEffect,
    importcpp: "GetEndTangent2d", header: "ShapeAnalysis_Edge.hxx".}
proc CheckVerticesWithCurve3d*(this: var ShapeAnalysis_Edge; edge: TopoDS_Edge;
                              preci: Standard_Real = -1; vtx: Standard_Integer = 0): Standard_Boolean {.
    importcpp: "CheckVerticesWithCurve3d", header: "ShapeAnalysis_Edge.hxx".}
proc CheckVerticesWithPCurve*(this: var ShapeAnalysis_Edge; edge: TopoDS_Edge;
                             face: TopoDS_Face; preci: Standard_Real = -1;
                             vtx: Standard_Integer = 0): Standard_Boolean {.
    importcpp: "CheckVerticesWithPCurve", header: "ShapeAnalysis_Edge.hxx".}
proc CheckVerticesWithPCurve*(this: var ShapeAnalysis_Edge; edge: TopoDS_Edge;
                             surface: handle[Geom_Surface];
                             location: TopLoc_Location;
                             preci: Standard_Real = -1; vtx: Standard_Integer = 0): Standard_Boolean {.
    importcpp: "CheckVerticesWithPCurve", header: "ShapeAnalysis_Edge.hxx".}
proc CheckVertexTolerance*(this: var ShapeAnalysis_Edge; edge: TopoDS_Edge;
                          face: TopoDS_Face; toler1: var Standard_Real;
                          toler2: var Standard_Real): Standard_Boolean {.
    importcpp: "CheckVertexTolerance", header: "ShapeAnalysis_Edge.hxx".}
proc CheckVertexTolerance*(this: var ShapeAnalysis_Edge; edge: TopoDS_Edge;
                          toler1: var Standard_Real; toler2: var Standard_Real): Standard_Boolean {.
    importcpp: "CheckVertexTolerance", header: "ShapeAnalysis_Edge.hxx".}
proc CheckCurve3dWithPCurve*(this: var ShapeAnalysis_Edge; edge: TopoDS_Edge;
                            face: TopoDS_Face): Standard_Boolean {.
    importcpp: "CheckCurve3dWithPCurve", header: "ShapeAnalysis_Edge.hxx".}
proc CheckCurve3dWithPCurve*(this: var ShapeAnalysis_Edge; edge: TopoDS_Edge;
                            surface: handle[Geom_Surface];
                            location: TopLoc_Location): Standard_Boolean {.
    importcpp: "CheckCurve3dWithPCurve", header: "ShapeAnalysis_Edge.hxx".}
proc Status*(this: ShapeAnalysis_Edge; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "Status", header: "ShapeAnalysis_Edge.hxx".}
proc CheckSameParameter*(this: var ShapeAnalysis_Edge; edge: TopoDS_Edge;
                        maxdev: var Standard_Real; NbControl: Standard_Integer = 23): Standard_Boolean {.
    importcpp: "CheckSameParameter", header: "ShapeAnalysis_Edge.hxx".}
proc CheckSameParameter*(this: var ShapeAnalysis_Edge; theEdge: TopoDS_Edge;
                        theFace: TopoDS_Face; theMaxdev: var Standard_Real;
                        theNbControl: Standard_Integer = 23): Standard_Boolean {.
    importcpp: "CheckSameParameter", header: "ShapeAnalysis_Edge.hxx".}
proc CheckPCurveRange*(this: var ShapeAnalysis_Edge; theFirst: Standard_Real;
                      theLast: Standard_Real; thePC: handle[Geom2d_Curve]): Standard_Boolean {.
    importcpp: "CheckPCurveRange", header: "ShapeAnalysis_Edge.hxx".}
proc ComputeDeviation*(CRef: Adaptor3d_Curve; Other: Adaptor3d_Curve;
                      SameParameter: Standard_Boolean; dev: var Standard_Real;
                      NCONTROL: Standard_Integer): Standard_Boolean {.
    importcpp: "ShapeAnalysis_Edge::ComputeDeviation(@)",
    header: "ShapeAnalysis_Edge.hxx".}
proc CheckOverlapping*(this: var ShapeAnalysis_Edge; theEdge1: TopoDS_Edge;
                      theEdge2: TopoDS_Edge; theTolOverlap: var Standard_Real;
                      theDomainDist: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "CheckOverlapping", header: "ShapeAnalysis_Edge.hxx".}