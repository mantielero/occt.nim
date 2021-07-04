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
discard "forward decl of StepBasic_ApplicationContext"
discard "forward decl of StepBasic_ApplicationContextElement"
discard "forward decl of StepBasic_ApplicationContextElement"
type
  Handle_StepBasic_ApplicationContextElement* = handle[
      StepBasic_ApplicationContextElement]
  StepBasic_ApplicationContextElement* {.importcpp: "StepBasic_ApplicationContextElement", header: "StepBasic_ApplicationContextElement.hxx",
                                        bycopy.} = object of Standard_Transient ## !
                                                                           ## Returns a
                                                                           ## ApplicationContextElement


proc constructStepBasic_ApplicationContextElement*(): StepBasic_ApplicationContextElement {.
    constructor, importcpp: "StepBasic_ApplicationContextElement(@)",
    header: "StepBasic_ApplicationContextElement.hxx".}
proc Init*(this: var StepBasic_ApplicationContextElement;
          aName: handle[TCollection_HAsciiString];
          aFrameOfReference: handle[StepBasic_ApplicationContext]) {.
    importcpp: "Init", header: "StepBasic_ApplicationContextElement.hxx".}
proc SetName*(this: var StepBasic_ApplicationContextElement;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_ApplicationContextElement.hxx".}
proc Name*(this: StepBasic_ApplicationContextElement): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name", header: "StepBasic_ApplicationContextElement.hxx".}
proc SetFrameOfReference*(this: var StepBasic_ApplicationContextElement;
    aFrameOfReference: handle[StepBasic_ApplicationContext]) {.
    importcpp: "SetFrameOfReference",
    header: "StepBasic_ApplicationContextElement.hxx".}
proc FrameOfReference*(this: StepBasic_ApplicationContextElement): handle[
    StepBasic_ApplicationContext] {.noSideEffect, importcpp: "FrameOfReference", header: "StepBasic_ApplicationContextElement.hxx".}
type
  StepBasic_ApplicationContextElementbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ApplicationContextElement::get_type_name(@)",
                              header: "StepBasic_ApplicationContextElement.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ApplicationContextElement::get_type_descriptor(@)",
    header: "StepBasic_ApplicationContextElement.hxx".}
proc DynamicType*(this: StepBasic_ApplicationContextElement): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ApplicationContextElement.hxx".}