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
discard "forward decl of StepBasic_ProductCategory"
discard "forward decl of StepBasic_ProductCategory"
type
  HandleC1C1* = Handle[StepBasicProductCategory]
  StepBasicProductCategory* {.importcpp: "StepBasic_ProductCategory",
                             header: "StepBasic_ProductCategory.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## a
                                                                                                      ## ProductCategory


proc constructStepBasicProductCategory*(): StepBasicProductCategory {.constructor,
    importcpp: "StepBasic_ProductCategory(@)",
    header: "StepBasic_ProductCategory.hxx".}
proc init*(this: var StepBasicProductCategory;
          aName: Handle[TCollectionHAsciiString];
          hasAdescription: StandardBoolean;
          aDescription: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_ProductCategory.hxx".}
proc setName*(this: var StepBasicProductCategory;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_ProductCategory.hxx".}
proc name*(this: StepBasicProductCategory): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_ProductCategory.hxx".}
proc setDescription*(this: var StepBasicProductCategory;
                    aDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_ProductCategory.hxx".}
proc unSetDescription*(this: var StepBasicProductCategory) {.
    importcpp: "UnSetDescription", header: "StepBasic_ProductCategory.hxx".}
proc description*(this: StepBasicProductCategory): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_ProductCategory.hxx".}
proc hasDescription*(this: StepBasicProductCategory): StandardBoolean {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepBasic_ProductCategory.hxx".}
type
  StepBasicProductCategorybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ProductCategory::get_type_name(@)",
                            header: "StepBasic_ProductCategory.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ProductCategory::get_type_descriptor(@)",
    header: "StepBasic_ProductCategory.hxx".}
proc dynamicType*(this: StepBasicProductCategory): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_ProductCategory.hxx".}