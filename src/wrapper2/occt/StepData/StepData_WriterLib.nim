##  Created on: 1992-02-11
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of StepData_NodeOfWriterLib"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_Transient"
discard "forward decl of StepData_ReadWriteModule"
discard "forward decl of StepData_Protocol"
discard "forward decl of StepData_GlobalNodeOfWriterLib"
type
  StepData_WriterLib* {.importcpp: "StepData_WriterLib",
                       header: "StepData_WriterLib.hxx", bycopy.} = object ## ! Adds a couple
                                                                      ## (Module-Protocol) into the global definition set
                                                                      ## ! for this class of Library.


proc SetGlobal*(amodule: handle[StepData_ReadWriteModule];
               aprotocol: handle[StepData_Protocol]) {.
    importcpp: "StepData_WriterLib::SetGlobal(@)",
    header: "StepData_WriterLib.hxx".}
proc constructStepData_WriterLib*(aprotocol: handle[StepData_Protocol]): StepData_WriterLib {.
    constructor, importcpp: "StepData_WriterLib(@)",
    header: "StepData_WriterLib.hxx".}
proc constructStepData_WriterLib*(): StepData_WriterLib {.constructor,
    importcpp: "StepData_WriterLib(@)", header: "StepData_WriterLib.hxx".}
proc AddProtocol*(this: var StepData_WriterLib;
                 aprotocol: handle[Standard_Transient]) {.
    importcpp: "AddProtocol", header: "StepData_WriterLib.hxx".}
proc Clear*(this: var StepData_WriterLib) {.importcpp: "Clear",
                                        header: "StepData_WriterLib.hxx".}
proc SetComplete*(this: var StepData_WriterLib) {.importcpp: "SetComplete",
    header: "StepData_WriterLib.hxx".}
proc Select*(this: StepData_WriterLib; obj: handle[Standard_Transient];
            module: var handle[StepData_ReadWriteModule]; CN: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Select", header: "StepData_WriterLib.hxx".}
proc Start*(this: var StepData_WriterLib) {.importcpp: "Start",
                                        header: "StepData_WriterLib.hxx".}
proc More*(this: StepData_WriterLib): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "StepData_WriterLib.hxx".}
proc Next*(this: var StepData_WriterLib) {.importcpp: "Next",
                                       header: "StepData_WriterLib.hxx".}
proc Module*(this: StepData_WriterLib): handle[StepData_ReadWriteModule] {.
    noSideEffect, importcpp: "Module", header: "StepData_WriterLib.hxx".}
proc Protocol*(this: StepData_WriterLib): handle[StepData_Protocol] {.noSideEffect,
    importcpp: "Protocol", header: "StepData_WriterLib.hxx".}