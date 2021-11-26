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
discard "forward decl of StepBasic_ApplicationContext"
discard "forward decl of StepBasic_ApplicationContextElement"
discard "forward decl of StepBasic_ApplicationContextElement"
type
  HandleC1C1* = Handle[StepBasicApplicationContextElement]
  StepBasicApplicationContextElement* {.importcpp: "StepBasic_ApplicationContextElement", header: "StepBasic_ApplicationContextElement.hxx",
                                       bycopy.} = object of StandardTransient ## ! Returns a
                                                                         ## ApplicationContextElement


proc constructStepBasicApplicationContextElement*(): StepBasicApplicationContextElement {.
    constructor, importcpp: "StepBasic_ApplicationContextElement(@)",
    header: "StepBasic_ApplicationContextElement.hxx".}
proc init*(this: var StepBasicApplicationContextElement;
          aName: Handle[TCollectionHAsciiString];
          aFrameOfReference: Handle[StepBasicApplicationContext]) {.
    importcpp: "Init", header: "StepBasic_ApplicationContextElement.hxx".}
proc setName*(this: var StepBasicApplicationContextElement;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_ApplicationContextElement.hxx".}
proc name*(this: StepBasicApplicationContextElement): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name",
                              header: "StepBasic_ApplicationContextElement.hxx".}
proc setFrameOfReference*(this: var StepBasicApplicationContextElement;
                         aFrameOfReference: Handle[StepBasicApplicationContext]) {.
    importcpp: "SetFrameOfReference",
    header: "StepBasic_ApplicationContextElement.hxx".}
proc frameOfReference*(this: StepBasicApplicationContextElement): Handle[
    StepBasicApplicationContext] {.noSideEffect, importcpp: "FrameOfReference", header: "StepBasic_ApplicationContextElement.hxx".}
type
  StepBasicApplicationContextElementbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ApplicationContextElement::get_type_name(@)",
                            header: "StepBasic_ApplicationContextElement.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ApplicationContextElement::get_type_descriptor(@)",
    header: "StepBasic_ApplicationContextElement.hxx".}
proc dynamicType*(this: StepBasicApplicationContextElement): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ApplicationContextElement.hxx".}