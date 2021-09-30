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

discard "forward decl of ShapeFix_Solid"
discard "forward decl of ShapeFix_Shell"
discard "forward decl of ShapeFix_Face"
discard "forward decl of ShapeFix_Wire"
discard "forward decl of ShapeFix_Edge"
discard "forward decl of ShapeExtend_BasicMsgRegistrator"
# when defined(Status):
#   discard
discard "forward decl of ShapeFix_Shape"
discard "forward decl of ShapeFix_Shape"
type
  HandleC1C1* = Handle[ShapeFixShape]

## ! Fixing shape in general

type
  ShapeFixShape* {.importcpp: "ShapeFix_Shape", header: "ShapeFix_Shape.hxx", bycopy.} = object of ShapeFixRoot ##
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


proc constructShapeFixShape*(): ShapeFixShape {.constructor,
    importcpp: "ShapeFix_Shape(@)", header: "ShapeFix_Shape.hxx".}
proc constructShapeFixShape*(shape: TopoDS_Shape): ShapeFixShape {.constructor,
    importcpp: "ShapeFix_Shape(@)", header: "ShapeFix_Shape.hxx".}
proc init*(this: var ShapeFixShape; shape: TopoDS_Shape) {.importcpp: "Init",
    header: "ShapeFix_Shape.hxx".}
proc perform*(this: var ShapeFixShape;
             theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "Perform", header: "ShapeFix_Shape.hxx".}
proc shape*(this: ShapeFixShape): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "ShapeFix_Shape.hxx".}
proc fixSolidTool*(this: ShapeFixShape): Handle[ShapeFixSolid] {.noSideEffect,
    importcpp: "FixSolidTool", header: "ShapeFix_Shape.hxx".}
proc fixShellTool*(this: ShapeFixShape): Handle[ShapeFixShell] {.noSideEffect,
    importcpp: "FixShellTool", header: "ShapeFix_Shape.hxx".}
proc fixFaceTool*(this: ShapeFixShape): Handle[ShapeFixFace] {.noSideEffect,
    importcpp: "FixFaceTool", header: "ShapeFix_Shape.hxx".}
proc fixWireTool*(this: ShapeFixShape): Handle[ShapeFixWire] {.noSideEffect,
    importcpp: "FixWireTool", header: "ShapeFix_Shape.hxx".}
proc fixEdgeTool*(this: ShapeFixShape): Handle[ShapeFixEdge] {.noSideEffect,
    importcpp: "FixEdgeTool", header: "ShapeFix_Shape.hxx".}
proc status*(this: ShapeFixShape; status: ShapeExtendStatus): bool {.noSideEffect,
    importcpp: "Status", header: "ShapeFix_Shape.hxx".}
proc setMsgRegistrator*(this: var ShapeFixShape;
                       msgreg: Handle[ShapeExtendBasicMsgRegistrator]) {.
    importcpp: "SetMsgRegistrator", header: "ShapeFix_Shape.hxx".}
proc setPrecision*(this: var ShapeFixShape; preci: cfloat) {.
    importcpp: "SetPrecision", header: "ShapeFix_Shape.hxx".}
proc setMinTolerance*(this: var ShapeFixShape; mintol: cfloat) {.
    importcpp: "SetMinTolerance", header: "ShapeFix_Shape.hxx".}
proc setMaxTolerance*(this: var ShapeFixShape; maxtol: cfloat) {.
    importcpp: "SetMaxTolerance", header: "ShapeFix_Shape.hxx".}
proc fixSolidMode*(this: var ShapeFixShape): var cint {.importcpp: "FixSolidMode",
    header: "ShapeFix_Shape.hxx".}
proc fixFreeShellMode*(this: var ShapeFixShape): var cint {.
    importcpp: "FixFreeShellMode", header: "ShapeFix_Shape.hxx".}
proc fixFreeFaceMode*(this: var ShapeFixShape): var cint {.
    importcpp: "FixFreeFaceMode", header: "ShapeFix_Shape.hxx".}
proc fixFreeWireMode*(this: var ShapeFixShape): var cint {.
    importcpp: "FixFreeWireMode", header: "ShapeFix_Shape.hxx".}
proc fixSameParameterMode*(this: var ShapeFixShape): var cint {.
    importcpp: "FixSameParameterMode", header: "ShapeFix_Shape.hxx".}
proc fixVertexPositionMode*(this: var ShapeFixShape): var cint {.
    importcpp: "FixVertexPositionMode", header: "ShapeFix_Shape.hxx".}
proc fixVertexTolMode*(this: var ShapeFixShape): var cint {.
    importcpp: "FixVertexTolMode", header: "ShapeFix_Shape.hxx".}
type
  ShapeFixShapebaseType* = ShapeFixRoot

proc getTypeName*(): cstring {.importcpp: "ShapeFix_Shape::get_type_name(@)",
                            header: "ShapeFix_Shape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeFix_Shape::get_type_descriptor(@)",
    header: "ShapeFix_Shape.hxx".}
proc dynamicType*(this: ShapeFixShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_Shape.hxx".}

























