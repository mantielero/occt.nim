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

discard "forward decl of StepShape_Loop"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_FaceBound"
discard "forward decl of StepShape_FaceBound"
type
  HandleC1C1* = Handle[StepShapeFaceBound]
  StepShapeFaceBound* {.importcpp: "StepShape_FaceBound",
                       header: "StepShape_FaceBound.hxx", bycopy.} = object of StepShapeTopologicalRepresentationItem ##
                                                                                                               ## !
                                                                                                               ## Returns
                                                                                                               ## a
                                                                                                               ## FaceBound


proc constructStepShapeFaceBound*(): StepShapeFaceBound {.constructor,
    importcpp: "StepShape_FaceBound(@)", header: "StepShape_FaceBound.hxx".}
proc init*(this: var StepShapeFaceBound; aName: Handle[TCollectionHAsciiString];
          aBound: Handle[StepShapeLoop]; aOrientation: StandardBoolean) {.
    importcpp: "Init", header: "StepShape_FaceBound.hxx".}
proc setBound*(this: var StepShapeFaceBound; aBound: Handle[StepShapeLoop]) {.
    importcpp: "SetBound", header: "StepShape_FaceBound.hxx".}
proc bound*(this: StepShapeFaceBound): Handle[StepShapeLoop] {.noSideEffect,
    importcpp: "Bound", header: "StepShape_FaceBound.hxx".}
proc setOrientation*(this: var StepShapeFaceBound; aOrientation: StandardBoolean) {.
    importcpp: "SetOrientation", header: "StepShape_FaceBound.hxx".}
proc orientation*(this: StepShapeFaceBound): StandardBoolean {.noSideEffect,
    importcpp: "Orientation", header: "StepShape_FaceBound.hxx".}
type
  StepShapeFaceBoundbaseType* = StepShapeTopologicalRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_FaceBound::get_type_name(@)",
                            header: "StepShape_FaceBound.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_FaceBound::get_type_descriptor(@)",
    header: "StepShape_FaceBound.hxx".}
proc dynamicType*(this: StepShapeFaceBound): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_FaceBound.hxx".}