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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_Document"
discard "forward decl of StepBasic_DocumentRepresentationType"
discard "forward decl of StepBasic_DocumentRepresentationType"
type
  Handle_StepBasic_DocumentRepresentationType* = handle[
      StepBasic_DocumentRepresentationType]

## ! Representation of STEP entity DocumentRepresentationType

type
  StepBasic_DocumentRepresentationType* {.
      importcpp: "StepBasic_DocumentRepresentationType",
      header: "StepBasic_DocumentRepresentationType.hxx", bycopy.} = object of Standard_Transient ##
                                                                                           ## !
                                                                                           ## Empty
                                                                                           ## constructor


proc constructStepBasic_DocumentRepresentationType*(): StepBasic_DocumentRepresentationType {.
    constructor, importcpp: "StepBasic_DocumentRepresentationType(@)",
    header: "StepBasic_DocumentRepresentationType.hxx".}
proc Init*(this: var StepBasic_DocumentRepresentationType;
          aName: handle[TCollection_HAsciiString];
          aRepresentedDocument: handle[StepBasic_Document]) {.importcpp: "Init",
    header: "StepBasic_DocumentRepresentationType.hxx".}
proc Name*(this: StepBasic_DocumentRepresentationType): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name", header: "StepBasic_DocumentRepresentationType.hxx".}
proc SetName*(this: var StepBasic_DocumentRepresentationType;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_DocumentRepresentationType.hxx".}
proc RepresentedDocument*(this: StepBasic_DocumentRepresentationType): handle[
    StepBasic_Document] {.noSideEffect, importcpp: "RepresentedDocument",
                         header: "StepBasic_DocumentRepresentationType.hxx".}
proc SetRepresentedDocument*(this: var StepBasic_DocumentRepresentationType;
                            RepresentedDocument: handle[StepBasic_Document]) {.
    importcpp: "SetRepresentedDocument",
    header: "StepBasic_DocumentRepresentationType.hxx".}
type
  StepBasic_DocumentRepresentationTypebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_DocumentRepresentationType::get_type_name(@)", header: "StepBasic_DocumentRepresentationType.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_DocumentRepresentationType::get_type_descriptor(@)",
    header: "StepBasic_DocumentRepresentationType.hxx".}
proc DynamicType*(this: StepBasic_DocumentRepresentationType): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_DocumentRepresentationType.hxx".}