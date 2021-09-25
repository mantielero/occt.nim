##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
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
discard "forward decl of StepBasic_ProductCategoryRelationship"
discard "forward decl of StepBasic_ProductCategoryRelationship"
type
  HandleStepBasicProductCategoryRelationship* = Handle[
      StepBasicProductCategoryRelationship]

## ! Representation of STEP entity ProductCategoryRelationship

type
  StepBasicProductCategoryRelationship* {.
      importcpp: "StepBasic_ProductCategoryRelationship",
      header: "StepBasic_ProductCategoryRelationship.hxx", bycopy.} = object of StandardTransient ##
                                                                                           ## !
                                                                                           ## Empty
                                                                                           ## constructor


proc constructStepBasicProductCategoryRelationship*(): StepBasicProductCategoryRelationship {.
    constructor, importcpp: "StepBasic_ProductCategoryRelationship(@)",
    header: "StepBasic_ProductCategoryRelationship.hxx".}
proc init*(this: var StepBasicProductCategoryRelationship;
          aName: Handle[TCollectionHAsciiString]; hasDescription: bool;
          aDescription: Handle[TCollectionHAsciiString];
          aCategory: Handle[StepBasicProductCategory];
          aSubCategory: Handle[StepBasicProductCategory]) {.importcpp: "Init",
    header: "StepBasic_ProductCategoryRelationship.hxx".}
proc name*(this: StepBasicProductCategoryRelationship): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name", header: "StepBasic_ProductCategoryRelationship.hxx".}
proc setName*(this: var StepBasicProductCategoryRelationship;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_ProductCategoryRelationship.hxx".}
proc description*(this: StepBasicProductCategoryRelationship): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description", header: "StepBasic_ProductCategoryRelationship.hxx".}
proc setDescription*(this: var StepBasicProductCategoryRelationship;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepBasic_ProductCategoryRelationship.hxx".}
proc hasDescription*(this: StepBasicProductCategoryRelationship): bool {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepBasic_ProductCategoryRelationship.hxx".}
proc category*(this: StepBasicProductCategoryRelationship): Handle[
    StepBasicProductCategory] {.noSideEffect, importcpp: "Category", header: "StepBasic_ProductCategoryRelationship.hxx".}
proc setCategory*(this: var StepBasicProductCategoryRelationship;
                 category: Handle[StepBasicProductCategory]) {.
    importcpp: "SetCategory", header: "StepBasic_ProductCategoryRelationship.hxx".}
proc subCategory*(this: StepBasicProductCategoryRelationship): Handle[
    StepBasicProductCategory] {.noSideEffect, importcpp: "SubCategory", header: "StepBasic_ProductCategoryRelationship.hxx".}
proc setSubCategory*(this: var StepBasicProductCategoryRelationship;
                    subCategory: Handle[StepBasicProductCategory]) {.
    importcpp: "SetSubCategory",
    header: "StepBasic_ProductCategoryRelationship.hxx".}
type
  StepBasicProductCategoryRelationshipbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ProductCategoryRelationship::get_type_name(@)",
                            header: "StepBasic_ProductCategoryRelationship.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ProductCategoryRelationship::get_type_descriptor(@)",
    header: "StepBasic_ProductCategoryRelationship.hxx".}
proc dynamicType*(this: StepBasicProductCategoryRelationship): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ProductCategoryRelationship.hxx".}
