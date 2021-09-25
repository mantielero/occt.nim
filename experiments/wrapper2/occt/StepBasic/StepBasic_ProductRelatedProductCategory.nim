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
discard "forward decl of StepBasic_Product"
discard "forward decl of StepBasic_ProductRelatedProductCategory"
discard "forward decl of StepBasic_ProductRelatedProductCategory"
type
  HandleStepBasicProductRelatedProductCategory* = Handle[
      StepBasicProductRelatedProductCategory]
  StepBasicProductRelatedProductCategory* {.
      importcpp: "StepBasic_ProductRelatedProductCategory",
      header: "StepBasic_ProductRelatedProductCategory.hxx", bycopy.} = object of StepBasicProductCategory ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## a
                                                                                                    ## ProductRelatedProductCategory


proc constructStepBasicProductRelatedProductCategory*(): StepBasicProductRelatedProductCategory {.
    constructor, importcpp: "StepBasic_ProductRelatedProductCategory(@)",
    header: "StepBasic_ProductRelatedProductCategory.hxx".}
proc init*(this: var StepBasicProductRelatedProductCategory;
          aName: Handle[TCollectionHAsciiString]; hasAdescription: bool;
          aDescription: Handle[TCollectionHAsciiString];
          aProducts: Handle[StepBasicHArray1OfProduct]) {.importcpp: "Init",
    header: "StepBasic_ProductRelatedProductCategory.hxx".}
proc setProducts*(this: var StepBasicProductRelatedProductCategory;
                 aProducts: Handle[StepBasicHArray1OfProduct]) {.
    importcpp: "SetProducts",
    header: "StepBasic_ProductRelatedProductCategory.hxx".}
proc products*(this: StepBasicProductRelatedProductCategory): Handle[
    StepBasicHArray1OfProduct] {.noSideEffect, importcpp: "Products", header: "StepBasic_ProductRelatedProductCategory.hxx".}
proc productsValue*(this: StepBasicProductRelatedProductCategory; num: int): Handle[
    StepBasicProduct] {.noSideEffect, importcpp: "ProductsValue",
                       header: "StepBasic_ProductRelatedProductCategory.hxx".}
proc nbProducts*(this: StepBasicProductRelatedProductCategory): int {.noSideEffect,
    importcpp: "NbProducts", header: "StepBasic_ProductRelatedProductCategory.hxx".}
type
  StepBasicProductRelatedProductCategorybaseType* = StepBasicProductCategory

proc getTypeName*(): cstring {.importcpp: "StepBasic_ProductRelatedProductCategory::get_type_name(@)", header: "StepBasic_ProductRelatedProductCategory.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_ProductRelatedProductCategory::get_type_descriptor(@)",
    header: "StepBasic_ProductRelatedProductCategory.hxx".}
proc dynamicType*(this: StepBasicProductRelatedProductCategory): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepBasic_ProductRelatedProductCategory.hxx".}
