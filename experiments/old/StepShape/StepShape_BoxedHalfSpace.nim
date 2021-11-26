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

discard "forward decl of StepShape_BoxDomain"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Surface"
discard "forward decl of StepShape_BoxedHalfSpace"
discard "forward decl of StepShape_BoxedHalfSpace"
type
  HandleC1C1* = Handle[StepShapeBoxedHalfSpace]
  StepShapeBoxedHalfSpace* {.importcpp: "StepShape_BoxedHalfSpace",
                            header: "StepShape_BoxedHalfSpace.hxx", bycopy.} = object of StepShapeHalfSpaceSolid ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## BoxedHalfSpace


proc constructStepShapeBoxedHalfSpace*(): StepShapeBoxedHalfSpace {.constructor,
    importcpp: "StepShape_BoxedHalfSpace(@)",
    header: "StepShape_BoxedHalfSpace.hxx".}
proc init*(this: var StepShapeBoxedHalfSpace;
          aName: Handle[TCollectionHAsciiString];
          aBaseSurface: Handle[StepGeomSurface]; aAgreementFlag: StandardBoolean;
          aEnclosure: Handle[StepShapeBoxDomain]) {.importcpp: "Init",
    header: "StepShape_BoxedHalfSpace.hxx".}
proc setEnclosure*(this: var StepShapeBoxedHalfSpace;
                  aEnclosure: Handle[StepShapeBoxDomain]) {.
    importcpp: "SetEnclosure", header: "StepShape_BoxedHalfSpace.hxx".}
proc enclosure*(this: StepShapeBoxedHalfSpace): Handle[StepShapeBoxDomain] {.
    noSideEffect, importcpp: "Enclosure", header: "StepShape_BoxedHalfSpace.hxx".}
type
  StepShapeBoxedHalfSpacebaseType* = StepShapeHalfSpaceSolid

proc getTypeName*(): cstring {.importcpp: "StepShape_BoxedHalfSpace::get_type_name(@)",
                            header: "StepShape_BoxedHalfSpace.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_BoxedHalfSpace::get_type_descriptor(@)",
    header: "StepShape_BoxedHalfSpace.hxx".}
proc dynamicType*(this: StepShapeBoxedHalfSpace): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_BoxedHalfSpace.hxx".}