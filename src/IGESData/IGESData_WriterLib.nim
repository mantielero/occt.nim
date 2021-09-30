##  Created on: 1992-04-06
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

discard "forward decl of IGESData_NodeOfWriterLib"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_ReadWriteModule"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_GlobalNodeOfWriterLib"
discard "forward decl of Standard_Transient"
type
  IGESDataWriterLib* {.importcpp: "IGESData_WriterLib",
                      header: "IGESData_WriterLib.hxx", bycopy.} = object ## ! Adds a couple
                                                                     ## (Module-Protocol) into the global definition set
                                                                     ## ! for this class of Library.


proc setGlobal*(amodule: Handle[IGESDataReadWriteModule];
               aprotocol: Handle[IGESDataProtocol]) {.
    importcpp: "IGESData_WriterLib::SetGlobal(@)",
    header: "IGESData_WriterLib.hxx".}
proc constructIGESDataWriterLib*(aprotocol: Handle[IGESDataProtocol]): IGESDataWriterLib {.
    constructor, importcpp: "IGESData_WriterLib(@)",
    header: "IGESData_WriterLib.hxx".}
proc constructIGESDataWriterLib*(): IGESDataWriterLib {.constructor,
    importcpp: "IGESData_WriterLib(@)", header: "IGESData_WriterLib.hxx".}
proc addProtocol*(this: var IGESDataWriterLib; aprotocol: Handle[StandardTransient]) {.
    importcpp: "AddProtocol", header: "IGESData_WriterLib.hxx".}
proc clear*(this: var IGESDataWriterLib) {.importcpp: "Clear",
                                       header: "IGESData_WriterLib.hxx".}
proc setComplete*(this: var IGESDataWriterLib) {.importcpp: "SetComplete",
    header: "IGESData_WriterLib.hxx".}
proc select*(this: IGESDataWriterLib; obj: Handle[IGESDataIGESEntity];
            module: var Handle[IGESDataReadWriteModule]; cn: var cint): bool {.
    noSideEffect, importcpp: "Select", header: "IGESData_WriterLib.hxx".}
proc start*(this: var IGESDataWriterLib) {.importcpp: "Start",
                                       header: "IGESData_WriterLib.hxx".}
proc more*(this: IGESDataWriterLib): bool {.noSideEffect, importcpp: "More",
                                        header: "IGESData_WriterLib.hxx".}
proc next*(this: var IGESDataWriterLib) {.importcpp: "Next",
                                      header: "IGESData_WriterLib.hxx".}
proc module*(this: IGESDataWriterLib): Handle[IGESDataReadWriteModule] {.
    noSideEffect, importcpp: "Module", header: "IGESData_WriterLib.hxx".}
proc protocol*(this: IGESDataWriterLib): Handle[IGESDataProtocol] {.noSideEffect,
    importcpp: "Protocol", header: "IGESData_WriterLib.hxx".}

























