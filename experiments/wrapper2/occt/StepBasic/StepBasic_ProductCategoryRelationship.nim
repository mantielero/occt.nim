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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ProductCategory"
discard "forward decl of StepBasic_ProductCategoryRelationship"
discard "forward decl of StepBasic_ProductCategoryRelationship"
type
  Handle_StepBasic_ProductCategoryRelationship* = handle[
      StepBasic_ProductCategoryRelationship]

## ! Representation of STEP entity ProductCategoryRelationship

type
  StepBasic_ProductCategoryRelationship* {.
      importcpp: "StepBasic_ProductCategoryRelationship",
      header: "StepBasic_ProductCategoryRelationship.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor


proc constructStepBasic_ProductCategoryRelationship*(): StepBasic_ProductCategoryRelationship {.
    constructor, importcpp: "StepBasic_ProductCategoryRelationship(@)",
    header: "StepBasic_ProductCategoryRelationship.hxx".}
proc Init*(this: var StepBasic_ProductCategoryRelationship;
          aName: handle[TCollection_HAsciiString];
          hasDescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString];
          aCategory: handle[StepBasic_ProductCategory];
          aSubCategory: handle[StepBasic_ProductCategory]) {.importcpp: "Init",
    header: "StepBasic_ProductCategoryRelationship.hxx".}
proc Name*(this: StepBasic_ProductCategoryRelationship): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name", header: "StepBasic_ProductCategoryRelationship.hxx".}
proc SetName*(this: var StepBasic_ProductCategoryRelationship;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_ProductCategoryRelationship.hxx".}
proc Description*(this: StepBasic_ProductCategoryRelationship): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description", header: "StepBasic_ProductCategoryRelationship.hxx".}
proc SetDescription*(this: var StepBasic_ProductCategoryRelationship;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepBasic_ProductCategoryRelationship.hxx".}
proc HasDescription*(this: StepBasic_ProductCategoryRelationship): Standard_Boolean {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepBasic_ProductCategoryRelationship.hxx".}
proc Category*(this: StepBasic_ProductCategoryRelationship): handle[
    StepBasic_ProductCategory] {.noSideEffect, importcpp: "Category", header: "StepBasic_ProductCategoryRelationship.hxx".}
proc SetCategory*(this: var StepBasic_ProductCategoryRelationship;
                 Category: handle[StepBasic_ProductCategory]) {.
    importcpp: "SetCategory", header: "StepBasic_ProductCategoryRelationship.hxx".}
proc SubCategory*(this: StepBasic_ProductCategoryRelationship): handle[
    StepBasic_ProductCategory] {.noSideEffect, importcpp: "SubCategory", header: "StepBasic_ProductCategoryRelationship.hxx".}
proc SetSubCategory*(this: var StepBasic_ProductCategoryRelationship;
                    SubCategory: handle[StepBasic_ProductCategory]) {.
    importcpp: "SetSubCategory",
    header: "StepBasic_ProductCategoryRelationship.hxx".}
type
  StepBasic_ProductCategoryRelationshipbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ProductCategoryRelationship::get_type_name(@)", header: "StepBasic_ProductCategoryRelationship.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ProductCategoryRelationship::get_type_descriptor(@)",
    header: "StepBasic_ProductCategoryRelationship.hxx".}
proc DynamicType*(this: StepBasic_ProductCategoryRelationship): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepBasic_ProductCategoryRelationship.hxx".}