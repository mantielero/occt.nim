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
discard "forward decl of StepRepr_FunctionallyDefinedTransformation"
discard "forward decl of StepRepr_FunctionallyDefinedTransformation"
type
  HandleC1C1* = Handle[StepReprFunctionallyDefinedTransformation]
  StepReprFunctionallyDefinedTransformation* {.
      importcpp: "StepRepr_FunctionallyDefinedTransformation",
      header: "StepRepr_FunctionallyDefinedTransformation.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## a
                                                                                                ## FunctionallyDefinedTransformation


proc constructStepReprFunctionallyDefinedTransformation*(): StepReprFunctionallyDefinedTransformation {.
    constructor, importcpp: "StepRepr_FunctionallyDefinedTransformation(@)",
    header: "StepRepr_FunctionallyDefinedTransformation.hxx".}
proc init*(this: var StepReprFunctionallyDefinedTransformation;
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepRepr_FunctionallyDefinedTransformation.hxx".}
proc setName*(this: var StepReprFunctionallyDefinedTransformation;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_FunctionallyDefinedTransformation.hxx".}
proc name*(this: StepReprFunctionallyDefinedTransformation): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name", header: "StepRepr_FunctionallyDefinedTransformation.hxx".}
proc setDescription*(this: var StepReprFunctionallyDefinedTransformation;
                    aDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepRepr_FunctionallyDefinedTransformation.hxx".}
proc description*(this: StepReprFunctionallyDefinedTransformation): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description", header: "StepRepr_FunctionallyDefinedTransformation.hxx".}
type
  StepReprFunctionallyDefinedTransformationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepRepr_FunctionallyDefinedTransformation::get_type_name(@)", header: "StepRepr_FunctionallyDefinedTransformation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_FunctionallyDefinedTransformation::get_type_descriptor(@)",
    header: "StepRepr_FunctionallyDefinedTransformation.hxx".}
proc dynamicType*(this: StepReprFunctionallyDefinedTransformation): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepRepr_FunctionallyDefinedTransformation.hxx".}

























