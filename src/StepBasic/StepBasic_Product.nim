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
discard "forward decl of StepBasic_ProductContext"
discard "forward decl of StepBasic_Product"
discard "forward decl of StepBasic_Product"
type
  HandleC1C1* = Handle[StepBasicProduct]
  StepBasicProduct* {.importcpp: "StepBasic_Product",
                     header: "StepBasic_Product.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## a
                                                                                      ## Product


proc constructStepBasicProduct*(): StepBasicProduct {.constructor,
    importcpp: "StepBasic_Product(@)", header: "StepBasic_Product.hxx".}
proc init*(this: var StepBasicProduct; aId: Handle[TCollectionHAsciiString];
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aFrameOfReference: Handle[StepBasicHArray1OfProductContext]) {.
    importcpp: "Init", header: "StepBasic_Product.hxx".}
proc setId*(this: var StepBasicProduct; aId: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetId", header: "StepBasic_Product.hxx".}
proc id*(this: StepBasicProduct): Handle[TCollectionHAsciiString] {.noSideEffect,
    importcpp: "Id", header: "StepBasic_Product.hxx".}
proc setName*(this: var StepBasicProduct; aName: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetName", header: "StepBasic_Product.hxx".}
proc name*(this: StepBasicProduct): Handle[TCollectionHAsciiString] {.noSideEffect,
    importcpp: "Name", header: "StepBasic_Product.hxx".}
proc setDescription*(this: var StepBasicProduct;
                    aDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_Product.hxx".}
proc description*(this: StepBasicProduct): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_Product.hxx".}
proc setFrameOfReference*(this: var StepBasicProduct; aFrameOfReference: Handle[
    StepBasicHArray1OfProductContext]) {.importcpp: "SetFrameOfReference",
                                        header: "StepBasic_Product.hxx".}
proc frameOfReference*(this: StepBasicProduct): Handle[
    StepBasicHArray1OfProductContext] {.noSideEffect,
                                       importcpp: "FrameOfReference",
                                       header: "StepBasic_Product.hxx".}
proc frameOfReferenceValue*(this: StepBasicProduct; num: int): Handle[
    StepBasicProductContext] {.noSideEffect, importcpp: "FrameOfReferenceValue",
                              header: "StepBasic_Product.hxx".}
proc nbFrameOfReference*(this: StepBasicProduct): int {.noSideEffect,
    importcpp: "NbFrameOfReference", header: "StepBasic_Product.hxx".}
type
  StepBasicProductbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_Product::get_type_name(@)",
                            header: "StepBasic_Product.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_Product::get_type_descriptor(@)",
    header: "StepBasic_Product.hxx".}
proc dynamicType*(this: StepBasicProduct): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Product.hxx".}