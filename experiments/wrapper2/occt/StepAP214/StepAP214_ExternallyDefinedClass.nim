##  Created on: 2000-05-10
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StepAP214_Class,
  ../Standard/Standard_Boolean

discard "forward decl of StepBasic_ExternallyDefinedItem"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_SourceItem"
discard "forward decl of StepBasic_ExternalSource"
discard "forward decl of StepAP214_ExternallyDefinedClass"
discard "forward decl of StepAP214_ExternallyDefinedClass"
type
  Handle_StepAP214_ExternallyDefinedClass* = handle[
      StepAP214_ExternallyDefinedClass]

## ! Representation of STEP entity ExternallyDefinedClass

type
  StepAP214_ExternallyDefinedClass* {.importcpp: "StepAP214_ExternallyDefinedClass", header: "StepAP214_ExternallyDefinedClass.hxx",
                                     bycopy.} = object of StepAP214_Class ## ! Empty constructor


proc constructStepAP214_ExternallyDefinedClass*(): StepAP214_ExternallyDefinedClass {.
    constructor, importcpp: "StepAP214_ExternallyDefinedClass(@)",
    header: "StepAP214_ExternallyDefinedClass.hxx".}
proc Init*(this: var StepAP214_ExternallyDefinedClass;
          aGroup_Name: handle[TCollection_HAsciiString];
          hasGroup_Description: Standard_Boolean;
          aGroup_Description: handle[TCollection_HAsciiString];
          aExternallyDefinedItem_ItemId: StepBasic_SourceItem;
          aExternallyDefinedItem_Source: handle[StepBasic_ExternalSource]) {.
    importcpp: "Init", header: "StepAP214_ExternallyDefinedClass.hxx".}
proc ExternallyDefinedItem*(this: StepAP214_ExternallyDefinedClass): handle[
    StepBasic_ExternallyDefinedItem] {.noSideEffect,
                                      importcpp: "ExternallyDefinedItem", header: "StepAP214_ExternallyDefinedClass.hxx".}
proc SetExternallyDefinedItem*(this: var StepAP214_ExternallyDefinedClass;
    ExternallyDefinedItem: handle[StepBasic_ExternallyDefinedItem]) {.
    importcpp: "SetExternallyDefinedItem",
    header: "StepAP214_ExternallyDefinedClass.hxx".}
type
  StepAP214_ExternallyDefinedClassbase_type* = StepAP214_Class

proc get_type_name*(): cstring {.importcpp: "StepAP214_ExternallyDefinedClass::get_type_name(@)",
                              header: "StepAP214_ExternallyDefinedClass.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP214_ExternallyDefinedClass::get_type_descriptor(@)",
    header: "StepAP214_ExternallyDefinedClass.hxx".}
proc DynamicType*(this: StepAP214_ExternallyDefinedClass): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_ExternallyDefinedClass.hxx".}