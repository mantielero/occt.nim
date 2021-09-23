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

discard "forward decl of Interface_GlobalNodeOfGeneralLib"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_GeneralModule"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_GeneralLib"
discard "forward decl of Interface_NodeOfGeneralLib"
discard "forward decl of Interface_NodeOfGeneralLib"
type
  Handle_Interface_NodeOfGeneralLib* = handle[Interface_NodeOfGeneralLib]
  Interface_NodeOfGeneralLib* {.importcpp: "Interface_NodeOfGeneralLib",
                               header: "Interface_NodeOfGeneralLib.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## an
                                                                                                          ## empty
                                                                                                          ## Node,
                                                                                                          ## with
                                                                                                          ## no
                                                                                                          ## Next


proc constructInterface_NodeOfGeneralLib*(): Interface_NodeOfGeneralLib {.
    constructor, importcpp: "Interface_NodeOfGeneralLib(@)",
    header: "Interface_NodeOfGeneralLib.hxx".}
proc AddNode*(this: var Interface_NodeOfGeneralLib;
             anode: handle[Interface_GlobalNodeOfGeneralLib]) {.
    importcpp: "AddNode", header: "Interface_NodeOfGeneralLib.hxx".}
proc Module*(this: Interface_NodeOfGeneralLib): handle[Interface_GeneralModule] {.
    noSideEffect, importcpp: "Module", header: "Interface_NodeOfGeneralLib.hxx".}
proc Protocol*(this: Interface_NodeOfGeneralLib): handle[Interface_Protocol] {.
    noSideEffect, importcpp: "Protocol", header: "Interface_NodeOfGeneralLib.hxx".}
proc Next*(this: Interface_NodeOfGeneralLib): handle[Interface_NodeOfGeneralLib] {.
    noSideEffect, importcpp: "Next", header: "Interface_NodeOfGeneralLib.hxx".}
type
  Interface_NodeOfGeneralLibbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Interface_NodeOfGeneralLib::get_type_name(@)",
                              header: "Interface_NodeOfGeneralLib.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_NodeOfGeneralLib::get_type_descriptor(@)",
    header: "Interface_NodeOfGeneralLib.hxx".}
proc DynamicType*(this: Interface_NodeOfGeneralLib): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Interface_NodeOfGeneralLib.hxx".}