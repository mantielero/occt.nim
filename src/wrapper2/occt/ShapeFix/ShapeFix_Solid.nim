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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean, ShapeFix_Root,
  ../ShapeExtend/ShapeExtend_Status, ../Standard/Standard_Real

discard "forward decl of ShapeFix_Shell"
discard "forward decl of TopoDS_Solid"
discard "forward decl of Message_ProgressScope"
discard "forward decl of TopoDS_Shell"
discard "forward decl of ShapeExtend_BasicMsgRegistrator"
when defined(Status):
  discard
discard "forward decl of ShapeFix_Solid"
discard "forward decl of ShapeFix_Solid"
type
  Handle_ShapeFix_Solid* = handle[ShapeFix_Solid]

## ! Provides method to build a solid from a shells and
## ! orients them in order to have a valid solid with finite volume

type
  ShapeFix_Solid* {.importcpp: "ShapeFix_Solid", header: "ShapeFix_Solid.hxx", bycopy.} = object of ShapeFix_Root ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor;


proc constructShapeFix_Solid*(): ShapeFix_Solid {.constructor,
    importcpp: "ShapeFix_Solid(@)", header: "ShapeFix_Solid.hxx".}
proc constructShapeFix_Solid*(solid: TopoDS_Solid): ShapeFix_Solid {.constructor,
    importcpp: "ShapeFix_Solid(@)", header: "ShapeFix_Solid.hxx".}
proc Init*(this: var ShapeFix_Solid; solid: TopoDS_Solid) {.importcpp: "Init",
    header: "ShapeFix_Solid.hxx".}
proc Perform*(this: var ShapeFix_Solid;
             theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Perform", header: "ShapeFix_Solid.hxx".}
proc SolidFromShell*(this: var ShapeFix_Solid; shell: TopoDS_Shell): TopoDS_Solid {.
    importcpp: "SolidFromShell", header: "ShapeFix_Solid.hxx".}
proc Status*(this: ShapeFix_Solid; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "Status", header: "ShapeFix_Solid.hxx".}
proc Solid*(this: ShapeFix_Solid): TopoDS_Shape {.noSideEffect, importcpp: "Solid",
    header: "ShapeFix_Solid.hxx".}
proc FixShellTool*(this: ShapeFix_Solid): handle[ShapeFix_Shell] {.noSideEffect,
    importcpp: "FixShellTool", header: "ShapeFix_Solid.hxx".}
proc SetMsgRegistrator*(this: var ShapeFix_Solid;
                       msgreg: handle[ShapeExtend_BasicMsgRegistrator]) {.
    importcpp: "SetMsgRegistrator", header: "ShapeFix_Solid.hxx".}
proc SetPrecision*(this: var ShapeFix_Solid; preci: Standard_Real) {.
    importcpp: "SetPrecision", header: "ShapeFix_Solid.hxx".}
proc SetMinTolerance*(this: var ShapeFix_Solid; mintol: Standard_Real) {.
    importcpp: "SetMinTolerance", header: "ShapeFix_Solid.hxx".}
proc SetMaxTolerance*(this: var ShapeFix_Solid; maxtol: Standard_Real) {.
    importcpp: "SetMaxTolerance", header: "ShapeFix_Solid.hxx".}
proc FixShellMode*(this: var ShapeFix_Solid): var Standard_Integer {.
    importcpp: "FixShellMode", header: "ShapeFix_Solid.hxx".}
proc FixShellOrientationMode*(this: var ShapeFix_Solid): var Standard_Integer {.
    importcpp: "FixShellOrientationMode", header: "ShapeFix_Solid.hxx".}
proc CreateOpenSolidMode*(this: var ShapeFix_Solid): var Standard_Boolean {.
    importcpp: "CreateOpenSolidMode", header: "ShapeFix_Solid.hxx".}
proc Shape*(this: var ShapeFix_Solid): TopoDS_Shape {.importcpp: "Shape",
    header: "ShapeFix_Solid.hxx".}
type
  ShapeFix_Solidbase_type* = ShapeFix_Root

proc get_type_name*(): cstring {.importcpp: "ShapeFix_Solid::get_type_name(@)",
                              header: "ShapeFix_Solid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeFix_Solid::get_type_descriptor(@)",
    header: "ShapeFix_Solid.hxx".}
proc DynamicType*(this: ShapeFix_Solid): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_Solid.hxx".}