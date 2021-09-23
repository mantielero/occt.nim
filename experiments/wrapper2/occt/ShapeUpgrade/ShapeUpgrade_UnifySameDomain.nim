##  Copyright: Open CASCADE 2014
##  Created on: 2012-06-09
##  Created by: jgv@ROLEX
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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
  ../BRepTools/BRepTools_History, ../Standard/Standard, ../Standard/Standard_Type,
  ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Shape, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient, ../TopTools/TopTools_DataMapOfShapeShape,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape,
  ../TopTools/TopTools_MapOfShape, ../TopTools/TopTools_SequenceOfShape,
  ../Geom/Geom_Plane, ../Precision/Precision

discard "forward decl of ShapeBuild_ReShape"
discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeUpgrade_UnifySameDomain"
discard "forward decl of ShapeUpgrade_UnifySameDomain"
type
  Handle_ShapeUpgrade_UnifySameDomain* = handle[ShapeUpgrade_UnifySameDomain]

## ! This tool tries to unify faces and edges of the shape which lie on the same geometry.
## ! Faces/edges are considering as 'same-domain' if a group of neighbouring faces/edges
## ! are lying on coincident surfaces/curves.
## ! In this case these faces/edges can be unified into one face/edge.
## ! ShapeUpgrade_UnifySameDomain is initialized by a shape and the next optional parameters:
## ! UnifyFaces - tries to unify all possible faces
## ! UnifyEdges - tries to unify all possible edges
## ! ConcatBSplines - if this flag is set to true then all neighbouring edges, which lay
## ! on BSpline or Bezier curves with C1 continuity on their common vertices,
## ! will be merged into one common edge.
## !
## ! The input shape can be of any type containing faces or edges - compsolid, solid, shell,
## ! wire, compound of any kind of shapes. The algorithm preserves the structure of compsolids,
## ! solids, shells and wires. E.g., if two shells have a common edge and the faces sharing
## ! this edge lie on the same surface the algorithm will not unify these faces, otherwise
## ! the structure of shells would be broken. However, if such faces belong to different
## ! compounds of faces they will be unified.
## !
## ! The output result of the tool is the unified shape.
## !
## ! All the modifications of initial shape are recorded during unifying.
## ! Methods History are intended to: <br>
## ! - set a place holder for the history of modifications of sub-shapes of
## !   the initial shape; <br>
## ! - get the collected history. <br>
## ! The algorithm provides a place holder for the history and collects the
## ! history by default.
## ! To avoid collecting of the history the place holder should be set to null handle.

type
  SubSequenceOfEdges* {.importcpp: "SubSequenceOfEdges",
                       header: "ShapeUpgrade_UnifySameDomain.hxx", bycopy.} = object
    SeqsEdges* {.importc: "SeqsEdges".}: TopTools_SequenceOfShape
    UnionEdges* {.importc: "UnionEdges".}: TopoDS_Edge

  ShapeUpgrade_UnifySameDomain* {.importcpp: "ShapeUpgrade_UnifySameDomain",
                                 header: "ShapeUpgrade_UnifySameDomain.hxx",
                                 bycopy.} = object of Standard_Transient ## ! This method makes if possible a common face from each
                                                                    ## ! group of faces lying on coincident surfaces
    ## !< The history.

  ShapeUpgrade_UnifySameDomainDataMapOfFacePlane* = NCollection_DataMap[
      TopoDS_Shape, handle[Geom_Plane], TopTools_ShapeMapHasher]

proc constructShapeUpgrade_UnifySameDomain*(): ShapeUpgrade_UnifySameDomain {.
    constructor, importcpp: "ShapeUpgrade_UnifySameDomain(@)",
    header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc constructShapeUpgrade_UnifySameDomain*(aShape: TopoDS_Shape;
    UnifyEdges: Standard_Boolean = Standard_True;
    UnifyFaces: Standard_Boolean = Standard_True;
    ConcatBSplines: Standard_Boolean = Standard_False): ShapeUpgrade_UnifySameDomain {.
    constructor, importcpp: "ShapeUpgrade_UnifySameDomain(@)",
    header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc Initialize*(this: var ShapeUpgrade_UnifySameDomain; aShape: TopoDS_Shape;
                UnifyEdges: Standard_Boolean = Standard_True;
                UnifyFaces: Standard_Boolean = Standard_True;
                ConcatBSplines: Standard_Boolean = Standard_False) {.
    importcpp: "Initialize", header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc AllowInternalEdges*(this: var ShapeUpgrade_UnifySameDomain;
                        theValue: Standard_Boolean) {.
    importcpp: "AllowInternalEdges", header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc KeepShape*(this: var ShapeUpgrade_UnifySameDomain; theShape: TopoDS_Shape) {.
    importcpp: "KeepShape", header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc KeepShapes*(this: var ShapeUpgrade_UnifySameDomain;
                theShapes: TopTools_MapOfShape) {.importcpp: "KeepShapes",
    header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc SetSafeInputMode*(this: var ShapeUpgrade_UnifySameDomain;
                      theValue: Standard_Boolean) {.importcpp: "SetSafeInputMode",
    header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc SetLinearTolerance*(this: var ShapeUpgrade_UnifySameDomain;
                        theValue: Standard_Real) {.
    importcpp: "SetLinearTolerance", header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc SetAngularTolerance*(this: var ShapeUpgrade_UnifySameDomain;
                         theValue: Standard_Real) {.
    importcpp: "SetAngularTolerance", header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc Build*(this: var ShapeUpgrade_UnifySameDomain) {.importcpp: "Build",
    header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc Shape*(this: ShapeUpgrade_UnifySameDomain): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc History*(this: ShapeUpgrade_UnifySameDomain): handle[BRepTools_History] {.
    noSideEffect, importcpp: "History", header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc History*(this: var ShapeUpgrade_UnifySameDomain): var handle[BRepTools_History] {.
    importcpp: "History", header: "ShapeUpgrade_UnifySameDomain.hxx".}
type
  ShapeUpgrade_UnifySameDomainbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_UnifySameDomain::get_type_name(@)",
                              header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_UnifySameDomain::get_type_descriptor(@)",
    header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc DynamicType*(this: ShapeUpgrade_UnifySameDomain): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_UnifySameDomain.hxx".}