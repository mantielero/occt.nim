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

discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Block"
discard "forward decl of StepShape_Block"
type
  HandleC1C1* = Handle[StepShapeBlock]
  StepShapeBlock* {.importcpp: "StepShape_Block", header: "StepShape_Block.hxx",
                   bycopy.} = object of StepGeomGeometricRepresentationItem ## ! Returns a Block


proc constructStepShapeBlock*(): StepShapeBlock {.constructor,
    importcpp: "StepShape_Block(@)", header: "StepShape_Block.hxx".}
proc init*(this: var StepShapeBlock; aName: Handle[TCollectionHAsciiString];
          aPosition: Handle[StepGeomAxis2Placement3d]; aX: StandardReal;
          aY: StandardReal; aZ: StandardReal) {.importcpp: "Init",
    header: "StepShape_Block.hxx".}
proc setPosition*(this: var StepShapeBlock;
                 aPosition: Handle[StepGeomAxis2Placement3d]) {.
    importcpp: "SetPosition", header: "StepShape_Block.hxx".}
proc position*(this: StepShapeBlock): Handle[StepGeomAxis2Placement3d] {.
    noSideEffect, importcpp: "Position", header: "StepShape_Block.hxx".}
proc setX*(this: var StepShapeBlock; aX: StandardReal) {.importcpp: "SetX",
    header: "StepShape_Block.hxx".}
proc x*(this: StepShapeBlock): StandardReal {.noSideEffect, importcpp: "X",
    header: "StepShape_Block.hxx".}
proc setY*(this: var StepShapeBlock; aY: StandardReal) {.importcpp: "SetY",
    header: "StepShape_Block.hxx".}
proc y*(this: StepShapeBlock): StandardReal {.noSideEffect, importcpp: "Y",
    header: "StepShape_Block.hxx".}
proc setZ*(this: var StepShapeBlock; aZ: StandardReal) {.importcpp: "SetZ",
    header: "StepShape_Block.hxx".}
proc z*(this: StepShapeBlock): StandardReal {.noSideEffect, importcpp: "Z",
    header: "StepShape_Block.hxx".}
type
  StepShapeBlockbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_Block::get_type_name(@)",
                            header: "StepShape_Block.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_Block::get_type_descriptor(@)",
    header: "StepShape_Block.hxx".}
proc dynamicType*(this: StepShapeBlock): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_Block.hxx".}