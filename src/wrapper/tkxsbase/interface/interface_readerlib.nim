import interface_types
import ../../tkernel/standard/standard_types







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



proc setGlobal*(amodule: Handle[InterfaceReaderModule];
               aprotocol: Handle[InterfaceProtocol]) {.cdecl,
    importcpp: "Interface_ReaderLib::SetGlobal(@)", header: "Interface_ReaderLib.hxx".}
proc newInterfaceReaderLib*(aprotocol: Handle[InterfaceProtocol]): InterfaceReaderLib {.
    cdecl, constructor, importcpp: "Interface_ReaderLib(@)", header: "Interface_ReaderLib.hxx".}
proc newInterfaceReaderLib*(): InterfaceReaderLib {.cdecl, constructor,
    importcpp: "Interface_ReaderLib(@)", header: "Interface_ReaderLib.hxx".}
proc addProtocol*(this: var InterfaceReaderLib; aprotocol: Handle[StandardTransient]) {.
    cdecl, importcpp: "AddProtocol", header: "Interface_ReaderLib.hxx".}
proc clear*(this: var InterfaceReaderLib) {.cdecl, importcpp: "Clear", header: "Interface_ReaderLib.hxx".}
proc setComplete*(this: var InterfaceReaderLib) {.cdecl, importcpp: "SetComplete",
    header: "Interface_ReaderLib.hxx".}
proc select*(this: InterfaceReaderLib; obj: Handle[StandardTransient];
            module: var Handle[InterfaceReaderModule]; cn: var cint): bool {.
    noSideEffect, cdecl, importcpp: "Select", header: "Interface_ReaderLib.hxx".}
proc start*(this: var InterfaceReaderLib) {.cdecl, importcpp: "Start", header: "Interface_ReaderLib.hxx".}
proc more*(this: InterfaceReaderLib): bool {.noSideEffect, cdecl, importcpp: "More",
    header: "Interface_ReaderLib.hxx".}
proc next*(this: var InterfaceReaderLib) {.cdecl, importcpp: "Next", header: "Interface_ReaderLib.hxx".}
proc module*(this: InterfaceReaderLib): Handle[InterfaceReaderModule] {.
    noSideEffect, cdecl, importcpp: "Module", header: "Interface_ReaderLib.hxx".}
proc protocol*(this: InterfaceReaderLib): Handle[InterfaceProtocol] {.noSideEffect,
    cdecl, importcpp: "Protocol", header: "Interface_ReaderLib.hxx".}



