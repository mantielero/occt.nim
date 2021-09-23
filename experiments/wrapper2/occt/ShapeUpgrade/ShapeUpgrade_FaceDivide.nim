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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Face,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer, ShapeUpgrade_Tool,
  ../ShapeExtend/ShapeExtend_Status

discard "forward decl of ShapeUpgrade_SplitSurface"
discard "forward decl of ShapeUpgrade_WireDivide"
when defined(Status):
  discard
discard "forward decl of ShapeUpgrade_FaceDivide"
discard "forward decl of ShapeUpgrade_FaceDivide"
type
  Handle_ShapeUpgrade_FaceDivide* = handle[ShapeUpgrade_FaceDivide]

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
  ShapeUpgrade_FaceDivide* {.importcpp: "ShapeUpgrade_FaceDivide",
                            header: "ShapeUpgrade_FaceDivide.hxx", bycopy.} = object of ShapeUpgrade_Tool ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## empty
                                                                                                   ## constructor.


proc constructShapeUpgrade_FaceDivide*(): ShapeUpgrade_FaceDivide {.constructor,
    importcpp: "ShapeUpgrade_FaceDivide(@)", header: "ShapeUpgrade_FaceDivide.hxx".}
proc constructShapeUpgrade_FaceDivide*(F: TopoDS_Face): ShapeUpgrade_FaceDivide {.
    constructor, importcpp: "ShapeUpgrade_FaceDivide(@)",
    header: "ShapeUpgrade_FaceDivide.hxx".}
proc Init*(this: var ShapeUpgrade_FaceDivide; F: TopoDS_Face) {.importcpp: "Init",
    header: "ShapeUpgrade_FaceDivide.hxx".}
proc SetSurfaceSegmentMode*(this: var ShapeUpgrade_FaceDivide;
                           Segment: Standard_Boolean) {.
    importcpp: "SetSurfaceSegmentMode", header: "ShapeUpgrade_FaceDivide.hxx".}
proc Perform*(this: var ShapeUpgrade_FaceDivide): Standard_Boolean {.
    importcpp: "Perform", header: "ShapeUpgrade_FaceDivide.hxx".}
proc SplitSurface*(this: var ShapeUpgrade_FaceDivide): Standard_Boolean {.
    importcpp: "SplitSurface", header: "ShapeUpgrade_FaceDivide.hxx".}
proc SplitCurves*(this: var ShapeUpgrade_FaceDivide): Standard_Boolean {.
    importcpp: "SplitCurves", header: "ShapeUpgrade_FaceDivide.hxx".}
proc Result*(this: ShapeUpgrade_FaceDivide): TopoDS_Shape {.noSideEffect,
    importcpp: "Result", header: "ShapeUpgrade_FaceDivide.hxx".}
proc Status*(this: ShapeUpgrade_FaceDivide; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "Status", header: "ShapeUpgrade_FaceDivide.hxx".}
proc SetSplitSurfaceTool*(this: var ShapeUpgrade_FaceDivide;
                         splitSurfaceTool: handle[ShapeUpgrade_SplitSurface]) {.
    importcpp: "SetSplitSurfaceTool", header: "ShapeUpgrade_FaceDivide.hxx".}
proc SetWireDivideTool*(this: var ShapeUpgrade_FaceDivide;
                       wireDivideTool: handle[ShapeUpgrade_WireDivide]) {.
    importcpp: "SetWireDivideTool", header: "ShapeUpgrade_FaceDivide.hxx".}
proc GetSplitSurfaceTool*(this: ShapeUpgrade_FaceDivide): handle[
    ShapeUpgrade_SplitSurface] {.noSideEffect, importcpp: "GetSplitSurfaceTool",
                                header: "ShapeUpgrade_FaceDivide.hxx".}
proc GetWireDivideTool*(this: ShapeUpgrade_FaceDivide): handle[
    ShapeUpgrade_WireDivide] {.noSideEffect, importcpp: "GetWireDivideTool",
                              header: "ShapeUpgrade_FaceDivide.hxx".}
type
  ShapeUpgrade_FaceDividebase_type* = ShapeUpgrade_Tool

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_FaceDivide::get_type_name(@)",
                              header: "ShapeUpgrade_FaceDivide.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_FaceDivide::get_type_descriptor(@)",
    header: "ShapeUpgrade_FaceDivide.hxx".}
proc DynamicType*(this: ShapeUpgrade_FaceDivide): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeUpgrade_FaceDivide.hxx".}