##  Created on: 1998-06-03
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

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of ShapeExtend_WireData"
discard "forward decl of ShapeExtend_WireData"
type
  HandleC1C1* = Handle[ShapeExtendWireData]

## ! This class provides a data structure necessary for work with the wire as with
## ! ordered list of edges, what is required for many algorithms. The advantage of
## ! this class is that it allows to work with wires which are not correct.
## ! The object of the class ShapeExtend_WireData can be initialized by
## ! TopoDS_Wire, and converted back to TopoDS_Wire.
## ! An edge in the wire is defined by its rank number. Operations of accessing,
## ! adding and removing edge at the given rank number are provided. On the whole
## ! wire, operations of circular permutation and reversing (both orientations of
## ! all edges and order of edges) are provided as well.
## ! This class also provides a method to check if the edge in the wire is a seam
## ! (if the wire lies on a face).
## ! This class is handled by reference. Such an approach gives the following advantages:
## ! 1.    Sharing the object of this class strongly optimizes the processes of
## ! analysis and fixing performed in parallel on the wire stored in the form
## ! of this class. Fixing tool (e.g. ShapeFix_Wire) fixes problems one by
## ! one using analyzing tool (e.g. ShapeAnalysis_Wire). Sharing allows not
## ! to reinitialize each time the analyzing tool with modified
## ! ShapeExtend_WireData what consumes certain time.
## ! 2.    No copying of contents. The object of ShapeExtend_WireData class has
## ! quite big size, returning it as a result of the function would cause
## ! additional copying of contents if this class were one handled by value.
## ! Moreover, this class is stored as a field in other classes which are
## ! they returned as results of functions, storing only a handle to
## ! ShapeExtend_WireData saves time and memory.

