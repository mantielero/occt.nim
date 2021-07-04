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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_HArray1OfProduct,
  StepBasic_ProductCategory, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_Product"
discard "forward decl of StepBasic_ProductRelatedProductCategory"
discard "forward decl of StepBasic_ProductRelatedProductCategory"
type
  Handle_StepBasic_ProductRelatedProductCategory* = handle[
      StepBasic_ProductRelatedProductCategory]
  StepBasic_ProductRelatedProductCategory* {.
      importcpp: "StepBasic_ProductRelatedProductCategory",
      header: "StepBasic_ProductRelatedProductCategory.hxx", bycopy.} = object of StepBasic_ProductCategory ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## ProductRelatedProductCategory


proc constructStepBasic_ProductRelatedProductCategory*(): StepBasic_ProductRelatedProductCategory {.
    constructor, importcpp: "StepBasic_ProductRelatedProductCategory(@)",
    header: "StepBasic_ProductRelatedProductCategory.hxx".}
proc Init*(this: var StepBasic_ProductRelatedProductCategory;
          aName: handle[TCollection_HAsciiString];
          hasAdescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString];
          aProducts: handle[StepBasic_HArray1OfProduct]) {.importcpp: "Init",
    header: "StepBasic_ProductRelatedProductCategory.hxx".}
proc SetProducts*(this: var StepBasic_ProductRelatedProductCategory;
                 aProducts: handle[StepBasic_HArray1OfProduct]) {.
    importcpp: "SetProducts",
    header: "StepBasic_ProductRelatedProductCategory.hxx".}
proc Products*(this: StepBasic_ProductRelatedProductCategory): handle[
    StepBasic_HArray1OfProduct] {.noSideEffect, importcpp: "Products", header: "StepBasic_ProductRelatedProductCategory.hxx".}
proc ProductsValue*(this: StepBasic_ProductRelatedProductCategory;
                   num: Standard_Integer): handle[StepBasic_Product] {.
    noSideEffect, importcpp: "ProductsValue",
    header: "StepBasic_ProductRelatedProductCategory.hxx".}
proc NbProducts*(this: StepBasic_ProductRelatedProductCategory): Standard_Integer {.
    noSideEffect, importcpp: "NbProducts",
    header: "StepBasic_ProductRelatedProductCategory.hxx".}
type
  StepBasic_ProductRelatedProductCategorybase_type* = StepBasic_ProductCategory

proc get_type_name*(): cstring {.importcpp: "StepBasic_ProductRelatedProductCategory::get_type_name(@)", header: "StepBasic_ProductRelatedProductCategory.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_ProductRelatedProductCategory::get_type_descriptor(@)",
    header: "StepBasic_ProductRelatedProductCategory.hxx".}
proc DynamicType*(this: StepBasic_ProductRelatedProductCategory): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepBasic_ProductRelatedProductCategory.hxx".}