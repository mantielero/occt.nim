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

discard "forward decl of Interface_NodeOfGeneralLib"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_GeneralModule"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_GlobalNodeOfGeneralLib"
type
  InterfaceGeneralLib* {.importcpp: "Interface_GeneralLib",
                        header: "Interface_GeneralLib.hxx", bycopy.} = object ## ! Adds a couple
                                                                         ## (Module-Protocol) into the global
                                                                         ## definition set
                                                                         ## ! for this class of
                                                                         ## Library.


proc setGlobal*(amodule: Handle[InterfaceGeneralModule];
               aprotocol: Handle[InterfaceProtocol]) {.
    importcpp: "Interface_GeneralLib::SetGlobal(@)",
    header: "Interface_GeneralLib.hxx".}
proc constructInterfaceGeneralLib*(aprotocol: Handle[InterfaceProtocol]): InterfaceGeneralLib {.
    constructor, importcpp: "Interface_GeneralLib(@)",
    header: "Interface_GeneralLib.hxx".}
proc constructInterfaceGeneralLib*(): InterfaceGeneralLib {.constructor,
    importcpp: "Interface_GeneralLib(@)", header: "Interface_GeneralLib.hxx".}
proc addProtocol*(this: var InterfaceGeneralLib;
                 aprotocol: Handle[StandardTransient]) {.importcpp: "AddProtocol",
    header: "Interface_GeneralLib.hxx".}
proc clear*(this: var InterfaceGeneralLib) {.importcpp: "Clear",
    header: "Interface_GeneralLib.hxx".}
proc setComplete*(this: var InterfaceGeneralLib) {.importcpp: "SetComplete",
    header: "Interface_GeneralLib.hxx".}
proc select*(this: InterfaceGeneralLib; obj: Handle[StandardTransient];
            module: var Handle[InterfaceGeneralModule]; cn: var cint): bool {.
    noSideEffect, importcpp: "Select", header: "Interface_GeneralLib.hxx".}
proc start*(this: var InterfaceGeneralLib) {.importcpp: "Start",
    header: "Interface_GeneralLib.hxx".}
proc more*(this: InterfaceGeneralLib): bool {.noSideEffect, importcpp: "More",
    header: "Interface_GeneralLib.hxx".}
proc next*(this: var InterfaceGeneralLib) {.importcpp: "Next",
                                        header: "Interface_GeneralLib.hxx".}
proc module*(this: InterfaceGeneralLib): Handle[InterfaceGeneralModule] {.
    noSideEffect, importcpp: "Module", header: "Interface_GeneralLib.hxx".}
proc protocol*(this: InterfaceGeneralLib): Handle[InterfaceProtocol] {.noSideEffect,
    importcpp: "Protocol", header: "Interface_GeneralLib.hxx".}

























