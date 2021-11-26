##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
discard "forward decl of StepRepr_DataEnvironment"
discard "forward decl of StepRepr_DataEnvironment"
type
  HandleC1C1* = Handle[StepReprDataEnvironment]

## ! Representation of STEP entity DataEnvironment

type
  StepReprDataEnvironment* {.importcpp: "StepRepr_DataEnvironment",
                            header: "StepRepr_DataEnvironment.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor


proc constructStepReprDataEnvironment*(): StepReprDataEnvironment {.constructor,
    importcpp: "StepRepr_DataEnvironment(@)",
    header: "StepRepr_DataEnvironment.hxx".}
proc init*(this: var StepReprDataEnvironment;
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aElements: Handle[StepReprHArray1OfPropertyDefinitionRepresentation]) {.
    importcpp: "Init", header: "StepRepr_DataEnvironment.hxx".}
proc name*(this: StepReprDataEnvironment): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepRepr_DataEnvironment.hxx".}
proc setName*(this: var StepReprDataEnvironment;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_DataEnvironment.hxx".}
proc description*(this: StepReprDataEnvironment): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepRepr_DataEnvironment.hxx".}
proc setDescription*(this: var StepReprDataEnvironment;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepRepr_DataEnvironment.hxx".}
proc elements*(this: StepReprDataEnvironment): Handle[
    StepReprHArray1OfPropertyDefinitionRepresentation] {.noSideEffect,
    importcpp: "Elements", header: "StepRepr_DataEnvironment.hxx".}
proc setElements*(this: var StepReprDataEnvironment; elements: Handle[
    StepReprHArray1OfPropertyDefinitionRepresentation]) {.
    importcpp: "SetElements", header: "StepRepr_DataEnvironment.hxx".}
type
  StepReprDataEnvironmentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepRepr_DataEnvironment::get_type_name(@)",
                            header: "StepRepr_DataEnvironment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_DataEnvironment::get_type_descriptor(@)",
    header: "StepRepr_DataEnvironment.hxx".}
proc dynamicType*(this: StepReprDataEnvironment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepRepr_DataEnvironment.hxx".}