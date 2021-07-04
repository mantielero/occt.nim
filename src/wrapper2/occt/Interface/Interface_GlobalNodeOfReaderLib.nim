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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of Interface_ReaderModule"
discard "forward decl of Interface_Protocol"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_ReaderLib"
discard "forward decl of Interface_NodeOfReaderLib"
discard "forward decl of Interface_GlobalNodeOfReaderLib"
discard "forward decl of Interface_GlobalNodeOfReaderLib"
type
  Handle_Interface_GlobalNodeOfReaderLib* = handle[Interface_GlobalNodeOfReaderLib]
  Interface_GlobalNodeOfReaderLib* {.importcpp: "Interface_GlobalNodeOfReaderLib", header: "Interface_GlobalNodeOfReaderLib.hxx",
                                    bycopy.} = object of Standard_Transient ## ! Creates an empty
                                                                       ## GlobalNode, with no Next


proc constructInterface_GlobalNodeOfReaderLib*(): Interface_GlobalNodeOfReaderLib {.
    constructor, importcpp: "Interface_GlobalNodeOfReaderLib(@)",
    header: "Interface_GlobalNodeOfReaderLib.hxx".}
proc Add*(this: var Interface_GlobalNodeOfReaderLib;
         amodule: handle[Interface_ReaderModule];
         aprotocol: handle[Interface_Protocol]) {.importcpp: "Add",
    header: "Interface_GlobalNodeOfReaderLib.hxx".}
proc Module*(this: Interface_GlobalNodeOfReaderLib): handle[Interface_ReaderModule] {.
    noSideEffect, importcpp: "Module",
    header: "Interface_GlobalNodeOfReaderLib.hxx".}
proc Protocol*(this: Interface_GlobalNodeOfReaderLib): handle[Interface_Protocol] {.
    noSideEffect, importcpp: "Protocol",
    header: "Interface_GlobalNodeOfReaderLib.hxx".}
proc Next*(this: Interface_GlobalNodeOfReaderLib): handle[
    Interface_GlobalNodeOfReaderLib] {.noSideEffect, importcpp: "Next", header: "Interface_GlobalNodeOfReaderLib.hxx".}
type
  Interface_GlobalNodeOfReaderLibbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Interface_GlobalNodeOfReaderLib::get_type_name(@)",
                              header: "Interface_GlobalNodeOfReaderLib.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_GlobalNodeOfReaderLib::get_type_descriptor(@)",
    header: "Interface_GlobalNodeOfReaderLib.hxx".}
proc DynamicType*(this: Interface_GlobalNodeOfReaderLib): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Interface_GlobalNodeOfReaderLib.hxx".}