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

discard "forward decl of ShapeFix_Shell"
discard "forward decl of TopoDS_Solid"
discard "forward decl of Message_ProgressScope"
discard "forward decl of TopoDS_Shell"
discard "forward decl of ShapeExtend_BasicMsgRegistrator"
# when defined(Status):
#   discard
discard "forward decl of ShapeFix_Solid"
discard "forward decl of ShapeFix_Solid"
type
  HandleShapeFixSolid* = Handle[ShapeFixSolid]

## ! Provides method to build a solid from a shells and
## ! orients them in order to have a valid solid with finite volume

type
  ShapeFixSolid* {.importcpp: "ShapeFix_Solid", header: "ShapeFix_Solid.hxx", bycopy.} = object of ShapeFixRoot ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor;


proc constructShapeFixSolid*(): ShapeFixSolid {.constructor,
    importcpp: "ShapeFix_Solid(@)", header: "ShapeFix_Solid.hxx".}
proc constructShapeFixSolid*(solid: TopoDS_Solid): ShapeFixSolid {.constructor,
    importcpp: "ShapeFix_Solid(@)", header: "ShapeFix_Solid.hxx".}
proc init*(this: var ShapeFixSolid; solid: TopoDS_Solid) {.importcpp: "Init",
    header: "ShapeFix_Solid.hxx".}
proc perform*(this: var ShapeFixSolid;
             theProgress: MessageProgressRange = messageProgressRange()): StandardBoolean {.
    importcpp: "Perform", header: "ShapeFix_Solid.hxx".}
proc solidFromShell*(this: var ShapeFixSolid; shell: TopoDS_Shell): TopoDS_Solid {.
    importcpp: "SolidFromShell", header: "ShapeFix_Solid.hxx".}
proc status*(this: ShapeFixSolid; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "Status", header: "ShapeFix_Solid.hxx".}
proc solid*(this: ShapeFixSolid): TopoDS_Shape {.noSideEffect, importcpp: "Solid",
    header: "ShapeFix_Solid.hxx".}
proc fixShellTool*(this: ShapeFixSolid): Handle[ShapeFixShell] {.noSideEffect,
    importcpp: "FixShellTool", header: "ShapeFix_Solid.hxx".}
proc setMsgRegistrator*(this: var ShapeFixSolid;
                       msgreg: Handle[ShapeExtendBasicMsgRegistrator]) {.
    importcpp: "SetMsgRegistrator", header: "ShapeFix_Solid.hxx".}
proc setPrecision*(this: var ShapeFixSolid; preci: StandardReal) {.
    importcpp: "SetPrecision", header: "ShapeFix_Solid.hxx".}
proc setMinTolerance*(this: var ShapeFixSolid; mintol: StandardReal) {.
    importcpp: "SetMinTolerance", header: "ShapeFix_Solid.hxx".}
proc setMaxTolerance*(this: var ShapeFixSolid; maxtol: StandardReal) {.
    importcpp: "SetMaxTolerance", header: "ShapeFix_Solid.hxx".}
proc fixShellMode*(this: var ShapeFixSolid): var StandardInteger {.
    importcpp: "FixShellMode", header: "ShapeFix_Solid.hxx".}
proc fixShellOrientationMode*(this: var ShapeFixSolid): var StandardInteger {.
    importcpp: "FixShellOrientationMode", header: "ShapeFix_Solid.hxx".}
proc createOpenSolidMode*(this: var ShapeFixSolid): var StandardBoolean {.
    importcpp: "CreateOpenSolidMode", header: "ShapeFix_Solid.hxx".}
proc shape*(this: var ShapeFixSolid): TopoDS_Shape {.importcpp: "Shape",
    header: "ShapeFix_Solid.hxx".}
type
  ShapeFixSolidbaseType* = ShapeFixRoot

proc getTypeName*(): cstring {.importcpp: "ShapeFix_Solid::get_type_name(@)",
                            header: "ShapeFix_Solid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeFix_Solid::get_type_descriptor(@)",
    header: "ShapeFix_Solid.hxx".}
proc dynamicType*(this: ShapeFixSolid): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_Solid.hxx".}

