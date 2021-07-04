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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ProductCategory"
discard "forward decl of StepBasic_ProductCategory"
type
  Handle_StepBasic_ProductCategory* = handle[StepBasic_ProductCategory]
  StepBasic_ProductCategory* {.importcpp: "StepBasic_ProductCategory",
                              header: "StepBasic_ProductCategory.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## ProductCategory


proc constructStepBasic_ProductCategory*(): StepBasic_ProductCategory {.
    constructor, importcpp: "StepBasic_ProductCategory(@)",
    header: "StepBasic_ProductCategory.hxx".}
proc Init*(this: var StepBasic_ProductCategory;
          aName: handle[TCollection_HAsciiString];
          hasAdescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_ProductCategory.hxx".}
proc SetName*(this: var StepBasic_ProductCategory;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_ProductCategory.hxx".}
proc Name*(this: StepBasic_ProductCategory): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_ProductCategory.hxx".}
proc SetDescription*(this: var StepBasic_ProductCategory;
                    aDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_ProductCategory.hxx".}
proc UnSetDescription*(this: var StepBasic_ProductCategory) {.
    importcpp: "UnSetDescription", header: "StepBasic_ProductCategory.hxx".}
proc Description*(this: StepBasic_ProductCategory): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_ProductCategory.hxx".}
proc HasDescription*(this: StepBasic_ProductCategory): Standard_Boolean {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepBasic_ProductCategory.hxx".}
type
  StepBasic_ProductCategorybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ProductCategory::get_type_name(@)",
                              header: "StepBasic_ProductCategory.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ProductCategory::get_type_descriptor(@)",
    header: "StepBasic_ProductCategory.hxx".}
proc DynamicType*(this: StepBasic_ProductCategory): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_ProductCategory.hxx".}