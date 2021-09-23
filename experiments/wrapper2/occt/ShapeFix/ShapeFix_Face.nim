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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Face,
  ../TopoDS/TopoDS_Shape, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ShapeFix_Root, ../Standard/Standard_Real,
  ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_SequenceOfShape, ShapeFix_DataMapOfShapeBox2d,
  ../ShapeExtend/ShapeExtend_Status

discard "forward decl of ShapeAnalysis_Surface"
discard "forward decl of ShapeFix_Wire"
discard "forward decl of Geom_Surface"
discard "forward decl of ShapeExtend_BasicMsgRegistrator"
discard "forward decl of TopoDS_Wire"
discard "forward decl of ShapeExtend_WireData"
discard "forward decl of TopoDS_Vertex"
when defined(Status):
  discard
discard "forward decl of ShapeFix_Face"
discard "forward decl of ShapeFix_Face"
type
  Handle_ShapeFix_Face* = handle[ShapeFix_Face]

## ! This operator allows to perform various fixes on face
## ! and its wires: fixes provided by ShapeFix_Wire,
## ! fixing orientation of wires, addition of natural bounds,
## ! fixing of missing seam edge,
## ! and detection and removal of null-area wires

type
  ShapeFix_Face* {.importcpp: "ShapeFix_Face", header: "ShapeFix_Face.hxx", bycopy.} = object of ShapeFix_Root ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## an
                                                                                                     ## empty
                                                                                                     ## tool


proc constructShapeFix_Face*(): ShapeFix_Face {.constructor,
    importcpp: "ShapeFix_Face(@)", header: "ShapeFix_Face.hxx".}
proc constructShapeFix_Face*(face: TopoDS_Face): ShapeFix_Face {.constructor,
    importcpp: "ShapeFix_Face(@)", header: "ShapeFix_Face.hxx".}
proc ClearModes*(this: var ShapeFix_Face) {.importcpp: "ClearModes",
                                        header: "ShapeFix_Face.hxx".}
proc Init*(this: var ShapeFix_Face; face: TopoDS_Face) {.importcpp: "Init",
    header: "ShapeFix_Face.hxx".}
proc Init*(this: var ShapeFix_Face; surf: handle[Geom_Surface]; preci: Standard_Real;
          fwd: Standard_Boolean = Standard_True) {.importcpp: "Init",
    header: "ShapeFix_Face.hxx".}
proc Init*(this: var ShapeFix_Face; surf: handle[ShapeAnalysis_Surface];
          preci: Standard_Real; fwd: Standard_Boolean = Standard_True) {.
    importcpp: "Init", header: "ShapeFix_Face.hxx".}
proc SetMsgRegistrator*(this: var ShapeFix_Face;
                       msgreg: handle[ShapeExtend_BasicMsgRegistrator]) {.
    importcpp: "SetMsgRegistrator", header: "ShapeFix_Face.hxx".}
proc SetPrecision*(this: var ShapeFix_Face; preci: Standard_Real) {.
    importcpp: "SetPrecision", header: "ShapeFix_Face.hxx".}
proc SetMinTolerance*(this: var ShapeFix_Face; mintol: Standard_Real) {.
    importcpp: "SetMinTolerance", header: "ShapeFix_Face.hxx".}
proc SetMaxTolerance*(this: var ShapeFix_Face; maxtol: Standard_Real) {.
    importcpp: "SetMaxTolerance", header: "ShapeFix_Face.hxx".}
proc FixWireMode*(this: var ShapeFix_Face): var Standard_Integer {.
    importcpp: "FixWireMode", header: "ShapeFix_Face.hxx".}
proc FixOrientationMode*(this: var ShapeFix_Face): var Standard_Integer {.
    importcpp: "FixOrientationMode", header: "ShapeFix_Face.hxx".}
proc FixAddNaturalBoundMode*(this: var ShapeFix_Face): var Standard_Integer {.
    importcpp: "FixAddNaturalBoundMode", header: "ShapeFix_Face.hxx".}
proc FixMissingSeamMode*(this: var ShapeFix_Face): var Standard_Integer {.
    importcpp: "FixMissingSeamMode", header: "ShapeFix_Face.hxx".}
proc FixSmallAreaWireMode*(this: var ShapeFix_Face): var Standard_Integer {.
    importcpp: "FixSmallAreaWireMode", header: "ShapeFix_Face.hxx".}
