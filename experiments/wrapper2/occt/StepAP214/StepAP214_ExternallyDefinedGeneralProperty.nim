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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepBasic/StepBasic_GeneralProperty, ../Standard/Standard_Boolean

discard "forward decl of StepBasic_ExternallyDefinedItem"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_SourceItem"
discard "forward decl of StepBasic_ExternalSource"
discard "forward decl of StepAP214_ExternallyDefinedGeneralProperty"
discard "forward decl of StepAP214_ExternallyDefinedGeneralProperty"
type
  Handle_StepAP214_ExternallyDefinedGeneralProperty* = handle[
      StepAP214_ExternallyDefinedGeneralProperty]

## ! Representation of STEP entity ExternallyDefinedGeneralProperty

type
  StepAP214_ExternallyDefinedGeneralProperty* {.
      importcpp: "StepAP214_ExternallyDefinedGeneralProperty",
      header: "StepAP214_ExternallyDefinedGeneralProperty.hxx", bycopy.} = object of StepBasic_GeneralProperty ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructStepAP214_ExternallyDefinedGeneralProperty*(): StepAP214_ExternallyDefinedGeneralProperty {.
    constructor, importcpp: "StepAP214_ExternallyDefinedGeneralProperty(@)",
    header: "StepAP214_ExternallyDefinedGeneralProperty.hxx".}
proc Init*(this: var StepAP214_ExternallyDefinedGeneralProperty;
          aGeneralProperty_Id: handle[TCollection_HAsciiString];
          aGeneralProperty_Name: handle[TCollection_HAsciiString];
          hasGeneralProperty_Description: Standard_Boolean;
          aGeneralProperty_Description: handle[TCollection_HAsciiString];
          aExternallyDefinedItem_ItemId: StepBasic_SourceItem;
          aExternallyDefinedItem_Source: handle[StepBasic_ExternalSource]) {.
    importcpp: "Init", header: "StepAP214_ExternallyDefinedGeneralProperty.hxx".}
proc ExternallyDefinedItem*(this: StepAP214_ExternallyDefinedGeneralProperty): handle[
    StepBasic_ExternallyDefinedItem] {.noSideEffect,
                                      importcpp: "ExternallyDefinedItem", header: "StepAP214_ExternallyDefinedGeneralProperty.hxx".}
proc SetExternallyDefinedItem*(this: var StepAP214_ExternallyDefinedGeneralProperty;
    ExternallyDefinedItem: handle[StepBasic_ExternallyDefinedItem]) {.
    importcpp: "SetExternallyDefinedItem",
    header: "StepAP214_ExternallyDefinedGeneralProperty.hxx".}
type
  StepAP214_ExternallyDefinedGeneralPropertybase_type* = StepBasic_GeneralProperty

proc get_type_name*(): cstring {.importcpp: "StepAP214_ExternallyDefinedGeneralProperty::get_type_name(@)", header: "StepAP214_ExternallyDefinedGeneralProperty.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP214_ExternallyDefinedGeneralProperty::get_type_descriptor(@)",
    header: "StepAP214_ExternallyDefinedGeneralProperty.hxx".}
proc DynamicType*(this: StepAP214_ExternallyDefinedGeneralProperty): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepAP214_ExternallyDefinedGeneralProperty.hxx".}