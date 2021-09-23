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
  StepBasic_HArray1OfProductContext, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ProductContext"
discard "forward decl of StepBasic_Product"
discard "forward decl of StepBasic_Product"
type
  Handle_StepBasic_Product* = handle[StepBasic_Product]
  StepBasic_Product* {.importcpp: "StepBasic_Product",
                      header: "StepBasic_Product.hxx", bycopy.} = object of Standard_Transient ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## a
                                                                                        ## Product


proc constructStepBasic_Product*(): StepBasic_Product {.constructor,
    importcpp: "StepBasic_Product(@)", header: "StepBasic_Product.hxx".}
proc Init*(this: var StepBasic_Product; aId: handle[TCollection_HAsciiString];
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aFrameOfReference: handle[StepBasic_HArray1OfProductContext]) {.
    importcpp: "Init", header: "StepBasic_Product.hxx".}
proc SetId*(this: var StepBasic_Product; aId: handle[TCollection_HAsciiString]) {.
    importcpp: "SetId", header: "StepBasic_Product.hxx".}
proc Id*(this: StepBasic_Product): handle[TCollection_HAsciiString] {.noSideEffect,
    importcpp: "Id", header: "StepBasic_Product.hxx".}
proc SetName*(this: var StepBasic_Product; aName: handle[TCollection_HAsciiString]) {.
    importcpp: "SetName", header: "StepBasic_Product.hxx".}
proc Name*(this: StepBasic_Product): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_Product.hxx".}
proc SetDescription*(this: var StepBasic_Product;
                    aDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_Product.hxx".}
proc Description*(this: StepBasic_Product): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_Product.hxx".}
proc SetFrameOfReference*(this: var StepBasic_Product; aFrameOfReference: handle[
    StepBasic_HArray1OfProductContext]) {.importcpp: "SetFrameOfReference",
    header: "StepBasic_Product.hxx".}
proc FrameOfReference*(this: StepBasic_Product): handle[
    StepBasic_HArray1OfProductContext] {.noSideEffect,
                                        importcpp: "FrameOfReference",
                                        header: "StepBasic_Product.hxx".}
proc FrameOfReferenceValue*(this: StepBasic_Product; num: Standard_Integer): handle[
    StepBasic_ProductContext] {.noSideEffect, importcpp: "FrameOfReferenceValue",
                               header: "StepBasic_Product.hxx".}
proc NbFrameOfReference*(this: StepBasic_Product): Standard_Integer {.noSideEffect,
    importcpp: "NbFrameOfReference", header: "StepBasic_Product.hxx".}
type
  StepBasic_Productbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_Product::get_type_name(@)",
                              header: "StepBasic_Product.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_Product::get_type_descriptor(@)",
    header: "StepBasic_Product.hxx".}
proc DynamicType*(this: StepBasic_Product): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Product.hxx".}