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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_Product"
discard "forward decl of StepBasic_ProductDefinitionFormation"
discard "forward decl of StepBasic_ProductDefinitionFormation"
type
  Handle_StepBasic_ProductDefinitionFormation* = handle[
      StepBasic_ProductDefinitionFormation]
  StepBasic_ProductDefinitionFormation* {.
      importcpp: "StepBasic_ProductDefinitionFormation",
      header: "StepBasic_ProductDefinitionFormation.hxx", bycopy.} = object of Standard_Transient ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## a
                                                                                           ## ProductDefinitionFormation


proc constructStepBasic_ProductDefinitionFormation*(): StepBasic_ProductDefinitionFormation {.
    constructor, importcpp: "StepBasic_ProductDefinitionFormation(@)",
    header: "StepBasic_ProductDefinitionFormation.hxx".}
proc Init*(this: var StepBasic_ProductDefinitionFormation;
          aId: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aOfProduct: handle[StepBasic_Product]) {.importcpp: "Init",
    header: "StepBasic_ProductDefinitionFormation.hxx".}
proc SetId*(this: var StepBasic_ProductDefinitionFormation;
           aId: handle[TCollection_HAsciiString]) {.importcpp: "SetId",
    header: "StepBasic_ProductDefinitionFormation.hxx".}
proc Id*(this: StepBasic_ProductDefinitionFormation): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Id", header: "StepBasic_ProductDefinitionFormation.hxx".}
proc SetDescription*(this: var StepBasic_ProductDefinitionFormation;
                    aDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepBasic_ProductDefinitionFormation.hxx".}
proc Description*(this: StepBasic_ProductDefinitionFormation): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description", header: "StepBasic_ProductDefinitionFormation.hxx".}
proc SetOfProduct*(this: var StepBasic_ProductDefinitionFormation;
                  aOfProduct: handle[StepBasic_Product]) {.
    importcpp: "SetOfProduct", header: "StepBasic_ProductDefinitionFormation.hxx".}
proc OfProduct*(this: StepBasic_ProductDefinitionFormation): handle[
    StepBasic_Product] {.noSideEffect, importcpp: "OfProduct",
                        header: "StepBasic_ProductDefinitionFormation.hxx".}
type
  StepBasic_ProductDefinitionFormationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ProductDefinitionFormation::get_type_name(@)", header: "StepBasic_ProductDefinitionFormation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ProductDefinitionFormation::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinitionFormation.hxx".}
proc DynamicType*(this: StepBasic_ProductDefinitionFormation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ProductDefinitionFormation.hxx".}