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
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepRepr_ShapeAspect"
type
  HandleC1C1* = Handle[StepReprShapeAspect]
  StepReprShapeAspect* {.importcpp: "StepRepr_ShapeAspect",
                        header: "StepRepr_ShapeAspect.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## ShapeAspect


proc constructStepReprShapeAspect*(): StepReprShapeAspect {.constructor,
    importcpp: "StepRepr_ShapeAspect(@)", header: "StepRepr_ShapeAspect.hxx".}
proc init*(this: var StepReprShapeAspect; aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aOfShape: Handle[StepReprProductDefinitionShape];
          aProductDefinitional: StepDataLogical) {.importcpp: "Init",
    header: "StepRepr_ShapeAspect.hxx".}
proc setName*(this: var StepReprShapeAspect; aName: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetName", header: "StepRepr_ShapeAspect.hxx".}
proc name*(this: StepReprShapeAspect): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepRepr_ShapeAspect.hxx".}
proc setDescription*(this: var StepReprShapeAspect;
                    aDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepRepr_ShapeAspect.hxx".}
proc description*(this: StepReprShapeAspect): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepRepr_ShapeAspect.hxx".}
proc setOfShape*(this: var StepReprShapeAspect;
                aOfShape: Handle[StepReprProductDefinitionShape]) {.
    importcpp: "SetOfShape", header: "StepRepr_ShapeAspect.hxx".}
proc ofShape*(this: StepReprShapeAspect): Handle[StepReprProductDefinitionShape] {.
    noSideEffect, importcpp: "OfShape", header: "StepRepr_ShapeAspect.hxx".}
proc setProductDefinitional*(this: var StepReprShapeAspect;
                            aProductDefinitional: StepDataLogical) {.
    importcpp: "SetProductDefinitional", header: "StepRepr_ShapeAspect.hxx".}
proc productDefinitional*(this: StepReprShapeAspect): StepDataLogical {.
    noSideEffect, importcpp: "ProductDefinitional",
    header: "StepRepr_ShapeAspect.hxx".}
type
  StepReprShapeAspectbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepRepr_ShapeAspect::get_type_name(@)",
                            header: "StepRepr_ShapeAspect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_ShapeAspect::get_type_descriptor(@)",
    header: "StepRepr_ShapeAspect.hxx".}
proc dynamicType*(this: StepReprShapeAspect): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepRepr_ShapeAspect.hxx".}