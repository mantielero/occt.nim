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

discard "forward decl of IGESData_NodeOfSpecificLib"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_SpecificModule"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_GlobalNodeOfSpecificLib"
discard "forward decl of Standard_Transient"
type
  IGESDataSpecificLib* {.importcpp: "IGESData_SpecificLib",
                        header: "IGESData_SpecificLib.hxx", bycopy.} = object ## ! Adds a couple
                                                                         ## (Module-Protocol) into the global
                                                                         ## definition set
                                                                         ## ! for this class of
                                                                         ## Library.


proc setGlobal*(amodule: Handle[IGESDataSpecificModule];
               aprotocol: Handle[IGESDataProtocol]) {.
    importcpp: "IGESData_SpecificLib::SetGlobal(@)",
    header: "IGESData_SpecificLib.hxx".}
proc constructIGESDataSpecificLib*(aprotocol: Handle[IGESDataProtocol]): IGESDataSpecificLib {.
    constructor, importcpp: "IGESData_SpecificLib(@)",
    header: "IGESData_SpecificLib.hxx".}
proc constructIGESDataSpecificLib*(): IGESDataSpecificLib {.constructor,
    importcpp: "IGESData_SpecificLib(@)", header: "IGESData_SpecificLib.hxx".}
proc addProtocol*(this: var IGESDataSpecificLib;
                 aprotocol: Handle[StandardTransient]) {.importcpp: "AddProtocol",
    header: "IGESData_SpecificLib.hxx".}
proc clear*(this: var IGESDataSpecificLib) {.importcpp: "Clear",
    header: "IGESData_SpecificLib.hxx".}
proc setComplete*(this: var IGESDataSpecificLib) {.importcpp: "SetComplete",
    header: "IGESData_SpecificLib.hxx".}
proc select*(this: IGESDataSpecificLib; obj: Handle[IGESDataIGESEntity];
            module: var Handle[IGESDataSpecificModule]; cn: var int): bool {.
    noSideEffect, importcpp: "Select", header: "IGESData_SpecificLib.hxx".}
proc start*(this: var IGESDataSpecificLib) {.importcpp: "Start",
    header: "IGESData_SpecificLib.hxx".}
proc more*(this: IGESDataSpecificLib): bool {.noSideEffect, importcpp: "More",
    header: "IGESData_SpecificLib.hxx".}
proc next*(this: var IGESDataSpecificLib) {.importcpp: "Next",
                                        header: "IGESData_SpecificLib.hxx".}
proc module*(this: IGESDataSpecificLib): Handle[IGESDataSpecificModule] {.
    noSideEffect, importcpp: "Module", header: "IGESData_SpecificLib.hxx".}
proc protocol*(this: IGESDataSpecificLib): Handle[IGESDataProtocol] {.noSideEffect,
    importcpp: "Protocol", header: "IGESData_SpecificLib.hxx".}
