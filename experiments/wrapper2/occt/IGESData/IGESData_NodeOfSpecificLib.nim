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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of IGESData_GlobalNodeOfSpecificLib"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_SpecificModule"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_SpecificLib"
discard "forward decl of IGESData_NodeOfSpecificLib"
discard "forward decl of IGESData_NodeOfSpecificLib"
type
  Handle_IGESData_NodeOfSpecificLib* = handle[IGESData_NodeOfSpecificLib]
  IGESData_NodeOfSpecificLib* {.importcpp: "IGESData_NodeOfSpecificLib",
                               header: "IGESData_NodeOfSpecificLib.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## an
                                                                                                          ## empty
                                                                                                          ## Node,
                                                                                                          ## with
                                                                                                          ## no
                                                                                                          ## Next


proc constructIGESData_NodeOfSpecificLib*(): IGESData_NodeOfSpecificLib {.
    constructor, importcpp: "IGESData_NodeOfSpecificLib(@)",
    header: "IGESData_NodeOfSpecificLib.hxx".}
proc AddNode*(this: var IGESData_NodeOfSpecificLib;
             anode: handle[IGESData_GlobalNodeOfSpecificLib]) {.
    importcpp: "AddNode", header: "IGESData_NodeOfSpecificLib.hxx".}
proc Module*(this: IGESData_NodeOfSpecificLib): handle[IGESData_SpecificModule] {.
    noSideEffect, importcpp: "Module", header: "IGESData_NodeOfSpecificLib.hxx".}
proc Protocol*(this: IGESData_NodeOfSpecificLib): handle[IGESData_Protocol] {.
    noSideEffect, importcpp: "Protocol", header: "IGESData_NodeOfSpecificLib.hxx".}
proc Next*(this: IGESData_NodeOfSpecificLib): handle[IGESData_NodeOfSpecificLib] {.
    noSideEffect, importcpp: "Next", header: "IGESData_NodeOfSpecificLib.hxx".}
type
  IGESData_NodeOfSpecificLibbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IGESData_NodeOfSpecificLib::get_type_name(@)",
                              header: "IGESData_NodeOfSpecificLib.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_NodeOfSpecificLib::get_type_descriptor(@)",
    header: "IGESData_NodeOfSpecificLib.hxx".}
proc DynamicType*(this: IGESData_NodeOfSpecificLib): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESData_NodeOfSpecificLib.hxx".}