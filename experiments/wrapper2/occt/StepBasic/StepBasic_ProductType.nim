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
  StepBasic_ProductRelatedProductCategory

discard "forward decl of StepBasic_ProductType"
discard "forward decl of StepBasic_ProductType"
type
  Handle_StepBasic_ProductType* = handle[StepBasic_ProductType]
  StepBasic_ProductType* {.importcpp: "StepBasic_ProductType",
                          header: "StepBasic_ProductType.hxx", bycopy.} = object of StepBasic_ProductRelatedProductCategory ##
                                                                                                                     ## !
                                                                                                                     ## Returns
                                                                                                                     ## a
                                                                                                                     ## ProductType


proc constructStepBasic_ProductType*(): StepBasic_ProductType {.constructor,
    importcpp: "StepBasic_ProductType(@)", header: "StepBasic_ProductType.hxx".}
type
  StepBasic_ProductTypebase_type* = StepBasic_ProductRelatedProductCategory

proc get_type_name*(): cstring {.importcpp: "StepBasic_ProductType::get_type_name(@)",
                              header: "StepBasic_ProductType.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ProductType::get_type_descriptor(@)",
    header: "StepBasic_ProductType.hxx".}
proc DynamicType*(this: StepBasic_ProductType): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_ProductType.hxx".}