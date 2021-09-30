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
discard "forward decl of StepShape_Loop"
type
  HandleC1C1* = Handle[StepShapeLoop]
  StepShapeLoop* {.importcpp: "StepShape_Loop", header: "StepShape_Loop.hxx", bycopy.} = object of StepShapeTopologicalRepresentationItem ##
                                                                                                                                ## !
                                                                                                                                ## Returns
                                                                                                                                ## a
                                                                                                                                ## Loop


proc constructStepShapeLoop*(): StepShapeLoop {.constructor,
    importcpp: "StepShape_Loop(@)", header: "StepShape_Loop.hxx".}
type
  StepShapeLoopbaseType* = StepShapeTopologicalRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_Loop::get_type_name(@)",
                            header: "StepShape_Loop.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_Loop::get_type_descriptor(@)",
    header: "StepShape_Loop.hxx".}
proc dynamicType*(this: StepShapeLoop): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_Loop.hxx".}

