proc RemoveSmallAreaFaceMode*(this: var ShapeFix_Face): var Standard_Integer {.
    importcpp: "RemoveSmallAreaFaceMode", header: "ShapeFix_Face.hxx".}
proc FixIntersectingWiresMode*(this: var ShapeFix_Face): var Standard_Integer {.
    importcpp: "FixIntersectingWiresMode", header: "ShapeFix_Face.hxx".}
proc FixLoopWiresMode*(this: var ShapeFix_Face): var Standard_Integer {.
    importcpp: "FixLoopWiresMode", header: "ShapeFix_Face.hxx".}
proc FixSplitFaceMode*(this: var ShapeFix_Face): var Standard_Integer {.
    importcpp: "FixSplitFaceMode", header: "ShapeFix_Face.hxx".}
proc AutoCorrectPrecisionMode*(this: var ShapeFix_Face): var Standard_Integer {.
    importcpp: "AutoCorrectPrecisionMode", header: "ShapeFix_Face.hxx".}
proc FixPeriodicDegeneratedMode*(this: var ShapeFix_Face): var Standard_Integer {.
    importcpp: "FixPeriodicDegeneratedMode", header: "ShapeFix_Face.hxx".}
proc Face*(this: ShapeFix_Face): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "ShapeFix_Face.hxx".}
proc Result*(this: ShapeFix_Face): TopoDS_Shape {.noSideEffect, importcpp: "Result",
    header: "ShapeFix_Face.hxx".}
proc Add*(this: var ShapeFix_Face; wire: TopoDS_Wire) {.importcpp: "Add",
    header: "ShapeFix_Face.hxx".}
proc Perform*(this: var ShapeFix_Face): Standard_Boolean {.importcpp: "Perform",
    header: "ShapeFix_Face.hxx".}
proc FixOrientation*(this: var ShapeFix_Face): Standard_Boolean {.
    importcpp: "FixOrientation", header: "ShapeFix_Face.hxx".}
proc FixOrientation*(this: var ShapeFix_Face;
                    MapWires: var TopTools_DataMapOfShapeListOfShape): Standard_Boolean {.
    importcpp: "FixOrientation", header: "ShapeFix_Face.hxx".}
proc FixAddNaturalBound*(this: var ShapeFix_Face): Standard_Boolean {.
    importcpp: "FixAddNaturalBound", header: "ShapeFix_Face.hxx".}
proc FixMissingSeam*(this: var ShapeFix_Face): Standard_Boolean {.
    importcpp: "FixMissingSeam", header: "ShapeFix_Face.hxx".}
proc FixSmallAreaWire*(this: var ShapeFix_Face;
                      theIsRemoveSmallFace: Standard_Boolean): Standard_Boolean {.
    importcpp: "FixSmallAreaWire", header: "ShapeFix_Face.hxx".}
proc FixLoopWire*(this: var ShapeFix_Face; aResWires: var TopTools_SequenceOfShape): Standard_Boolean {.
    importcpp: "FixLoopWire", header: "ShapeFix_Face.hxx".}
proc FixIntersectingWires*(this: var ShapeFix_Face): Standard_Boolean {.
    importcpp: "FixIntersectingWires", header: "ShapeFix_Face.hxx".}
proc FixWiresTwoCoincEdges*(this: var ShapeFix_Face): Standard_Boolean {.
    importcpp: "FixWiresTwoCoincEdges", header: "ShapeFix_Face.hxx".}
proc FixSplitFace*(this: var ShapeFix_Face;
                  MapWires: TopTools_DataMapOfShapeListOfShape): Standard_Boolean {.
    importcpp: "FixSplitFace", header: "ShapeFix_Face.hxx".}
proc FixPeriodicDegenerated*(this: var ShapeFix_Face): Standard_Boolean {.
    importcpp: "FixPeriodicDegenerated", header: "ShapeFix_Face.hxx".}
proc Status*(this: ShapeFix_Face; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "Status", header: "ShapeFix_Face.hxx".}
proc FixWireTool*(this: var ShapeFix_Face): handle[ShapeFix_Wire] {.
    importcpp: "FixWireTool", header: "ShapeFix_Face.hxx".}
type
  ShapeFix_Facebase_type* = ShapeFix_Root

proc get_type_name*(): cstring {.importcpp: "ShapeFix_Face::get_type_name(@)",
                              header: "ShapeFix_Face.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeFix_Face::get_type_descriptor(@)",
    header: "ShapeFix_Face.hxx".}
proc DynamicType*(this: ShapeFix_Face): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_Face.hxx".}