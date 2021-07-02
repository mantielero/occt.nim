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

discard "forward decl of IGESData_ReadWriteModule"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_WriterLib"
discard "forward decl of IGESData_NodeOfWriterLib"
discard "forward decl of IGESData_GlobalNodeOfWriterLib"
discard "forward decl of IGESData_GlobalNodeOfWriterLib"
type
  HandleIGESDataGlobalNodeOfWriterLib* = Handle[IGESDataGlobalNodeOfWriterLib]
  IGESDataGlobalNodeOfWriterLib* {.importcpp: "IGESData_GlobalNodeOfWriterLib",
                                  header: "IGESData_GlobalNodeOfWriterLib.hxx",
                                  bycopy.} = object of StandardTransient ## ! Creates an empty GlobalNode, with no Next


proc constructIGESDataGlobalNodeOfWriterLib*(): IGESDataGlobalNodeOfWriterLib {.
    constructor, importcpp: "IGESData_GlobalNodeOfWriterLib(@)",
    header: "IGESData_GlobalNodeOfWriterLib.hxx".}
proc add*(this: var IGESDataGlobalNodeOfWriterLib;
         amodule: Handle[IGESDataReadWriteModule];
         aprotocol: Handle[IGESDataProtocol]) {.importcpp: "Add",
    header: "IGESData_GlobalNodeOfWriterLib.hxx".}
proc module*(this: IGESDataGlobalNodeOfWriterLib): Handle[IGESDataReadWriteModule] {.
    noSideEffect, importcpp: "Module", header: "IGESData_GlobalNodeOfWriterLib.hxx".}
proc protocol*(this: IGESDataGlobalNodeOfWriterLib): Handle[IGESDataProtocol] {.
    noSideEffect, importcpp: "Protocol",
    header: "IGESData_GlobalNodeOfWriterLib.hxx".}
proc next*(this: IGESDataGlobalNodeOfWriterLib): Handle[
    IGESDataGlobalNodeOfWriterLib] {.noSideEffect, importcpp: "Next", header: "IGESData_GlobalNodeOfWriterLib.hxx".}
type
  IGESDataGlobalNodeOfWriterLibbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IGESData_GlobalNodeOfWriterLib::get_type_name(@)",
                            header: "IGESData_GlobalNodeOfWriterLib.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_GlobalNodeOfWriterLib::get_type_descriptor(@)",
    header: "IGESData_GlobalNodeOfWriterLib.hxx".}
proc dynamicType*(this: IGESDataGlobalNodeOfWriterLib): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESData_GlobalNodeOfWriterLib.hxx".}

