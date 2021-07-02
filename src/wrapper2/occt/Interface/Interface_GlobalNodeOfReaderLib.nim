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

discard "forward decl of Interface_ReaderModule"
discard "forward decl of Interface_Protocol"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_ReaderLib"
discard "forward decl of Interface_NodeOfReaderLib"
discard "forward decl of Interface_GlobalNodeOfReaderLib"
discard "forward decl of Interface_GlobalNodeOfReaderLib"
type
  HandleInterfaceGlobalNodeOfReaderLib* = Handle[InterfaceGlobalNodeOfReaderLib]
  InterfaceGlobalNodeOfReaderLib* {.importcpp: "Interface_GlobalNodeOfReaderLib", header: "Interface_GlobalNodeOfReaderLib.hxx",
                                   bycopy.} = object of StandardTransient ## ! Creates an empty GlobalNode, with no Next


proc constructInterfaceGlobalNodeOfReaderLib*(): InterfaceGlobalNodeOfReaderLib {.
    constructor, importcpp: "Interface_GlobalNodeOfReaderLib(@)",
    header: "Interface_GlobalNodeOfReaderLib.hxx".}
proc add*(this: var InterfaceGlobalNodeOfReaderLib;
         amodule: Handle[InterfaceReaderModule];
         aprotocol: Handle[InterfaceProtocol]) {.importcpp: "Add",
    header: "Interface_GlobalNodeOfReaderLib.hxx".}
proc module*(this: InterfaceGlobalNodeOfReaderLib): Handle[InterfaceReaderModule] {.
    noSideEffect, importcpp: "Module",
    header: "Interface_GlobalNodeOfReaderLib.hxx".}
proc protocol*(this: InterfaceGlobalNodeOfReaderLib): Handle[InterfaceProtocol] {.
    noSideEffect, importcpp: "Protocol",
    header: "Interface_GlobalNodeOfReaderLib.hxx".}
proc next*(this: InterfaceGlobalNodeOfReaderLib): Handle[
    InterfaceGlobalNodeOfReaderLib] {.noSideEffect, importcpp: "Next", header: "Interface_GlobalNodeOfReaderLib.hxx".}
type
  InterfaceGlobalNodeOfReaderLibbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Interface_GlobalNodeOfReaderLib::get_type_name(@)",
                            header: "Interface_GlobalNodeOfReaderLib.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Interface_GlobalNodeOfReaderLib::get_type_descriptor(@)",
    header: "Interface_GlobalNodeOfReaderLib.hxx".}
proc dynamicType*(this: InterfaceGlobalNodeOfReaderLib): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Interface_GlobalNodeOfReaderLib.hxx".}

