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

discard "forward decl of IGESData_GlobalNodeOfSpecificLib"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_SpecificModule"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_SpecificLib"
discard "forward decl of IGESData_NodeOfSpecificLib"
discard "forward decl of IGESData_NodeOfSpecificLib"
type
  HandleIGESDataNodeOfSpecificLib* = Handle[IGESDataNodeOfSpecificLib]
  IGESDataNodeOfSpecificLib* {.importcpp: "IGESData_NodeOfSpecificLib",
                              header: "IGESData_NodeOfSpecificLib.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## an
                                                                                                        ## empty
                                                                                                        ## Node,
                                                                                                        ## with
                                                                                                        ## no
                                                                                                        ## Next


proc constructIGESDataNodeOfSpecificLib*(): IGESDataNodeOfSpecificLib {.
    constructor, importcpp: "IGESData_NodeOfSpecificLib(@)",
    header: "IGESData_NodeOfSpecificLib.hxx".}
proc addNode*(this: var IGESDataNodeOfSpecificLib;
             anode: Handle[IGESDataGlobalNodeOfSpecificLib]) {.
    importcpp: "AddNode", header: "IGESData_NodeOfSpecificLib.hxx".}
proc module*(this: IGESDataNodeOfSpecificLib): Handle[IGESDataSpecificModule] {.
    noSideEffect, importcpp: "Module", header: "IGESData_NodeOfSpecificLib.hxx".}
proc protocol*(this: IGESDataNodeOfSpecificLib): Handle[IGESDataProtocol] {.
    noSideEffect, importcpp: "Protocol", header: "IGESData_NodeOfSpecificLib.hxx".}
proc next*(this: IGESDataNodeOfSpecificLib): Handle[IGESDataNodeOfSpecificLib] {.
    noSideEffect, importcpp: "Next", header: "IGESData_NodeOfSpecificLib.hxx".}
type
  IGESDataNodeOfSpecificLibbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IGESData_NodeOfSpecificLib::get_type_name(@)",
                            header: "IGESData_NodeOfSpecificLib.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_NodeOfSpecificLib::get_type_descriptor(@)",
    header: "IGESData_NodeOfSpecificLib.hxx".}
proc dynamicType*(this: IGESDataNodeOfSpecificLib): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESData_NodeOfSpecificLib.hxx".}
