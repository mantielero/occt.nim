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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of Interface_NodeOfGeneralLib"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_GeneralModule"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_GlobalNodeOfGeneralLib"
type
  Interface_GeneralLib* {.importcpp: "Interface_GeneralLib",
                         header: "Interface_GeneralLib.hxx", bycopy.} = object ## ! Adds a couple
                                                                          ## (Module-Protocol) into the global
                                                                          ## definition set
                                                                          ## ! for this class of
                                                                          ## Library.


proc SetGlobal*(amodule: handle[Interface_GeneralModule];
               aprotocol: handle[Interface_Protocol]) {.
    importcpp: "Interface_GeneralLib::SetGlobal(@)",
    header: "Interface_GeneralLib.hxx".}
proc constructInterface_GeneralLib*(aprotocol: handle[Interface_Protocol]): Interface_GeneralLib {.
    constructor, importcpp: "Interface_GeneralLib(@)",
    header: "Interface_GeneralLib.hxx".}
proc constructInterface_GeneralLib*(): Interface_GeneralLib {.constructor,
    importcpp: "Interface_GeneralLib(@)", header: "Interface_GeneralLib.hxx".}
proc AddProtocol*(this: var Interface_GeneralLib;
                 aprotocol: handle[Standard_Transient]) {.
    importcpp: "AddProtocol", header: "Interface_GeneralLib.hxx".}
proc Clear*(this: var Interface_GeneralLib) {.importcpp: "Clear",
    header: "Interface_GeneralLib.hxx".}
proc SetComplete*(this: var Interface_GeneralLib) {.importcpp: "SetComplete",
    header: "Interface_GeneralLib.hxx".}
proc Select*(this: Interface_GeneralLib; obj: handle[Standard_Transient];
            module: var handle[Interface_GeneralModule]; CN: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Select", header: "Interface_GeneralLib.hxx".}
proc Start*(this: var Interface_GeneralLib) {.importcpp: "Start",
    header: "Interface_GeneralLib.hxx".}
proc More*(this: Interface_GeneralLib): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "Interface_GeneralLib.hxx".}
proc Next*(this: var Interface_GeneralLib) {.importcpp: "Next",
    header: "Interface_GeneralLib.hxx".}
proc Module*(this: Interface_GeneralLib): handle[Interface_GeneralModule] {.
    noSideEffect, importcpp: "Module", header: "Interface_GeneralLib.hxx".}
proc Protocol*(this: Interface_GeneralLib): handle[Interface_Protocol] {.
    noSideEffect, importcpp: "Protocol", header: "Interface_GeneralLib.hxx".}