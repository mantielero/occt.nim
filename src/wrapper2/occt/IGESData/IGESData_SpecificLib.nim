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

discard "forward decl of IGESData_NodeOfSpecificLib"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_SpecificModule"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_GlobalNodeOfSpecificLib"
discard "forward decl of Standard_Transient"
type
  IGESData_SpecificLib* {.importcpp: "IGESData_SpecificLib",
                         header: "IGESData_SpecificLib.hxx", bycopy.} = object ## ! Adds a couple
                                                                          ## (Module-Protocol) into the global
                                                                          ## definition set
                                                                          ## ! for this class of
                                                                          ## Library.


proc SetGlobal*(amodule: handle[IGESData_SpecificModule];
               aprotocol: handle[IGESData_Protocol]) {.
    importcpp: "IGESData_SpecificLib::SetGlobal(@)",
    header: "IGESData_SpecificLib.hxx".}
proc constructIGESData_SpecificLib*(aprotocol: handle[IGESData_Protocol]): IGESData_SpecificLib {.
    constructor, importcpp: "IGESData_SpecificLib(@)",
    header: "IGESData_SpecificLib.hxx".}
proc constructIGESData_SpecificLib*(): IGESData_SpecificLib {.constructor,
    importcpp: "IGESData_SpecificLib(@)", header: "IGESData_SpecificLib.hxx".}
proc AddProtocol*(this: var IGESData_SpecificLib;
                 aprotocol: handle[Standard_Transient]) {.
    importcpp: "AddProtocol", header: "IGESData_SpecificLib.hxx".}
proc Clear*(this: var IGESData_SpecificLib) {.importcpp: "Clear",
    header: "IGESData_SpecificLib.hxx".}
proc SetComplete*(this: var IGESData_SpecificLib) {.importcpp: "SetComplete",
    header: "IGESData_SpecificLib.hxx".}
proc Select*(this: IGESData_SpecificLib; obj: handle[IGESData_IGESEntity];
            module: var handle[IGESData_SpecificModule]; CN: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Select", header: "IGESData_SpecificLib.hxx".}
proc Start*(this: var IGESData_SpecificLib) {.importcpp: "Start",
    header: "IGESData_SpecificLib.hxx".}
proc More*(this: IGESData_SpecificLib): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "IGESData_SpecificLib.hxx".}
proc Next*(this: var IGESData_SpecificLib) {.importcpp: "Next",
    header: "IGESData_SpecificLib.hxx".}
proc Module*(this: IGESData_SpecificLib): handle[IGESData_SpecificModule] {.
    noSideEffect, importcpp: "Module", header: "IGESData_SpecificLib.hxx".}
proc Protocol*(this: IGESData_SpecificLib): handle[IGESData_Protocol] {.
    noSideEffect, importcpp: "Protocol", header: "IGESData_SpecificLib.hxx".}