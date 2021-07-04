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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepBasic_ApplicationContextElement

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ApplicationContext"
discard "forward decl of StepBasic_ProductContext"
discard "forward decl of StepBasic_ProductContext"
type
  Handle_StepBasic_ProductContext* = handle[StepBasic_ProductContext]
  StepBasic_ProductContext* {.importcpp: "StepBasic_ProductContext",
                             header: "StepBasic_ProductContext.hxx", bycopy.} = object of StepBasic_ApplicationContextElement ##
                                                                                                                       ## !
                                                                                                                       ## Returns
                                                                                                                       ## a
                                                                                                                       ## ProductContext


proc constructStepBasic_ProductContext*(): StepBasic_ProductContext {.constructor,
    importcpp: "StepBasic_ProductContext(@)",
    header: "StepBasic_ProductContext.hxx".}
proc Init*(this: var StepBasic_ProductContext;
          aName: handle[TCollection_HAsciiString];
          aFrameOfReference: handle[StepBasic_ApplicationContext];
          aDisciplineType: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_ProductContext.hxx".}
proc SetDisciplineType*(this: var StepBasic_ProductContext;
                       aDisciplineType: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDisciplineType", header: "StepBasic_ProductContext.hxx".}
proc DisciplineType*(this: StepBasic_ProductContext): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "DisciplineType",
                               header: "StepBasic_ProductContext.hxx".}
type
  StepBasic_ProductContextbase_type* = StepBasic_ApplicationContextElement

proc get_type_name*(): cstring {.importcpp: "StepBasic_ProductContext::get_type_name(@)",
                              header: "StepBasic_ProductContext.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ProductContext::get_type_descriptor(@)",
    header: "StepBasic_ProductContext.hxx".}
proc DynamicType*(this: StepBasic_ProductContext): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_ProductContext.hxx".}