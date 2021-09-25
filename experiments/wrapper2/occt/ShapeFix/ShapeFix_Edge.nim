##  Created on: 1998-06-17
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

discard "forward decl of ShapeConstruct_ProjectCurveOnSurface"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of ShapeAnalysis_Surface"
discard "forward decl of ShapeBuild_ReShape"
# when defined(Status):
#   discard
discard "forward decl of ShapeFix_Edge"
discard "forward decl of ShapeFix_Edge"
type
  HandleShapeFixEdge* = Handle[ShapeFixEdge]

## ! Fixing invalid edge.
## ! Geometrical and/or topological inconsistency:
## ! - no 3d curve or pcurve,
## ! - mismatching orientation of 3d curve and pcurve,
## ! - incorrect SameParameter flag (curve deviation is greater than
## ! edge tolerance),
## ! - not adjacent curves (3d or pcurve) to the vertices.

type
  ShapeFixEdge* {.importcpp: "ShapeFix_Edge", header: "ShapeFix_Edge.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructShapeFixEdge*(): ShapeFixEdge {.constructor,
    importcpp: "ShapeFix_Edge(@)", header: "ShapeFix_Edge.hxx".}
proc projector*(this: var ShapeFixEdge): Handle[ShapeConstructProjectCurveOnSurface] {.
    importcpp: "Projector", header: "ShapeFix_Edge.hxx".}
proc fixRemovePCurve*(this: var ShapeFixEdge; edge: TopoDS_Edge; face: TopoDS_Face): bool {.
    importcpp: "FixRemovePCurve", header: "ShapeFix_Edge.hxx".}
proc fixRemovePCurve*(this: var ShapeFixEdge; edge: TopoDS_Edge;
                     surface: Handle[GeomSurface]; location: TopLocLocation): bool {.
    importcpp: "FixRemovePCurve", header: "ShapeFix_Edge.hxx".}
proc fixRemoveCurve3d*(this: var ShapeFixEdge; edge: TopoDS_Edge): bool {.
    importcpp: "FixRemoveCurve3d", header: "ShapeFix_Edge.hxx".}
proc fixAddPCurve*(this: var ShapeFixEdge; edge: TopoDS_Edge; face: TopoDS_Face;
                  isSeam: bool; prec: float = 0.0): bool {.importcpp: "FixAddPCurve",
    header: "ShapeFix_Edge.hxx".}
proc fixAddPCurve*(this: var ShapeFixEdge; edge: TopoDS_Edge;
                  surface: Handle[GeomSurface]; location: TopLocLocation;
                  isSeam: bool; prec: float = 0.0): bool {.importcpp: "FixAddPCurve",
    header: "ShapeFix_Edge.hxx".}
proc fixAddPCurve*(this: var ShapeFixEdge; edge: TopoDS_Edge; face: TopoDS_Face;
                  isSeam: bool; surfana: Handle[ShapeAnalysisSurface];
                  prec: float = 0.0): bool {.importcpp: "FixAddPCurve",
                                        header: "ShapeFix_Edge.hxx".}
proc fixAddPCurve*(this: var ShapeFixEdge; edge: TopoDS_Edge;
                  surface: Handle[GeomSurface]; location: TopLocLocation;
                  isSeam: bool; surfana: Handle[ShapeAnalysisSurface];
                  prec: float = 0.0): bool {.importcpp: "FixAddPCurve",
                                        header: "ShapeFix_Edge.hxx".}
proc fixAddCurve3d*(this: var ShapeFixEdge; edge: TopoDS_Edge): bool {.
    importcpp: "FixAddCurve3d", header: "ShapeFix_Edge.hxx".}
proc fixVertexTolerance*(this: var ShapeFixEdge; edge: TopoDS_Edge; face: TopoDS_Face): bool {.
    importcpp: "FixVertexTolerance", header: "ShapeFix_Edge.hxx".}
proc fixVertexTolerance*(this: var ShapeFixEdge; edge: TopoDS_Edge): bool {.
    importcpp: "FixVertexTolerance", header: "ShapeFix_Edge.hxx".}
proc fixReversed2d*(this: var ShapeFixEdge; edge: TopoDS_Edge; face: TopoDS_Face): bool {.
    importcpp: "FixReversed2d", header: "ShapeFix_Edge.hxx".}
proc fixReversed2d*(this: var ShapeFixEdge; edge: TopoDS_Edge;
                   surface: Handle[GeomSurface]; location: TopLocLocation): bool {.
    importcpp: "FixReversed2d", header: "ShapeFix_Edge.hxx".}
proc fixSameParameter*(this: var ShapeFixEdge; edge: TopoDS_Edge;
                      tolerance: float = 0.0): bool {.importcpp: "FixSameParameter",
    header: "ShapeFix_Edge.hxx".}
proc fixSameParameter*(this: var ShapeFixEdge; edge: TopoDS_Edge; face: TopoDS_Face;
                      tolerance: float = 0.0): bool {.importcpp: "FixSameParameter",
    header: "ShapeFix_Edge.hxx".}
proc status*(this: ShapeFixEdge; status: ShapeExtendStatus): bool {.noSideEffect,
    importcpp: "Status", header: "ShapeFix_Edge.hxx".}
proc setContext*(this: var ShapeFixEdge; context: Handle[ShapeBuildReShape]) {.
    importcpp: "SetContext", header: "ShapeFix_Edge.hxx".}
proc context*(this: ShapeFixEdge): Handle[ShapeBuildReShape] {.noSideEffect,
    importcpp: "Context", header: "ShapeFix_Edge.hxx".}
type
  ShapeFixEdgebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeFix_Edge::get_type_name(@)",
                            header: "ShapeFix_Edge.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeFix_Edge::get_type_descriptor(@)",
    header: "ShapeFix_Edge.hxx".}
proc dynamicType*(this: ShapeFixEdge): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_Edge.hxx".}
