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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TopTools/TopTools_HSequenceOfShape, ../TColStd/TColStd_HSequenceOfInteger,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of ShapeExtend_WireData"
discard "forward decl of ShapeExtend_WireData"
type
  Handle_ShapeExtend_WireData* = handle[ShapeExtend_WireData]

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
  ShapeExtend_WireData* {.importcpp: "ShapeExtend_WireData",
                         header: "ShapeExtend_WireData.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor,
                                                                                              ## creates
                                                                                              ## empty
                                                                                              ## wire
                                                                                              ## with
                                                                                              ## no
                                                                                              ## edges


proc constructShapeExtend_WireData*(): ShapeExtend_WireData {.constructor,
    importcpp: "ShapeExtend_WireData(@)", header: "ShapeExtend_WireData.hxx".}
proc constructShapeExtend_WireData*(wire: TopoDS_Wire;
                                   chained: Standard_Boolean = Standard_True;
    theManifoldMode: Standard_Boolean = Standard_True): ShapeExtend_WireData {.
    constructor, importcpp: "ShapeExtend_WireData(@)",
    header: "ShapeExtend_WireData.hxx".}
proc Init*(this: var ShapeExtend_WireData; other: handle[ShapeExtend_WireData]) {.
    importcpp: "Init", header: "ShapeExtend_WireData.hxx".}
proc Init*(this: var ShapeExtend_WireData; wire: TopoDS_Wire;
          chained: Standard_Boolean = Standard_True;
          theManifoldMode: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "Init", header: "ShapeExtend_WireData.hxx".}
proc Clear*(this: var ShapeExtend_WireData) {.importcpp: "Clear",
    header: "ShapeExtend_WireData.hxx".}
proc ComputeSeams*(this: var ShapeExtend_WireData;
                  enforce: Standard_Boolean = Standard_True) {.
    importcpp: "ComputeSeams", header: "ShapeExtend_WireData.hxx".}
proc SetLast*(this: var ShapeExtend_WireData; num: Standard_Integer) {.
    importcpp: "SetLast", header: "ShapeExtend_WireData.hxx".}
proc SetDegeneratedLast*(this: var ShapeExtend_WireData) {.
    importcpp: "SetDegeneratedLast", header: "ShapeExtend_WireData.hxx".}
proc Add*(this: var ShapeExtend_WireData; edge: TopoDS_Edge;
         atnum: Standard_Integer = 0) {.importcpp: "Add",
                                    header: "ShapeExtend_WireData.hxx".}
proc Add*(this: var ShapeExtend_WireData; wire: TopoDS_Wire;
         atnum: Standard_Integer = 0) {.importcpp: "Add",
                                    header: "ShapeExtend_WireData.hxx".}
proc Add*(this: var ShapeExtend_WireData; wire: handle[ShapeExtend_WireData];
         atnum: Standard_Integer = 0) {.importcpp: "Add",
                                    header: "ShapeExtend_WireData.hxx".}
proc Add*(this: var ShapeExtend_WireData; shape: TopoDS_Shape;
         atnum: Standard_Integer = 0) {.importcpp: "Add",
                                    header: "ShapeExtend_WireData.hxx".}
proc AddOriented*(this: var ShapeExtend_WireData; edge: TopoDS_Edge;
                 mode: Standard_Integer) {.importcpp: "AddOriented",
    header: "ShapeExtend_WireData.hxx".}
proc AddOriented*(this: var ShapeExtend_WireData; wire: TopoDS_Wire;
                 mode: Standard_Integer) {.importcpp: "AddOriented",
    header: "ShapeExtend_WireData.hxx".}
proc AddOriented*(this: var ShapeExtend_WireData; shape: TopoDS_Shape;
                 mode: Standard_Integer) {.importcpp: "AddOriented",
    header: "ShapeExtend_WireData.hxx".}
proc Remove*(this: var ShapeExtend_WireData; num: Standard_Integer = 0) {.
    importcpp: "Remove", header: "ShapeExtend_WireData.hxx".}
proc Set*(this: var ShapeExtend_WireData; edge: TopoDS_Edge; num: Standard_Integer = 0) {.
    importcpp: "Set", header: "ShapeExtend_WireData.hxx".}
proc Reverse*(this: var ShapeExtend_WireData) {.importcpp: "Reverse",
    header: "ShapeExtend_WireData.hxx".}
proc Reverse*(this: var ShapeExtend_WireData; face: TopoDS_Face) {.
    importcpp: "Reverse", header: "ShapeExtend_WireData.hxx".}
proc NbEdges*(this: ShapeExtend_WireData): Standard_Integer {.noSideEffect,
    importcpp: "NbEdges", header: "ShapeExtend_WireData.hxx".}
proc NbNonManifoldEdges*(this: ShapeExtend_WireData): Standard_Integer {.
    noSideEffect, importcpp: "NbNonManifoldEdges",
    header: "ShapeExtend_WireData.hxx".}
proc NonmanifoldEdge*(this: ShapeExtend_WireData; num: Standard_Integer): TopoDS_Edge {.
    noSideEffect, importcpp: "NonmanifoldEdge", header: "ShapeExtend_WireData.hxx".}
proc NonmanifoldEdges*(this: ShapeExtend_WireData): handle[
    TopTools_HSequenceOfShape] {.noSideEffect, importcpp: "NonmanifoldEdges",
                                header: "ShapeExtend_WireData.hxx".}
proc ManifoldMode*(this: var ShapeExtend_WireData): var Standard_Boolean {.
    importcpp: "ManifoldMode", header: "ShapeExtend_WireData.hxx".}
proc Edge*(this: ShapeExtend_WireData; num: Standard_Integer): TopoDS_Edge {.
    noSideEffect, importcpp: "Edge", header: "ShapeExtend_WireData.hxx".}
proc Index*(this: var ShapeExtend_WireData; edge: TopoDS_Edge): Standard_Integer {.
    importcpp: "Index", header: "ShapeExtend_WireData.hxx".}
proc IsSeam*(this: var ShapeExtend_WireData; num: Standard_Integer): Standard_Boolean {.
    importcpp: "IsSeam", header: "ShapeExtend_WireData.hxx".}
proc Wire*(this: ShapeExtend_WireData): TopoDS_Wire {.noSideEffect,
    importcpp: "Wire", header: "ShapeExtend_WireData.hxx".}
proc WireAPIMake*(this: ShapeExtend_WireData): TopoDS_Wire {.noSideEffect,
    importcpp: "WireAPIMake", header: "ShapeExtend_WireData.hxx".}
type
  ShapeExtend_WireDatabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeExtend_WireData::get_type_name(@)",
                              header: "ShapeExtend_WireData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeExtend_WireData::get_type_descriptor(@)",
    header: "ShapeExtend_WireData.hxx".}
proc DynamicType*(this: ShapeExtend_WireData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeExtend_WireData.hxx".}