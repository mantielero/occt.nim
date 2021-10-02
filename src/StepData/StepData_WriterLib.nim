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

discard "forward decl of StepData_NodeOfWriterLib"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_Transient"
discard "forward decl of StepData_ReadWriteModule"
discard "forward decl of StepData_Protocol"
discard "forward decl of StepData_GlobalNodeOfWriterLib"
type
  StepDataWriterLib* {.importcpp: "StepData_WriterLib",
                      header: "StepData_WriterLib.hxx", bycopy.} = object


proc `new`*(this: var StepDataWriterLib; theSize: csize_t): pointer {.
    importcpp: "StepData_WriterLib::operator new",
    header: "StepData_WriterLib.hxx".}
proc `delete`*(this: var StepDataWriterLib; theAddress: pointer) {.
    importcpp: "StepData_WriterLib::operator delete",
    header: "StepData_WriterLib.hxx".}
proc `new[]`*(this: var StepDataWriterLib; theSize: csize_t): pointer {.
    importcpp: "StepData_WriterLib::operator new[]",
    header: "StepData_WriterLib.hxx".}
proc `delete[]`*(this: var StepDataWriterLib; theAddress: pointer) {.
    importcpp: "StepData_WriterLib::operator delete[]",
    header: "StepData_WriterLib.hxx".}
proc `new`*(this: var StepDataWriterLib; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepData_WriterLib::operator new",
    header: "StepData_WriterLib.hxx".}
proc `delete`*(this: var StepDataWriterLib; a2: pointer; a3: pointer) {.
    importcpp: "StepData_WriterLib::operator delete",
    header: "StepData_WriterLib.hxx".}
proc setGlobal*(amodule: Handle[StepDataReadWriteModule];
               aprotocol: Handle[StepDataProtocol]) {.
    importcpp: "StepData_WriterLib::SetGlobal(@)",
    header: "StepData_WriterLib.hxx".}
proc constructStepDataWriterLib*(aprotocol: Handle[StepDataProtocol]): StepDataWriterLib {.
    constructor, importcpp: "StepData_WriterLib(@)",
    header: "StepData_WriterLib.hxx".}
proc constructStepDataWriterLib*(): StepDataWriterLib {.constructor,
    importcpp: "StepData_WriterLib(@)", header: "StepData_WriterLib.hxx".}
proc addProtocol*(this: var StepDataWriterLib; aprotocol: Handle[StandardTransient]) {.
    importcpp: "AddProtocol", header: "StepData_WriterLib.hxx".}
proc clear*(this: var StepDataWriterLib) {.importcpp: "Clear",
                                       header: "StepData_WriterLib.hxx".}
proc setComplete*(this: var StepDataWriterLib) {.importcpp: "SetComplete",
    header: "StepData_WriterLib.hxx".}
proc select*(this: StepDataWriterLib; obj: Handle[StandardTransient];
            module: var Handle[StepDataReadWriteModule]; cn: var int): StandardBoolean {.
    noSideEffect, importcpp: "Select", header: "StepData_WriterLib.hxx".}
proc start*(this: var StepDataWriterLib) {.importcpp: "Start",
                                       header: "StepData_WriterLib.hxx".}
proc more*(this: StepDataWriterLib): StandardBoolean {.noSideEffect,
    importcpp: "More", header: "StepData_WriterLib.hxx".}
proc next*(this: var StepDataWriterLib) {.importcpp: "Next",
                                      header: "StepData_WriterLib.hxx".}
proc module*(this: StepDataWriterLib): Handle[StepDataReadWriteModule] {.
    noSideEffect, importcpp: "Module", header: "StepData_WriterLib.hxx".}
proc protocol*(this: StepDataWriterLib): Handle[StepDataProtocol] {.noSideEffect,
    importcpp: "Protocol", header: "StepData_WriterLib.hxx".}