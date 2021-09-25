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

discard "forward decl of ShapeBuild_ReShape"
discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeUpgrade_UnifySameDomain"
discard "forward decl of ShapeUpgrade_UnifySameDomain"
type
  HandleShapeUpgradeUnifySameDomain* = Handle[ShapeUpgradeUnifySameDomain]

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
    seqsEdges* {.importc: "SeqsEdges".}: TopToolsSequenceOfShape
    unionEdges* {.importc: "UnionEdges".}: TopoDS_Edge

  ShapeUpgradeUnifySameDomain* {.importcpp: "ShapeUpgrade_UnifySameDomain",
                                header: "ShapeUpgrade_UnifySameDomain.hxx", bycopy.} = object of StandardTransient ##
                                                                                                            ## !
                                                                                                            ## This
                                                                                                            ## method
                                                                                                            ## makes
                                                                                                            ## if
                                                                                                            ## possible
                                                                                                            ## a
                                                                                                            ## common
                                                                                                            ## face
                                                                                                            ## from
                                                                                                            ## each
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## group
                                                                                                            ## of
                                                                                                            ## faces
                                                                                                            ## lying
                                                                                                            ## on
                                                                                                            ## coincident
                                                                                                            ## surfaces
    ## !< The history.

  ShapeUpgradeUnifySameDomainDataMapOfFacePlane* = NCollectionDataMap[
      TopoDS_Shape, Handle[GeomPlane], TopToolsShapeMapHasher]

proc constructShapeUpgradeUnifySameDomain*(): ShapeUpgradeUnifySameDomain {.
    constructor, importcpp: "ShapeUpgrade_UnifySameDomain(@)",
    header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc constructShapeUpgradeUnifySameDomain*(aShape: TopoDS_Shape;
    unifyEdges: bool = true; unifyFaces: bool = true; concatBSplines: bool = false): ShapeUpgradeUnifySameDomain {.
    constructor, importcpp: "ShapeUpgrade_UnifySameDomain(@)",
    header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc initialize*(this: var ShapeUpgradeUnifySameDomain; aShape: TopoDS_Shape;
                unifyEdges: bool = true; unifyFaces: bool = true;
                concatBSplines: bool = false) {.importcpp: "Initialize",
    header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc allowInternalEdges*(this: var ShapeUpgradeUnifySameDomain; theValue: bool) {.
    importcpp: "AllowInternalEdges", header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc keepShape*(this: var ShapeUpgradeUnifySameDomain; theShape: TopoDS_Shape) {.
    importcpp: "KeepShape", header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc keepShapes*(this: var ShapeUpgradeUnifySameDomain;
                theShapes: TopToolsMapOfShape) {.importcpp: "KeepShapes",
    header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc setSafeInputMode*(this: var ShapeUpgradeUnifySameDomain; theValue: bool) {.
    importcpp: "SetSafeInputMode", header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc setLinearTolerance*(this: var ShapeUpgradeUnifySameDomain; theValue: float) {.
    importcpp: "SetLinearTolerance", header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc setAngularTolerance*(this: var ShapeUpgradeUnifySameDomain; theValue: float) {.
    importcpp: "SetAngularTolerance", header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc build*(this: var ShapeUpgradeUnifySameDomain) {.importcpp: "Build",
    header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc shape*(this: ShapeUpgradeUnifySameDomain): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc history*(this: ShapeUpgradeUnifySameDomain): Handle[BRepToolsHistory] {.
    noSideEffect, importcpp: "History", header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc history*(this: var ShapeUpgradeUnifySameDomain): var Handle[BRepToolsHistory] {.
    importcpp: "History", header: "ShapeUpgrade_UnifySameDomain.hxx".}
type
  ShapeUpgradeUnifySameDomainbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_UnifySameDomain::get_type_name(@)",
                            header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_UnifySameDomain::get_type_descriptor(@)",
    header: "ShapeUpgrade_UnifySameDomain.hxx".}
proc dynamicType*(this: ShapeUpgradeUnifySameDomain): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_UnifySameDomain.hxx".}
