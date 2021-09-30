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

discard "forward decl of ShapeUpgrade_SplitCurve3d"
discard "forward decl of ShapeUpgrade_SplitCurve2d"
discard "forward decl of ShapeUpgrade_EdgeDivide"
discard "forward decl of ShapeAnalysis_TransferParameters"
discard "forward decl of ShapeUpgrade_FixSmallCurves"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopLoc_Location"
# when defined(Status):
#   discard
discard "forward decl of ShapeUpgrade_WireDivide"
discard "forward decl of ShapeUpgrade_WireDivide"
type
  HandleC1C1* = Handle[ShapeUpgradeWireDivide]

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
  ShapeUpgradeWireDivide* {.importcpp: "ShapeUpgrade_WireDivide",
                           header: "ShapeUpgrade_WireDivide.hxx", bycopy.} = object of ShapeUpgradeTool ##
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


proc constructShapeUpgradeWireDivide*(): ShapeUpgradeWireDivide {.constructor,
    importcpp: "ShapeUpgrade_WireDivide(@)", header: "ShapeUpgrade_WireDivide.hxx".}
proc init*(this: var ShapeUpgradeWireDivide; w: TopoDS_Wire; f: TopoDS_Face) {.
    importcpp: "Init", header: "ShapeUpgrade_WireDivide.hxx".}
proc init*(this: var ShapeUpgradeWireDivide; w: TopoDS_Wire; s: Handle[GeomSurface]) {.
    importcpp: "Init", header: "ShapeUpgrade_WireDivide.hxx".}
proc load*(this: var ShapeUpgradeWireDivide; w: TopoDS_Wire) {.importcpp: "Load",
    header: "ShapeUpgrade_WireDivide.hxx".}
proc load*(this: var ShapeUpgradeWireDivide; e: TopoDS_Edge) {.importcpp: "Load",
    header: "ShapeUpgrade_WireDivide.hxx".}
proc setFace*(this: var ShapeUpgradeWireDivide; f: TopoDS_Face) {.
    importcpp: "SetFace", header: "ShapeUpgrade_WireDivide.hxx".}
proc setSurface*(this: var ShapeUpgradeWireDivide; s: Handle[GeomSurface]) {.
    importcpp: "SetSurface", header: "ShapeUpgrade_WireDivide.hxx".}
proc setSurface*(this: var ShapeUpgradeWireDivide; s: Handle[GeomSurface];
                L: TopLocLocation) {.importcpp: "SetSurface",
                                   header: "ShapeUpgrade_WireDivide.hxx".}
proc perform*(this: var ShapeUpgradeWireDivide) {.importcpp: "Perform",
    header: "ShapeUpgrade_WireDivide.hxx".}
proc wire*(this: ShapeUpgradeWireDivide): TopoDS_Wire {.noSideEffect,
    importcpp: "Wire", header: "ShapeUpgrade_WireDivide.hxx".}
proc status*(this: ShapeUpgradeWireDivide; status: ShapeExtendStatus): bool {.
    noSideEffect, importcpp: "Status", header: "ShapeUpgrade_WireDivide.hxx".}
proc setSplitCurve3dTool*(this: var ShapeUpgradeWireDivide;
                         splitCurve3dTool: Handle[ShapeUpgradeSplitCurve3d]) {.
    importcpp: "SetSplitCurve3dTool", header: "ShapeUpgrade_WireDivide.hxx".}
proc setSplitCurve2dTool*(this: var ShapeUpgradeWireDivide;
                         splitCurve2dTool: Handle[ShapeUpgradeSplitCurve2d]) {.
    importcpp: "SetSplitCurve2dTool", header: "ShapeUpgrade_WireDivide.hxx".}
proc setTransferParamTool*(this: var ShapeUpgradeWireDivide; transferParam: Handle[
    ShapeAnalysisTransferParameters]) {.importcpp: "SetTransferParamTool",
                                       header: "ShapeUpgrade_WireDivide.hxx".}
proc setEdgeDivideTool*(this: var ShapeUpgradeWireDivide;
                       edgeDivideTool: Handle[ShapeUpgradeEdgeDivide]) {.
    importcpp: "SetEdgeDivideTool", header: "ShapeUpgrade_WireDivide.hxx".}
proc getEdgeDivideTool*(this: ShapeUpgradeWireDivide): Handle[
    ShapeUpgradeEdgeDivide] {.noSideEffect, importcpp: "GetEdgeDivideTool",
                             header: "ShapeUpgrade_WireDivide.hxx".}
proc getTransferParamTool*(this: var ShapeUpgradeWireDivide): Handle[
    ShapeAnalysisTransferParameters] {.importcpp: "GetTransferParamTool",
                                      header: "ShapeUpgrade_WireDivide.hxx".}
proc setEdgeMode*(this: var ShapeUpgradeWireDivide; edgeMode: cint) {.
    importcpp: "SetEdgeMode", header: "ShapeUpgrade_WireDivide.hxx".}
proc setFixSmallCurveTool*(this: var ShapeUpgradeWireDivide; fixSmallCurvesTool: Handle[
    ShapeUpgradeFixSmallCurves]) {.importcpp: "SetFixSmallCurveTool",
                                  header: "ShapeUpgrade_WireDivide.hxx".}
proc getFixSmallCurveTool*(this: ShapeUpgradeWireDivide): Handle[
    ShapeUpgradeFixSmallCurves] {.noSideEffect, importcpp: "GetFixSmallCurveTool",
                                 header: "ShapeUpgrade_WireDivide.hxx".}
type
  ShapeUpgradeWireDividebaseType* = ShapeUpgradeTool

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_WireDivide::get_type_name(@)",
                            header: "ShapeUpgrade_WireDivide.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_WireDivide::get_type_descriptor(@)",
    header: "ShapeUpgrade_WireDivide.hxx".}
proc dynamicType*(this: ShapeUpgradeWireDivide): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeUpgrade_WireDivide.hxx".}

























