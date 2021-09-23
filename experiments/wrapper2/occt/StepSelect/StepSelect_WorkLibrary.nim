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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../IFSelect/IFSelect_WorkLibrary,
  ../Standard/Standard_CString

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of IFSelect_ContextWrite"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_CopyTool"
discard "forward decl of StepSelect_WorkLibrary"
discard "forward decl of StepSelect_WorkLibrary"
type
  Handle_StepSelect_WorkLibrary* = handle[StepSelect_WorkLibrary]

## ! Performs Read and Write a STEP File with a STEP Model
## ! Following the protocols, Copy may be implemented or not

type
  StepSelect_WorkLibrary* {.importcpp: "StepSelect_WorkLibrary",
                           header: "StepSelect_WorkLibrary.hxx", bycopy.} = object of IFSelect_WorkLibrary ##
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


proc constructStepSelect_WorkLibrary*(copymode: Standard_Boolean = Standard_True): StepSelect_WorkLibrary {.
    constructor, importcpp: "StepSelect_WorkLibrary(@)",
    header: "StepSelect_WorkLibrary.hxx".}
proc SetDumpLabel*(this: var StepSelect_WorkLibrary; mode: Standard_Integer) {.
    importcpp: "SetDumpLabel", header: "StepSelect_WorkLibrary.hxx".}
proc ReadFile*(this: StepSelect_WorkLibrary; name: Standard_CString;
              model: var handle[Interface_InterfaceModel];
              protocol: handle[Interface_Protocol]): Standard_Integer {.
    noSideEffect, importcpp: "ReadFile", header: "StepSelect_WorkLibrary.hxx".}
proc ReadStream*(this: StepSelect_WorkLibrary; theName: Standard_CString;
                theIStream: var istream;
                model: var handle[Interface_InterfaceModel];
                protocol: handle[Interface_Protocol]): Standard_Integer {.
    noSideEffect, importcpp: "ReadStream", header: "StepSelect_WorkLibrary.hxx".}
proc WriteFile*(this: StepSelect_WorkLibrary; ctx: var IFSelect_ContextWrite): Standard_Boolean {.
    noSideEffect, importcpp: "WriteFile", header: "StepSelect_WorkLibrary.hxx".}
proc CopyModel*(this: StepSelect_WorkLibrary;
               original: handle[Interface_InterfaceModel];
               newmodel: handle[Interface_InterfaceModel];
               list: Interface_EntityIterator; TC: var Interface_CopyTool): Standard_Boolean {.
    noSideEffect, importcpp: "CopyModel", header: "StepSelect_WorkLibrary.hxx".}
proc DumpEntity*(this: StepSelect_WorkLibrary;
                model: handle[Interface_InterfaceModel];
                protocol: handle[Interface_Protocol];
                entity: handle[Standard_Transient]; S: var Standard_OStream;
                level: Standard_Integer) {.noSideEffect, importcpp: "DumpEntity",
    header: "StepSelect_WorkLibrary.hxx".}
type
  StepSelect_WorkLibrarybase_type* = IFSelect_WorkLibrary

proc get_type_name*(): cstring {.importcpp: "StepSelect_WorkLibrary::get_type_name(@)",
                              header: "StepSelect_WorkLibrary.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepSelect_WorkLibrary::get_type_descriptor(@)",
    header: "StepSelect_WorkLibrary.hxx".}
proc DynamicType*(this: StepSelect_WorkLibrary): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepSelect_WorkLibrary.hxx".}