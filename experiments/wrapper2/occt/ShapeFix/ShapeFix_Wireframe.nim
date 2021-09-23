##  Created on: 1999-08-24
##  Created by: Sergei ZERTCHANINOV
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ShapeFix_Root, ../TopTools/TopTools_MapOfShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../ShapeExtend/ShapeExtend_Status

discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeFix_Wireframe"
discard "forward decl of ShapeFix_Wireframe"
type
  Handle_ShapeFix_Wireframe* = handle[ShapeFix_Wireframe]

## ! Provides methods for fixing wireframe of shape

type
  ShapeFix_Wireframe* {.importcpp: "ShapeFix_Wireframe",
                       header: "ShapeFix_Wireframe.hxx", bycopy.} = object of ShapeFix_Root


proc constructShapeFix_Wireframe*(): ShapeFix_Wireframe {.constructor,
    importcpp: "ShapeFix_Wireframe(@)", header: "ShapeFix_Wireframe.hxx".}
proc constructShapeFix_Wireframe*(shape: TopoDS_Shape): ShapeFix_Wireframe {.
    constructor, importcpp: "ShapeFix_Wireframe(@)",
    header: "ShapeFix_Wireframe.hxx".}
proc ClearStatuses*(this: var ShapeFix_Wireframe) {.importcpp: "ClearStatuses",
    header: "ShapeFix_Wireframe.hxx".}
proc Load*(this: var ShapeFix_Wireframe; shape: TopoDS_Shape) {.importcpp: "Load",
    header: "ShapeFix_Wireframe.hxx".}
proc FixWireGaps*(this: var ShapeFix_Wireframe): Standard_Boolean {.
    importcpp: "FixWireGaps", header: "ShapeFix_Wireframe.hxx".}
proc FixSmallEdges*(this: var ShapeFix_Wireframe): Standard_Boolean {.
    importcpp: "FixSmallEdges", header: "ShapeFix_Wireframe.hxx".}
proc CheckSmallEdges*(this: var ShapeFix_Wireframe;
                     theSmallEdges: var TopTools_MapOfShape;
                     theEdgeToFaces: var TopTools_DataMapOfShapeListOfShape;
                     theFaceWithSmall: var TopTools_DataMapOfShapeListOfShape;
                     theMultyEdges: var TopTools_MapOfShape): Standard_Boolean {.
    importcpp: "CheckSmallEdges", header: "ShapeFix_Wireframe.hxx".}
proc MergeSmallEdges*(this: var ShapeFix_Wireframe;
                     theSmallEdges: var TopTools_MapOfShape;
                     theEdgeToFaces: var TopTools_DataMapOfShapeListOfShape;
                     theFaceWithSmall: var TopTools_DataMapOfShapeListOfShape;
                     theMultyEdges: var TopTools_MapOfShape;
                     theModeDrop: Standard_Boolean = Standard_False;
                     theLimitAngle: Standard_Real = -1): Standard_Boolean {.
    importcpp: "MergeSmallEdges", header: "ShapeFix_Wireframe.hxx".}
proc StatusWireGaps*(this: ShapeFix_Wireframe; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusWireGaps", header: "ShapeFix_Wireframe.hxx".}
proc StatusSmallEdges*(this: ShapeFix_Wireframe; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "StatusSmallEdges", header: "ShapeFix_Wireframe.hxx".}
proc Shape*(this: var ShapeFix_Wireframe): TopoDS_Shape {.importcpp: "Shape",
    header: "ShapeFix_Wireframe.hxx".}
proc ModeDropSmallEdges*(this: var ShapeFix_Wireframe): var Standard_Boolean {.
    importcpp: "ModeDropSmallEdges", header: "ShapeFix_Wireframe.hxx".}
proc SetLimitAngle*(this: var ShapeFix_Wireframe; theLimitAngle: Standard_Real) {.
    importcpp: "SetLimitAngle", header: "ShapeFix_Wireframe.hxx".}
proc LimitAngle*(this: ShapeFix_Wireframe): Standard_Real {.noSideEffect,
    importcpp: "LimitAngle", header: "ShapeFix_Wireframe.hxx".}
type
  ShapeFix_Wireframebase_type* = ShapeFix_Root

proc get_type_name*(): cstring {.importcpp: "ShapeFix_Wireframe::get_type_name(@)",
                              header: "ShapeFix_Wireframe.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeFix_Wireframe::get_type_descriptor(@)",
    header: "ShapeFix_Wireframe.hxx".}
proc DynamicType*(this: ShapeFix_Wireframe): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_Wireframe.hxx".}