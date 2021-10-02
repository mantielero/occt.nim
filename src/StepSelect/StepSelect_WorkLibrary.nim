##  Created on: 1994-09-14
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of IFSelect_ContextWrite"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_CopyTool"
discard "forward decl of StepSelect_WorkLibrary"
discard "forward decl of StepSelect_WorkLibrary"
type
  HandleC1C1* = Handle[StepSelectWorkLibrary]

## ! Performs Read and Write a STEP File with a STEP Model
## ! Following the protocols, Copy may be implemented or not

type
  StepSelectWorkLibrary* {.importcpp: "StepSelect_WorkLibrary",
                          header: "StepSelect_WorkLibrary.hxx", bycopy.} = object of IFSelectWorkLibrary ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## a
                                                                                                  ## STEP
                                                                                                  ## WorkLibrary
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## <copymode>
                                                                                                  ## precises
                                                                                                  ## whether
                                                                                                  ## Copy
                                                                                                  ## is
                                                                                                  ## implemented
                                                                                                  ## or
                                                                                                  ## not


proc constructStepSelectWorkLibrary*(copymode: StandardBoolean = true): StepSelectWorkLibrary {.
    constructor, importcpp: "StepSelect_WorkLibrary(@)",
    header: "StepSelect_WorkLibrary.hxx".}
proc setDumpLabel*(this: var StepSelectWorkLibrary; mode: int) {.
    importcpp: "SetDumpLabel", header: "StepSelect_WorkLibrary.hxx".}
proc readFile*(this: StepSelectWorkLibrary; name: StandardCString;
              model: var Handle[InterfaceInterfaceModel];
              protocol: Handle[InterfaceProtocol]): int {.noSideEffect,
    importcpp: "ReadFile", header: "StepSelect_WorkLibrary.hxx".}
proc readStream*(this: StepSelectWorkLibrary; theName: StandardCString;
                theIStream: var Istream;
                model: var Handle[InterfaceInterfaceModel];
                protocol: Handle[InterfaceProtocol]): int {.noSideEffect,
    importcpp: "ReadStream", header: "StepSelect_WorkLibrary.hxx".}
proc writeFile*(this: StepSelectWorkLibrary; ctx: var IFSelectContextWrite): StandardBoolean {.
    noSideEffect, importcpp: "WriteFile", header: "StepSelect_WorkLibrary.hxx".}
proc copyModel*(this: StepSelectWorkLibrary;
               original: Handle[InterfaceInterfaceModel];
               newmodel: Handle[InterfaceInterfaceModel];
               list: InterfaceEntityIterator; tc: var InterfaceCopyTool): StandardBoolean {.
    noSideEffect, importcpp: "CopyModel", header: "StepSelect_WorkLibrary.hxx".}
proc dumpEntity*(this: StepSelectWorkLibrary;
                model: Handle[InterfaceInterfaceModel];
                protocol: Handle[InterfaceProtocol];
                entity: Handle[StandardTransient]; s: var StandardOStream; level: int) {.
    noSideEffect, importcpp: "DumpEntity", header: "StepSelect_WorkLibrary.hxx".}
type
  StepSelectWorkLibrarybaseType* = IFSelectWorkLibrary

proc getTypeName*(): cstring {.importcpp: "StepSelect_WorkLibrary::get_type_name(@)",
                            header: "StepSelect_WorkLibrary.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepSelect_WorkLibrary::get_type_descriptor(@)",
    header: "StepSelect_WorkLibrary.hxx".}
proc dynamicType*(this: StepSelectWorkLibrary): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepSelect_WorkLibrary.hxx".}