type
  ShapeExtendWireData* {.importcpp: "ShapeExtend_WireData",
                        header: "ShapeExtend_WireData.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor,
                                                                                            ## creates
                                                                                            ## empty
                                                                                            ## wire
                                                                                            ## with
                                                                                            ## no
                                                                                            ## edges


proc constructShapeExtendWireData*(): ShapeExtendWireData {.constructor,
    importcpp: "ShapeExtend_WireData(@)", header: "ShapeExtend_WireData.hxx".}
proc constructShapeExtendWireData*(wire: TopoDS_Wire; chained: bool = true;
                                  theManifoldMode: bool = true): ShapeExtendWireData {.
    constructor, importcpp: "ShapeExtend_WireData(@)",
    header: "ShapeExtend_WireData.hxx".}
proc init*(this: var ShapeExtendWireData; other: Handle[ShapeExtendWireData]) {.
    importcpp: "Init", header: "ShapeExtend_WireData.hxx".}
proc init*(this: var ShapeExtendWireData; wire: TopoDS_Wire; chained: bool = true;
          theManifoldMode: bool = true): bool {.importcpp: "Init",
    header: "ShapeExtend_WireData.hxx".}
proc clear*(this: var ShapeExtendWireData) {.importcpp: "Clear",
    header: "ShapeExtend_WireData.hxx".}
proc computeSeams*(this: var ShapeExtendWireData; enforce: bool = true) {.
    importcpp: "ComputeSeams", header: "ShapeExtend_WireData.hxx".}
proc setLast*(this: var ShapeExtendWireData; num: cint) {.importcpp: "SetLast",
    header: "ShapeExtend_WireData.hxx".}
proc setDegeneratedLast*(this: var ShapeExtendWireData) {.
    importcpp: "SetDegeneratedLast", header: "ShapeExtend_WireData.hxx".}
proc add*(this: var ShapeExtendWireData; edge: TopoDS_Edge; atnum: cint = 0) {.
    importcpp: "Add", header: "ShapeExtend_WireData.hxx".}
proc add*(this: var ShapeExtendWireData; wire: TopoDS_Wire; atnum: cint = 0) {.
    importcpp: "Add", header: "ShapeExtend_WireData.hxx".}
proc add*(this: var ShapeExtendWireData; wire: Handle[ShapeExtendWireData];
         atnum: cint = 0) {.importcpp: "Add", header: "ShapeExtend_WireData.hxx".}
proc add*(this: var ShapeExtendWireData; shape: TopoDS_Shape; atnum: cint = 0) {.
    importcpp: "Add", header: "ShapeExtend_WireData.hxx".}
proc addOriented*(this: var ShapeExtendWireData; edge: TopoDS_Edge; mode: cint) {.
    importcpp: "AddOriented", header: "ShapeExtend_WireData.hxx".}
proc addOriented*(this: var ShapeExtendWireData; wire: TopoDS_Wire; mode: cint) {.
    importcpp: "AddOriented", header: "ShapeExtend_WireData.hxx".}
proc addOriented*(this: var ShapeExtendWireData; shape: TopoDS_Shape; mode: cint) {.
    importcpp: "AddOriented", header: "ShapeExtend_WireData.hxx".}
proc remove*(this: var ShapeExtendWireData; num: cint = 0) {.importcpp: "Remove",
    header: "ShapeExtend_WireData.hxx".}
proc set*(this: var ShapeExtendWireData; edge: TopoDS_Edge; num: cint = 0) {.
    importcpp: "Set", header: "ShapeExtend_WireData.hxx".}
proc reverse*(this: var ShapeExtendWireData) {.importcpp: "Reverse",
    header: "ShapeExtend_WireData.hxx".}
proc reverse*(this: var ShapeExtendWireData; face: TopoDS_Face) {.
    importcpp: "Reverse", header: "ShapeExtend_WireData.hxx".}
proc nbEdges*(this: ShapeExtendWireData): cint {.noSideEffect, importcpp: "NbEdges",
    header: "ShapeExtend_WireData.hxx".}
proc nbNonManifoldEdges*(this: ShapeExtendWireData): cint {.noSideEffect,
    importcpp: "NbNonManifoldEdges", header: "ShapeExtend_WireData.hxx".}
proc nonmanifoldEdge*(this: ShapeExtendWireData; num: cint): TopoDS_Edge {.
    noSideEffect, importcpp: "NonmanifoldEdge", header: "ShapeExtend_WireData.hxx".}
proc nonmanifoldEdges*(this: ShapeExtendWireData): Handle[TopToolsHSequenceOfShape] {.
    noSideEffect, importcpp: "NonmanifoldEdges", header: "ShapeExtend_WireData.hxx".}
proc manifoldMode*(this: var ShapeExtendWireData): var bool {.
    importcpp: "ManifoldMode", header: "ShapeExtend_WireData.hxx".}
proc edge*(this: ShapeExtendWireData; num: cint): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "ShapeExtend_WireData.hxx".}
proc index*(this: var ShapeExtendWireData; edge: TopoDS_Edge): cint {.
    importcpp: "Index", header: "ShapeExtend_WireData.hxx".}
proc isSeam*(this: var ShapeExtendWireData; num: cint): bool {.importcpp: "IsSeam",
    header: "ShapeExtend_WireData.hxx".}
proc wire*(this: ShapeExtendWireData): TopoDS_Wire {.noSideEffect, importcpp: "Wire",
    header: "ShapeExtend_WireData.hxx".}
proc wireAPIMake*(this: ShapeExtendWireData): TopoDS_Wire {.noSideEffect,
    importcpp: "WireAPIMake", header: "ShapeExtend_WireData.hxx".}
type
  ShapeExtendWireDatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeExtend_WireData::get_type_name(@)",
                            header: "ShapeExtend_WireData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeExtend_WireData::get_type_descriptor(@)",
    header: "ShapeExtend_WireData.hxx".}
proc dynamicType*(this: ShapeExtendWireData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeExtend_WireData.hxx".}

























