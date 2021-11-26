##  Created on: 1992-02-03
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

discard "forward decl of Interface_NodeOfReaderLib"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_ReaderModule"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_GlobalNodeOfReaderLib"
type
  InterfaceReaderLib* {.importcpp: "Interface_ReaderLib",
                       header: "Interface_ReaderLib.hxx", bycopy.} = object ## ! Adds a couple
                                                                       ## (Module-Protocol) into the global
                                                                       ## definition set
                                                                       ## ! for this class of Library.


proc setGlobal*(amodule: Handle[InterfaceReaderModule];
               aprotocol: Handle[InterfaceProtocol]) {.
    importcpp: "Interface_ReaderLib::SetGlobal(@)",
    header: "Interface_ReaderLib.hxx".}
proc constructInterfaceReaderLib*(aprotocol: Handle[InterfaceProtocol]): InterfaceReaderLib {.
    constructor, importcpp: "Interface_ReaderLib(@)",
    header: "Interface_ReaderLib.hxx".}
proc constructInterfaceReaderLib*(): InterfaceReaderLib {.constructor,
    importcpp: "Interface_ReaderLib(@)", header: "Interface_ReaderLib.hxx".}
proc addProtocol*(this: var InterfaceReaderLib; aprotocol: Handle[StandardTransient]) {.
    importcpp: "AddProtocol", header: "Interface_ReaderLib.hxx".}
proc clear*(this: var InterfaceReaderLib) {.importcpp: "Clear",
                                        header: "Interface_ReaderLib.hxx".}
proc setComplete*(this: var InterfaceReaderLib) {.importcpp: "SetComplete",
    header: "Interface_ReaderLib.hxx".}
proc select*(this: InterfaceReaderLib; obj: Handle[StandardTransient];
            module: var Handle[InterfaceReaderModule]; cn: var cint): bool {.
    noSideEffect, importcpp: "Select", header: "Interface_ReaderLib.hxx".}
proc start*(this: var InterfaceReaderLib) {.importcpp: "Start",
                                        header: "Interface_ReaderLib.hxx".}
proc more*(this: InterfaceReaderLib): bool {.noSideEffect, importcpp: "More",
    header: "Interface_ReaderLib.hxx".}
proc next*(this: var InterfaceReaderLib) {.importcpp: "Next",
                                       header: "Interface_ReaderLib.hxx".}
proc module*(this: InterfaceReaderLib): Handle[InterfaceReaderModule] {.
    noSideEffect, importcpp: "Module", header: "Interface_ReaderLib.hxx".}
proc protocol*(this: InterfaceReaderLib): Handle[InterfaceProtocol] {.noSideEffect,
    importcpp: "Protocol", header: "Interface_ReaderLib.hxx".}

























