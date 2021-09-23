##  Created on: 1998-08-12
##  Created by: DATA EXCHANGE TEAM
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_MapOfShape, ../Standard/Standard_Integer, ShapeFix_Root,
  ../Standard/Standard_Boolean, ../ShapeExtend/ShapeExtend_Status,
  ../Standard/Standard_Real, ../Message/Message_ProgressRange

discard "forward decl of ShapeFix_Solid"
discard "forward decl of ShapeFix_Shell"
discard "forward decl of ShapeFix_Face"
discard "forward decl of ShapeFix_Wire"
discard "forward decl of ShapeFix_Edge"
discard "forward decl of ShapeExtend_BasicMsgRegistrator"
when defined(Status):
  discard
discard "forward decl of ShapeFix_Shape"
discard "forward decl of ShapeFix_Shape"
type
  Handle_ShapeFix_Shape* = handle[ShapeFix_Shape]

## ! Fixing shape in general

type
  ShapeFix_Shape* {.importcpp: "ShapeFix_Shape", header: "ShapeFix_Shape.hxx", bycopy.} = object of ShapeFix_Root ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## Constructor
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Fixes
                                                                                                        ## same
                                                                                                        ## parameterization
                                                                                                        ## problem
                                                                                                        ## on
                                                                                                        ## the
                                                                                                        ## passed
                                                                                                        ## shape
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## by
                                                                                                        ## updating
                                                                                                        ## tolerances
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ## corresponding
                                                                                                        ## topological
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## entitites.


proc constructShapeFix_Shape*(): ShapeFix_Shape {.constructor,
    importcpp: "ShapeFix_Shape(@)", header: "ShapeFix_Shape.hxx".}
proc constructShapeFix_Shape*(shape: TopoDS_Shape): ShapeFix_Shape {.constructor,
    importcpp: "ShapeFix_Shape(@)", header: "ShapeFix_Shape.hxx".}
proc Init*(this: var ShapeFix_Shape; shape: TopoDS_Shape) {.importcpp: "Init",
    header: "ShapeFix_Shape.hxx".}
proc Perform*(this: var ShapeFix_Shape;
             theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Perform", header: "ShapeFix_Shape.hxx".}
proc Shape*(this: ShapeFix_Shape): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "ShapeFix_Shape.hxx".}
proc FixSolidTool*(this: ShapeFix_Shape): handle[ShapeFix_Solid] {.noSideEffect,
    importcpp: "FixSolidTool", header: "ShapeFix_Shape.hxx".}
proc FixShellTool*(this: ShapeFix_Shape): handle[ShapeFix_Shell] {.noSideEffect,
    importcpp: "FixShellTool", header: "ShapeFix_Shape.hxx".}
proc FixFaceTool*(this: ShapeFix_Shape): handle[ShapeFix_Face] {.noSideEffect,
    importcpp: "FixFaceTool", header: "ShapeFix_Shape.hxx".}
proc FixWireTool*(this: ShapeFix_Shape): handle[ShapeFix_Wire] {.noSideEffect,
    importcpp: "FixWireTool", header: "ShapeFix_Shape.hxx".}
proc FixEdgeTool*(this: ShapeFix_Shape): handle[ShapeFix_Edge] {.noSideEffect,
    importcpp: "FixEdgeTool", header: "ShapeFix_Shape.hxx".}
proc Status*(this: ShapeFix_Shape; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "Status", header: "ShapeFix_Shape.hxx".}
proc SetMsgRegistrator*(this: var ShapeFix_Shape;
                       msgreg: handle[ShapeExtend_BasicMsgRegistrator]) {.
    importcpp: "SetMsgRegistrator", header: "ShapeFix_Shape.hxx".}
proc SetPrecision*(this: var ShapeFix_Shape; preci: Standard_Real) {.
    importcpp: "SetPrecision", header: "ShapeFix_Shape.hxx".}
proc SetMinTolerance*(this: var ShapeFix_Shape; mintol: Standard_Real) {.
    importcpp: "SetMinTolerance", header: "ShapeFix_Shape.hxx".}
proc SetMaxTolerance*(this: var ShapeFix_Shape; maxtol: Standard_Real) {.
    importcpp: "SetMaxTolerance", header: "ShapeFix_Shape.hxx".}
proc FixSolidMode*(this: var ShapeFix_Shape): var Standard_Integer {.
    importcpp: "FixSolidMode", header: "ShapeFix_Shape.hxx".}
proc FixFreeShellMode*(this: var ShapeFix_Shape): var Standard_Integer {.
    importcpp: "FixFreeShellMode", header: "ShapeFix_Shape.hxx".}
proc FixFreeFaceMode*(this: var ShapeFix_Shape): var Standard_Integer {.
    importcpp: "FixFreeFaceMode", header: "ShapeFix_Shape.hxx".}
proc FixFreeWireMode*(this: var ShapeFix_Shape): var Standard_Integer {.
    importcpp: "FixFreeWireMode", header: "ShapeFix_Shape.hxx".}
proc FixSameParameterMode*(this: var ShapeFix_Shape): var Standard_Integer {.
    importcpp: "FixSameParameterMode", header: "ShapeFix_Shape.hxx".}
proc FixVertexPositionMode*(this: var ShapeFix_Shape): var Standard_Integer {.
    importcpp: "FixVertexPositionMode", header: "ShapeFix_Shape.hxx".}
proc FixVertexTolMode*(this: var ShapeFix_Shape): var Standard_Integer {.
    importcpp: "FixVertexTolMode", header: "ShapeFix_Shape.hxx".}
type
  ShapeFix_Shapebase_type* = ShapeFix_Root

proc get_type_name*(): cstring {.importcpp: "ShapeFix_Shape::get_type_name(@)",
                              header: "ShapeFix_Shape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeFix_Shape::get_type_descriptor(@)",
    header: "ShapeFix_Shape.hxx".}
proc DynamicType*(this: ShapeFix_Shape): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_Shape.hxx".}