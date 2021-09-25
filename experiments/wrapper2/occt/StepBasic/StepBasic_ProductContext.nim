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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ApplicationContext"
discard "forward decl of StepBasic_ProductContext"
discard "forward decl of StepBasic_ProductContext"
type
  HandleStepBasicProductContext* = Handle[StepBasicProductContext]
  StepBasicProductContext* {.importcpp: "StepBasic_ProductContext",
                            header: "StepBasic_ProductContext.hxx", bycopy.} = object of StepBasicApplicationContextElement ##
                                                                                                                     ## !
                                                                                                                     ## Returns
                                                                                                                     ## a
                                                                                                                     ## ProductContext


proc constructStepBasicProductContext*(): StepBasicProductContext {.constructor,
    importcpp: "StepBasic_ProductContext(@)",
    header: "StepBasic_ProductContext.hxx".}
proc init*(this: var StepBasicProductContext;
          aName: Handle[TCollectionHAsciiString];
          aFrameOfReference: Handle[StepBasicApplicationContext];
          aDisciplineType: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_ProductContext.hxx".}
proc setDisciplineType*(this: var StepBasicProductContext;
                       aDisciplineType: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDisciplineType", header: "StepBasic_ProductContext.hxx".}
proc disciplineType*(this: StepBasicProductContext): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "DisciplineType",
    header: "StepBasic_ProductContext.hxx".}
type
  StepBasicProductContextbaseType* = StepBasicApplicationContextElement

proc getTypeName*(): cstring {.importcpp: "StepBasic_ProductContext::get_type_name(@)",
                            header: "StepBasic_ProductContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ProductContext::get_type_descriptor(@)",
    header: "StepBasic_ProductContext.hxx".}
proc dynamicType*(this: StepBasicProductContext): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_ProductContext.hxx".}
