##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../StepGeom/StepGeom_GeometricRepresentationItem

discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Block"
discard "forward decl of StepShape_Block"
type
  Handle_StepShape_Block* = handle[StepShape_Block]
  StepShape_Block* {.importcpp: "StepShape_Block", header: "StepShape_Block.hxx",
                    bycopy.} = object of StepGeom_GeometricRepresentationItem ## ! Returns a Block


proc constructStepShape_Block*(): StepShape_Block {.constructor,
    importcpp: "StepShape_Block(@)", header: "StepShape_Block.hxx".}
proc Init*(this: var StepShape_Block; aName: handle[TCollection_HAsciiString];
          aPosition: handle[StepGeom_Axis2Placement3d]; aX: Standard_Real;
          aY: Standard_Real; aZ: Standard_Real) {.importcpp: "Init",
    header: "StepShape_Block.hxx".}
proc SetPosition*(this: var StepShape_Block;
                 aPosition: handle[StepGeom_Axis2Placement3d]) {.
    importcpp: "SetPosition", header: "StepShape_Block.hxx".}
proc Position*(this: StepShape_Block): handle[StepGeom_Axis2Placement3d] {.
    noSideEffect, importcpp: "Position", header: "StepShape_Block.hxx".}
proc SetX*(this: var StepShape_Block; aX: Standard_Real) {.importcpp: "SetX",
    header: "StepShape_Block.hxx".}
proc X*(this: StepShape_Block): Standard_Real {.noSideEffect, importcpp: "X",
    header: "StepShape_Block.hxx".}
proc SetY*(this: var StepShape_Block; aY: Standard_Real) {.importcpp: "SetY",
    header: "StepShape_Block.hxx".}
proc Y*(this: StepShape_Block): Standard_Real {.noSideEffect, importcpp: "Y",
    header: "StepShape_Block.hxx".}
proc SetZ*(this: var StepShape_Block; aZ: Standard_Real) {.importcpp: "SetZ",
    header: "StepShape_Block.hxx".}
proc Z*(this: StepShape_Block): Standard_Real {.noSideEffect, importcpp: "Z",
    header: "StepShape_Block.hxx".}
type
  StepShape_Blockbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_Block::get_type_name(@)",
                              header: "StepShape_Block.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_Block::get_type_descriptor(@)",
    header: "StepShape_Block.hxx".}
proc DynamicType*(this: StepShape_Block): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_Block.hxx".}