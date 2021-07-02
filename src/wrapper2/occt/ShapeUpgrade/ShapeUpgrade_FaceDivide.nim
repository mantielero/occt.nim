##  Created on: 1998-02-18
##  Created by: Pierre BARRAS
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

discard "forward decl of ShapeUpgrade_SplitSurface"
discard "forward decl of ShapeUpgrade_WireDivide"
# when defined(Status):
#   discard
discard "forward decl of ShapeUpgrade_FaceDivide"
discard "forward decl of ShapeUpgrade_FaceDivide"
type
  HandleShapeUpgradeFaceDivide* = Handle[ShapeUpgradeFaceDivide]

## ! Divides a Face (both edges in the wires, by splitting
## ! curves and pcurves, and the face itself, by splitting
## ! supporting surface) according to splitting criteria.
## ! * The domain of the face to divide is defined by the PCurves
## ! of the wires on the Face.
## !
## ! * all the PCurves are supposed to be defined (in the parametric
## ! space of the supporting surface).
## !
## ! The result is available after the call to the Build method.
## ! It is a Shell containing all the resulting Faces.
## !
## ! All the modifications made during splitting are recorded in the
## ! external context (ShapeBuild_ReShape).

type
  ShapeUpgradeFaceDivide* {.importcpp: "ShapeUpgrade_FaceDivide",
                           header: "ShapeUpgrade_FaceDivide.hxx", bycopy.} = object of ShapeUpgradeTool ##
                                                                                                 ## !
                                                                                                 ## Creates
                                                                                                 ## empty
                                                                                                 ## constructor.


proc constructShapeUpgradeFaceDivide*(): ShapeUpgradeFaceDivide {.constructor,
    importcpp: "ShapeUpgrade_FaceDivide(@)", header: "ShapeUpgrade_FaceDivide.hxx".}
proc constructShapeUpgradeFaceDivide*(f: TopoDS_Face): ShapeUpgradeFaceDivide {.
    constructor, importcpp: "ShapeUpgrade_FaceDivide(@)",
    header: "ShapeUpgrade_FaceDivide.hxx".}
proc init*(this: var ShapeUpgradeFaceDivide; f: TopoDS_Face) {.importcpp: "Init",
    header: "ShapeUpgrade_FaceDivide.hxx".}
proc setSurfaceSegmentMode*(this: var ShapeUpgradeFaceDivide;
                           segment: StandardBoolean) {.
    importcpp: "SetSurfaceSegmentMode", header: "ShapeUpgrade_FaceDivide.hxx".}
proc perform*(this: var ShapeUpgradeFaceDivide): StandardBoolean {.
    importcpp: "Perform", header: "ShapeUpgrade_FaceDivide.hxx".}
proc splitSurface*(this: var ShapeUpgradeFaceDivide): StandardBoolean {.
    importcpp: "SplitSurface", header: "ShapeUpgrade_FaceDivide.hxx".}
proc splitCurves*(this: var ShapeUpgradeFaceDivide): StandardBoolean {.
    importcpp: "SplitCurves", header: "ShapeUpgrade_FaceDivide.hxx".}
proc result*(this: ShapeUpgradeFaceDivide): TopoDS_Shape {.noSideEffect,
    importcpp: "Result", header: "ShapeUpgrade_FaceDivide.hxx".}
proc status*(this: ShapeUpgradeFaceDivide; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "Status", header: "ShapeUpgrade_FaceDivide.hxx".}
proc setSplitSurfaceTool*(this: var ShapeUpgradeFaceDivide;
                         splitSurfaceTool: Handle[ShapeUpgradeSplitSurface]) {.
    importcpp: "SetSplitSurfaceTool", header: "ShapeUpgrade_FaceDivide.hxx".}
proc setWireDivideTool*(this: var ShapeUpgradeFaceDivide;
                       wireDivideTool: Handle[ShapeUpgradeWireDivide]) {.
    importcpp: "SetWireDivideTool", header: "ShapeUpgrade_FaceDivide.hxx".}
proc getSplitSurfaceTool*(this: ShapeUpgradeFaceDivide): Handle[
    ShapeUpgradeSplitSurface] {.noSideEffect, importcpp: "GetSplitSurfaceTool",
                               header: "ShapeUpgrade_FaceDivide.hxx".}
proc getWireDivideTool*(this: ShapeUpgradeFaceDivide): Handle[
    ShapeUpgradeWireDivide] {.noSideEffect, importcpp: "GetWireDivideTool",
                             header: "ShapeUpgrade_FaceDivide.hxx".}
type
  ShapeUpgradeFaceDividebaseType* = ShapeUpgradeTool

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_FaceDivide::get_type_name(@)",
                            header: "ShapeUpgrade_FaceDivide.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_FaceDivide::get_type_descriptor(@)",
    header: "ShapeUpgrade_FaceDivide.hxx".}
proc dynamicType*(this: ShapeUpgradeFaceDivide): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeUpgrade_FaceDivide.hxx".}

