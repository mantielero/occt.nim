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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../ShapeExtend/ShapeExtend_Status

discard "forward decl of ShapeConstruct_ProjectCurveOnSurface"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of ShapeAnalysis_Surface"
discard "forward decl of ShapeBuild_ReShape"
when defined(Status):
  discard
discard "forward decl of ShapeFix_Edge"
discard "forward decl of ShapeFix_Edge"
type
  Handle_ShapeFix_Edge* = handle[ShapeFix_Edge]

## ! Fixing invalid edge.
## ! Geometrical and/or topological inconsistency:
## ! - no 3d curve or pcurve,
## ! - mismatching orientation of 3d curve and pcurve,
## ! - incorrect SameParameter flag (curve deviation is greater than
## ! edge tolerance),
## ! - not adjacent curves (3d or pcurve) to the vertices.

type
  ShapeFix_Edge* {.importcpp: "ShapeFix_Edge", header: "ShapeFix_Edge.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor


proc constructShapeFix_Edge*(): ShapeFix_Edge {.constructor,
    importcpp: "ShapeFix_Edge(@)", header: "ShapeFix_Edge.hxx".}
proc Projector*(this: var ShapeFix_Edge): handle[
    ShapeConstruct_ProjectCurveOnSurface] {.importcpp: "Projector",
    header: "ShapeFix_Edge.hxx".}
proc FixRemovePCurve*(this: var ShapeFix_Edge; edge: TopoDS_Edge; face: TopoDS_Face): Standard_Boolean {.
    importcpp: "FixRemovePCurve", header: "ShapeFix_Edge.hxx".}
proc FixRemovePCurve*(this: var ShapeFix_Edge; edge: TopoDS_Edge;
                     surface: handle[Geom_Surface]; location: TopLoc_Location): Standard_Boolean {.
    importcpp: "FixRemovePCurve", header: "ShapeFix_Edge.hxx".}
proc FixRemoveCurve3d*(this: var ShapeFix_Edge; edge: TopoDS_Edge): Standard_Boolean {.
    importcpp: "FixRemoveCurve3d", header: "ShapeFix_Edge.hxx".}
proc FixAddPCurve*(this: var ShapeFix_Edge; edge: TopoDS_Edge; face: TopoDS_Face;
                  isSeam: Standard_Boolean; prec: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "FixAddPCurve", header: "ShapeFix_Edge.hxx".}
proc FixAddPCurve*(this: var ShapeFix_Edge; edge: TopoDS_Edge;
                  surface: handle[Geom_Surface]; location: TopLoc_Location;
                  isSeam: Standard_Boolean; prec: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "FixAddPCurve", header: "ShapeFix_Edge.hxx".}
proc FixAddPCurve*(this: var ShapeFix_Edge; edge: TopoDS_Edge; face: TopoDS_Face;
                  isSeam: Standard_Boolean;
                  surfana: handle[ShapeAnalysis_Surface];
                  prec: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "FixAddPCurve", header: "ShapeFix_Edge.hxx".}
proc FixAddPCurve*(this: var ShapeFix_Edge; edge: TopoDS_Edge;
                  surface: handle[Geom_Surface]; location: TopLoc_Location;
                  isSeam: Standard_Boolean;
                  surfana: handle[ShapeAnalysis_Surface];
                  prec: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "FixAddPCurve", header: "ShapeFix_Edge.hxx".}
proc FixAddCurve3d*(this: var ShapeFix_Edge; edge: TopoDS_Edge): Standard_Boolean {.
    importcpp: "FixAddCurve3d", header: "ShapeFix_Edge.hxx".}
proc FixVertexTolerance*(this: var ShapeFix_Edge; edge: TopoDS_Edge; face: TopoDS_Face): Standard_Boolean {.
    importcpp: "FixVertexTolerance", header: "ShapeFix_Edge.hxx".}
proc FixVertexTolerance*(this: var ShapeFix_Edge; edge: TopoDS_Edge): Standard_Boolean {.
    importcpp: "FixVertexTolerance", header: "ShapeFix_Edge.hxx".}
proc FixReversed2d*(this: var ShapeFix_Edge; edge: TopoDS_Edge; face: TopoDS_Face): Standard_Boolean {.
    importcpp: "FixReversed2d", header: "ShapeFix_Edge.hxx".}
proc FixReversed2d*(this: var ShapeFix_Edge; edge: TopoDS_Edge;
                   surface: handle[Geom_Surface]; location: TopLoc_Location): Standard_Boolean {.
    importcpp: "FixReversed2d", header: "ShapeFix_Edge.hxx".}
proc FixSameParameter*(this: var ShapeFix_Edge; edge: TopoDS_Edge;
                      tolerance: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "FixSameParameter", header: "ShapeFix_Edge.hxx".}
proc FixSameParameter*(this: var ShapeFix_Edge; edge: TopoDS_Edge; face: TopoDS_Face;
                      tolerance: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "FixSameParameter", header: "ShapeFix_Edge.hxx".}
proc Status*(this: ShapeFix_Edge; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "Status", header: "ShapeFix_Edge.hxx".}
proc SetContext*(this: var ShapeFix_Edge; context: handle[ShapeBuild_ReShape]) {.
    importcpp: "SetContext", header: "ShapeFix_Edge.hxx".}
proc Context*(this: ShapeFix_Edge): handle[ShapeBuild_ReShape] {.noSideEffect,
    importcpp: "Context", header: "ShapeFix_Edge.hxx".}
type
  ShapeFix_Edgebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeFix_Edge::get_type_name(@)",
                              header: "ShapeFix_Edge.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeFix_Edge::get_type_descriptor(@)",
    header: "ShapeFix_Edge.hxx".}
proc DynamicType*(this: ShapeFix_Edge): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_Edge.hxx".}