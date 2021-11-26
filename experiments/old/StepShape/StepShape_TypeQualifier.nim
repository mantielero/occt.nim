##  Created on: 2001-04-24
##  Created by: Christian CAILLET
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_TypeQualifier"
discard "forward decl of StepShape_TypeQualifier"
type
  HandleC1C1* = Handle[StepShapeTypeQualifier]

## ! Added for Dimensional Tolerances

type
  StepShapeTypeQualifier* {.importcpp: "StepShape_TypeQualifier",
                           header: "StepShape_TypeQualifier.hxx", bycopy.} = object of StandardTransient


proc constructStepShapeTypeQualifier*(): StepShapeTypeQualifier {.constructor,
    importcpp: "StepShape_TypeQualifier(@)", header: "StepShape_TypeQualifier.hxx".}
proc init*(this: var StepShapeTypeQualifier; name: Handle[TCollectionHAsciiString]) {.
    importcpp: "Init", header: "StepShape_TypeQualifier.hxx".}
proc name*(this: StepShapeTypeQualifier): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepShape_TypeQualifier.hxx".}
proc setName*(this: var StepShapeTypeQualifier;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepShape_TypeQualifier.hxx".}
type
  StepShapeTypeQualifierbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepShape_TypeQualifier::get_type_name(@)",
                            header: "StepShape_TypeQualifier.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_TypeQualifier::get_type_descriptor(@)",
    header: "StepShape_TypeQualifier.hxx".}
proc dynamicType*(this: StepShapeTypeQualifier): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_TypeQualifier.hxx".}