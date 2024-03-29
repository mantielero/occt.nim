import interface_types
import ../standard/standard_types







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



proc setGlobal*(amodule: Handle[InterfaceGeneralModule];
               aprotocol: Handle[InterfaceProtocol]) {.cdecl,
    importcpp: "Interface_GeneralLib::SetGlobal(@)", header: "Interface_GeneralLib.hxx".}
proc newInterfaceGeneralLib*(aprotocol: Handle[InterfaceProtocol]): InterfaceGeneralLib {.
    cdecl, constructor, importcpp: "Interface_GeneralLib(@)", header: "Interface_GeneralLib.hxx".}
proc newInterfaceGeneralLib*(): InterfaceGeneralLib {.cdecl, constructor,
    importcpp: "Interface_GeneralLib(@)", header: "Interface_GeneralLib.hxx".}
proc addProtocol*(this: var InterfaceGeneralLib;
                 aprotocol: Handle[StandardTransient]) {.cdecl,
    importcpp: "AddProtocol", header: "Interface_GeneralLib.hxx".}
proc clear*(this: var InterfaceGeneralLib) {.cdecl, importcpp: "Clear",
    header: "Interface_GeneralLib.hxx".}
proc setComplete*(this: var InterfaceGeneralLib) {.cdecl, importcpp: "SetComplete",
    header: "Interface_GeneralLib.hxx".}
proc select*(this: InterfaceGeneralLib; obj: Handle[StandardTransient];
            module: var Handle[InterfaceGeneralModule]; cn: var cint): bool {.
    noSideEffect, cdecl, importcpp: "Select", header: "Interface_GeneralLib.hxx".}
proc start*(this: var InterfaceGeneralLib) {.cdecl, importcpp: "Start",
    header: "Interface_GeneralLib.hxx".}
proc more*(this: InterfaceGeneralLib): bool {.noSideEffect, cdecl, importcpp: "More",
    header: "Interface_GeneralLib.hxx".}
proc next*(this: var InterfaceGeneralLib) {.cdecl, importcpp: "Next", header: "Interface_GeneralLib.hxx".}
proc module*(this: InterfaceGeneralLib): Handle[InterfaceGeneralModule] {.
    noSideEffect, cdecl, importcpp: "Module", header: "Interface_GeneralLib.hxx".}
proc protocol*(this: InterfaceGeneralLib): Handle[InterfaceProtocol] {.noSideEffect,
    cdecl, importcpp: "Protocol", header: "Interface_GeneralLib.hxx".}



