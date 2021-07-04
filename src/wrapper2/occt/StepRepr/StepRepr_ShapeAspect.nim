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
  ../Standard/Standard, ../Standard/Standard_Type, ../StepData/StepData_Logical,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepRepr_ShapeAspect"
type
  Handle_StepRepr_ShapeAspect* = handle[StepRepr_ShapeAspect]
  StepRepr_ShapeAspect* {.importcpp: "StepRepr_ShapeAspect",
                         header: "StepRepr_ShapeAspect.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## ShapeAspect


proc constructStepRepr_ShapeAspect*(): StepRepr_ShapeAspect {.constructor,
    importcpp: "StepRepr_ShapeAspect(@)", header: "StepRepr_ShapeAspect.hxx".}
proc Init*(this: var StepRepr_ShapeAspect; aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aOfShape: handle[StepRepr_ProductDefinitionShape];
          aProductDefinitional: StepData_Logical) {.importcpp: "Init",
    header: "StepRepr_ShapeAspect.hxx".}
proc SetName*(this: var StepRepr_ShapeAspect;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_ShapeAspect.hxx".}
proc Name*(this: StepRepr_ShapeAspect): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepRepr_ShapeAspect.hxx".}
proc SetDescription*(this: var StepRepr_ShapeAspect;
                    aDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepRepr_ShapeAspect.hxx".}
proc Description*(this: StepRepr_ShapeAspect): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepRepr_ShapeAspect.hxx".}
proc SetOfShape*(this: var StepRepr_ShapeAspect;
                aOfShape: handle[StepRepr_ProductDefinitionShape]) {.
    importcpp: "SetOfShape", header: "StepRepr_ShapeAspect.hxx".}
proc OfShape*(this: StepRepr_ShapeAspect): handle[StepRepr_ProductDefinitionShape] {.
    noSideEffect, importcpp: "OfShape", header: "StepRepr_ShapeAspect.hxx".}
proc SetProductDefinitional*(this: var StepRepr_ShapeAspect;
                            aProductDefinitional: StepData_Logical) {.
    importcpp: "SetProductDefinitional", header: "StepRepr_ShapeAspect.hxx".}
proc ProductDefinitional*(this: StepRepr_ShapeAspect): StepData_Logical {.
    noSideEffect, importcpp: "ProductDefinitional",
    header: "StepRepr_ShapeAspect.hxx".}
type
  StepRepr_ShapeAspectbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepRepr_ShapeAspect::get_type_name(@)",
                              header: "StepRepr_ShapeAspect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_ShapeAspect::get_type_descriptor(@)",
    header: "StepRepr_ShapeAspect.hxx".}
proc DynamicType*(this: StepRepr_ShapeAspect): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepRepr_ShapeAspect.hxx".}