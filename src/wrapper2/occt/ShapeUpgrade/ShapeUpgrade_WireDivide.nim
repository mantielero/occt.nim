##  Created on: 1999-04-15
##  Created by: Roman LYGIN
##  Copyright (c) 1999 Matra Datavision
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
  ../TopoDS/TopoDS_Wire, ../Standard/Standard_Integer, ShapeUpgrade_Tool,
  ../Standard/Standard_Boolean, ../ShapeExtend/ShapeExtend_Status

discard "forward decl of ShapeUpgrade_SplitCurve3d"
discard "forward decl of ShapeUpgrade_SplitCurve2d"
discard "forward decl of ShapeUpgrade_EdgeDivide"
discard "forward decl of ShapeAnalysis_TransferParameters"
discard "forward decl of ShapeUpgrade_FixSmallCurves"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopLoc_Location"
when defined(Status):
  discard
discard "forward decl of ShapeUpgrade_WireDivide"
discard "forward decl of ShapeUpgrade_WireDivide"
type
  Handle_ShapeUpgrade_WireDivide* = handle[ShapeUpgrade_WireDivide]

## ! Divides edges in the wire lying on the face or free wires or
## ! free edges with a criterion.
## ! Splits 3D curve and pcurve(s) of the edge on the face.
## ! Other pcurves which may be associated with the edge are simply
## ! copied.
## ! If 3D curve is splitted then pcurve on the face is splitted as
## ! well, and wice-versa.
## ! Input shape is not modified.
## ! The modifications made are recorded in external context
## ! (ShapeBuild_ReShape). This tool is applied to all edges
## ! before splitting them in order to keep sharing.

type
  ShapeUpgrade_WireDivide* {.importcpp: "ShapeUpgrade_WireDivide",
                            header: "ShapeUpgrade_WireDivide.hxx", bycopy.} = object of ShapeUpgrade_Tool ##
                                                                                                   ## !
                                                                                                   ## Empty
                                                                                                   ## constructor
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## the
                                                                                                   ## tool
                                                                                                   ## for
                                                                                                   ## splitting
                                                                                                   ## 3D
                                                                                                   ## curves.


proc constructShapeUpgrade_WireDivide*(): ShapeUpgrade_WireDivide {.constructor,
    importcpp: "ShapeUpgrade_WireDivide(@)", header: "ShapeUpgrade_WireDivide.hxx".}
proc Init*(this: var ShapeUpgrade_WireDivide; W: TopoDS_Wire; F: TopoDS_Face) {.
    importcpp: "Init", header: "ShapeUpgrade_WireDivide.hxx".}
proc Init*(this: var ShapeUpgrade_WireDivide; W: TopoDS_Wire; S: handle[Geom_Surface]) {.
    importcpp: "Init", header: "ShapeUpgrade_WireDivide.hxx".}
proc Load*(this: var ShapeUpgrade_WireDivide; W: TopoDS_Wire) {.importcpp: "Load",
    header: "ShapeUpgrade_WireDivide.hxx".}
proc Load*(this: var ShapeUpgrade_WireDivide; E: TopoDS_Edge) {.importcpp: "Load",
    header: "ShapeUpgrade_WireDivide.hxx".}
proc SetFace*(this: var ShapeUpgrade_WireDivide; F: TopoDS_Face) {.
    importcpp: "SetFace", header: "ShapeUpgrade_WireDivide.hxx".}
proc SetSurface*(this: var ShapeUpgrade_WireDivide; S: handle[Geom_Surface]) {.
    importcpp: "SetSurface", header: "ShapeUpgrade_WireDivide.hxx".}
proc SetSurface*(this: var ShapeUpgrade_WireDivide; S: handle[Geom_Surface];
                L: TopLoc_Location) {.importcpp: "SetSurface",
                                    header: "ShapeUpgrade_WireDivide.hxx".}
proc Perform*(this: var ShapeUpgrade_WireDivide) {.importcpp: "Perform",
    header: "ShapeUpgrade_WireDivide.hxx".}
proc Wire*(this: ShapeUpgrade_WireDivide): TopoDS_Wire {.noSideEffect,
    importcpp: "Wire", header: "ShapeUpgrade_WireDivide.hxx".}
proc Status*(this: ShapeUpgrade_WireDivide; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "Status", header: "ShapeUpgrade_WireDivide.hxx".}
proc SetSplitCurve3dTool*(this: var ShapeUpgrade_WireDivide;
                         splitCurve3dTool: handle[ShapeUpgrade_SplitCurve3d]) {.
    importcpp: "SetSplitCurve3dTool", header: "ShapeUpgrade_WireDivide.hxx".}
proc SetSplitCurve2dTool*(this: var ShapeUpgrade_WireDivide;
                         splitCurve2dTool: handle[ShapeUpgrade_SplitCurve2d]) {.
    importcpp: "SetSplitCurve2dTool", header: "ShapeUpgrade_WireDivide.hxx".}
proc SetTransferParamTool*(this: var ShapeUpgrade_WireDivide; TransferParam: handle[
    ShapeAnalysis_TransferParameters]) {.importcpp: "SetTransferParamTool",
                                        header: "ShapeUpgrade_WireDivide.hxx".}
proc SetEdgeDivideTool*(this: var ShapeUpgrade_WireDivide;
                       edgeDivideTool: handle[ShapeUpgrade_EdgeDivide]) {.
    importcpp: "SetEdgeDivideTool", header: "ShapeUpgrade_WireDivide.hxx".}
proc GetEdgeDivideTool*(this: ShapeUpgrade_WireDivide): handle[
    ShapeUpgrade_EdgeDivide] {.noSideEffect, importcpp: "GetEdgeDivideTool",
                              header: "ShapeUpgrade_WireDivide.hxx".}
proc GetTransferParamTool*(this: var ShapeUpgrade_WireDivide): handle[
    ShapeAnalysis_TransferParameters] {.importcpp: "GetTransferParamTool",
                                       header: "ShapeUpgrade_WireDivide.hxx".}
proc SetEdgeMode*(this: var ShapeUpgrade_WireDivide; EdgeMode: Standard_Integer) {.
    importcpp: "SetEdgeMode", header: "ShapeUpgrade_WireDivide.hxx".}
proc SetFixSmallCurveTool*(this: var ShapeUpgrade_WireDivide; FixSmallCurvesTool: handle[
    ShapeUpgrade_FixSmallCurves]) {.importcpp: "SetFixSmallCurveTool",
                                   header: "ShapeUpgrade_WireDivide.hxx".}
proc GetFixSmallCurveTool*(this: ShapeUpgrade_WireDivide): handle[
    ShapeUpgrade_FixSmallCurves] {.noSideEffect,
                                  importcpp: "GetFixSmallCurveTool",
                                  header: "ShapeUpgrade_WireDivide.hxx".}
type
  ShapeUpgrade_WireDividebase_type* = ShapeUpgrade_Tool

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_WireDivide::get_type_name(@)",
                              header: "ShapeUpgrade_WireDivide.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_WireDivide::get_type_descriptor(@)",
    header: "ShapeUpgrade_WireDivide.hxx".}
proc DynamicType*(this: ShapeUpgrade_WireDivide): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeUpgrade_WireDivide.hxx".}