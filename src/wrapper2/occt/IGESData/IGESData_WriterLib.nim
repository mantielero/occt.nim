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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of IGESData_NodeOfWriterLib"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_ReadWriteModule"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_GlobalNodeOfWriterLib"
discard "forward decl of Standard_Transient"
type
  IGESData_WriterLib* {.importcpp: "IGESData_WriterLib",
                       header: "IGESData_WriterLib.hxx", bycopy.} = object ## ! Adds a couple
                                                                      ## (Module-Protocol) into the global definition set
                                                                      ## ! for this class of Library.


proc SetGlobal*(amodule: handle[IGESData_ReadWriteModule];
               aprotocol: handle[IGESData_Protocol]) {.
    importcpp: "IGESData_WriterLib::SetGlobal(@)",
    header: "IGESData_WriterLib.hxx".}
proc constructIGESData_WriterLib*(aprotocol: handle[IGESData_Protocol]): IGESData_WriterLib {.
    constructor, importcpp: "IGESData_WriterLib(@)",
    header: "IGESData_WriterLib.hxx".}
proc constructIGESData_WriterLib*(): IGESData_WriterLib {.constructor,
    importcpp: "IGESData_WriterLib(@)", header: "IGESData_WriterLib.hxx".}
proc AddProtocol*(this: var IGESData_WriterLib;
                 aprotocol: handle[Standard_Transient]) {.
    importcpp: "AddProtocol", header: "IGESData_WriterLib.hxx".}
proc Clear*(this: var IGESData_WriterLib) {.importcpp: "Clear",
                                        header: "IGESData_WriterLib.hxx".}
proc SetComplete*(this: var IGESData_WriterLib) {.importcpp: "SetComplete",
    header: "IGESData_WriterLib.hxx".}
proc Select*(this: IGESData_WriterLib; obj: handle[IGESData_IGESEntity];
            module: var handle[IGESData_ReadWriteModule]; CN: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Select", header: "IGESData_WriterLib.hxx".}
proc Start*(this: var IGESData_WriterLib) {.importcpp: "Start",
                                        header: "IGESData_WriterLib.hxx".}
proc More*(this: IGESData_WriterLib): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "IGESData_WriterLib.hxx".}
proc Next*(this: var IGESData_WriterLib) {.importcpp: "Next",
                                       header: "IGESData_WriterLib.hxx".}
proc Module*(this: IGESData_WriterLib): handle[IGESData_ReadWriteModule] {.
    noSideEffect, importcpp: "Module", header: "IGESData_WriterLib.hxx".}
proc Protocol*(this: IGESData_WriterLib): handle[IGESData_Protocol] {.noSideEffect,
    importcpp: "Protocol", header: "IGESData_WriterLib.hxx".}