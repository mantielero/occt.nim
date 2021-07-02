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

discard "forward decl of IGESData_SpecificModule"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_SpecificLib"
discard "forward decl of IGESData_NodeOfSpecificLib"
discard "forward decl of IGESData_GlobalNodeOfSpecificLib"
discard "forward decl of IGESData_GlobalNodeOfSpecificLib"
type
  HandleIGESDataGlobalNodeOfSpecificLib* = Handle[IGESDataGlobalNodeOfSpecificLib]
  IGESDataGlobalNodeOfSpecificLib* {.importcpp: "IGESData_GlobalNodeOfSpecificLib", header: "IGESData_GlobalNodeOfSpecificLib.hxx",
                                    bycopy.} = object of StandardTransient ## ! Creates an empty
                                                                      ## GlobalNode, with no Next


proc constructIGESDataGlobalNodeOfSpecificLib*(): IGESDataGlobalNodeOfSpecificLib {.
    constructor, importcpp: "IGESData_GlobalNodeOfSpecificLib(@)",
    header: "IGESData_GlobalNodeOfSpecificLib.hxx".}
proc add*(this: var IGESDataGlobalNodeOfSpecificLib;
         amodule: Handle[IGESDataSpecificModule];
         aprotocol: Handle[IGESDataProtocol]) {.importcpp: "Add",
    header: "IGESData_GlobalNodeOfSpecificLib.hxx".}
proc module*(this: IGESDataGlobalNodeOfSpecificLib): Handle[IGESDataSpecificModule] {.
    noSideEffect, importcpp: "Module",
    header: "IGESData_GlobalNodeOfSpecificLib.hxx".}
proc protocol*(this: IGESDataGlobalNodeOfSpecificLib): Handle[IGESDataProtocol] {.
    noSideEffect, importcpp: "Protocol",
    header: "IGESData_GlobalNodeOfSpecificLib.hxx".}
proc next*(this: IGESDataGlobalNodeOfSpecificLib): Handle[
    IGESDataGlobalNodeOfSpecificLib] {.noSideEffect, importcpp: "Next", header: "IGESData_GlobalNodeOfSpecificLib.hxx".}
type
  IGESDataGlobalNodeOfSpecificLibbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IGESData_GlobalNodeOfSpecificLib::get_type_name(@)",
                            header: "IGESData_GlobalNodeOfSpecificLib.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_GlobalNodeOfSpecificLib::get_type_descriptor(@)",
    header: "IGESData_GlobalNodeOfSpecificLib.hxx".}
proc dynamicType*(this: IGESDataGlobalNodeOfSpecificLib): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESData_GlobalNodeOfSpecificLib.hxx".}

